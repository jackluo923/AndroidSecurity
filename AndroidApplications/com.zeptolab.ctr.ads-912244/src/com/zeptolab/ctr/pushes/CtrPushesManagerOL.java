package com.zeptolab.ctr.pushes;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.opengl.GLSurfaceView;
import android.os.AsyncTask;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.Log;
import com.brightcove.player.event.EventType;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.otherlevels.android.library.OLAndroidAsyncResponseHandler;
import com.otherlevels.android.library.OlAndroidLibrary;
import com.zeptolab.ctr.threading.ThreadPoolManager;
import com.zeptolab.utils.SystemInfo;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;

public class CtrPushesManagerOL {
    private static final String PREFS_GCM_APP_VERSION = "GCM_app_version";
    private static final String PREFS_GCM_REGID = "GCM_regid";
    private static final String gcmProjectId;
    private static final Object lock;
    private static final String olAppId;
    private static final String olAuthKey;
    private static final String olPushChannel;
    private static final Queue queue;
    private static boolean tagsSended;

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Context val$context;
        final /* synthetic */ SharedPreferences val$prefs;
        final /* synthetic */ String val$regid;

        AnonymousClass_1(String str, SharedPreferences sharedPreferences, Context context) {
            this.val$regid = str;
            this.val$prefs = sharedPreferences;
            this.val$context = context;
        }

        public void run() {
            CtrPushesManagerOL.sendRegistrationIdToBackend(this.val$regid, this.val$prefs, this.val$context);
            CtrPushesManagerOL.storeRegistrationId(this.val$context, this.val$regid, this.val$prefs);
        }
    }

    final class AnonymousClass_2 extends AsyncTask {
        final /* synthetic */ Context val$context;
        final /* synthetic */ GoogleCloudMessaging val$gcm;
        final /* synthetic */ SharedPreferences val$prefs;
        final /* synthetic */ GLSurfaceView val$view;

        AnonymousClass_2(GoogleCloudMessaging googleCloudMessaging, GLSurfaceView gLSurfaceView, Context context, SharedPreferences sharedPreferences) {
            this.val$gcm = googleCloudMessaging;
            this.val$view = gLSurfaceView;
            this.val$context = context;
            this.val$prefs = sharedPreferences;
        }

        protected String doInBackground(Void... voidArr) {
            return CtrPushesManagerOL.registerSync(this.val$gcm, this.val$view, this.val$context, this.val$prefs);
        }

        protected void onPostExecute(String str) {
            Log.i("CTR", str);
        }
    }

    final class AnonymousClass_3 implements Runnable {
        final /* synthetic */ SharedPreferences val$prefs;

        AnonymousClass_3(SharedPreferences sharedPreferences) {
            this.val$prefs = sharedPreferences;
        }

        public void run() {
            String tags = CtrPushesManagerOL.getTags(this.val$prefs);
            if (tags != null && tags.length() != 0) {
                String[] split = tags.split(",");
                int length = split.length;
                int i = 0;
                while (i < length) {
                    String str = split[i];
                    if (!(str == null || str.length() == 0)) {
                        String[] split2 = str.split(":");
                        if (split2 != null && split2.length == 3) {
                            queue.add(new OLTag(split2[0], split2[1], split2[2]));
                        }
                    }
                    i++;
                }
                ThreadPoolManager.getInstance().submit(new TagUpdater());
            }
        }
    }

    static class OLTag {
        private final String m_name;
        private final String m_type;
        private final String m_value;

        public OLTag(String str, String str2, String str3) {
            this.m_name = str;
            this.m_value = str2;
            this.m_type = str3;
        }

        public final String name() {
            return this.m_name;
        }

        public final String type() {
            return this.m_type;
        }

        public final String value() {
            return this.m_value;
        }
    }

    public static class ResponseHandler extends OLAndroidAsyncResponseHandler {
        private final GLSurfaceView view;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ String val$tagValue;

            AnonymousClass_1(String str) {
                this.val$tagValue = str;
            }

            public void run() {
                if (CtrPushesManagerOL.handleGiftData(this.val$tagValue)) {
                    OlAndroidLibrary.getInstance().setTagValue(olAppId, SystemInfo.getAndroidId(), "gift", "0", "string");
                }
            }
        }

        public ResponseHandler(GLSurfaceView gLSurfaceView) {
            this.view = gLSurfaceView;
        }

        public void onSuccess(String str) {
            if (str == null) {
                Log.d("OtherLevels", "OtherLevels tagValue is null");
            } else {
                Log.d("OtherLevels", "OtherLevels tagValue is \"" + str + "\"");
            }
            this.view.queueEvent(new AnonymousClass_1(str));
        }
    }

    static class ScheduledTagUpdater implements Runnable {
        private int m_counter;
        private ScheduledFuture m_future;

        ScheduledTagUpdater() {
            this.m_future = null;
            this.m_counter = 0;
        }

        public void run() {
            if (this.m_future != null && tagsSended) {
                OlAndroidLibrary instance = OlAndroidLibrary.getInstance();
                String androidId = SystemInfo.getAndroidId();
                while (queue.size() > 0) {
                    OLTag oLTag = (OLTag) queue.poll();
                    if (oLTag != null) {
                        instance.setTagValue(olAppId, androidId, oLTag.name(), oLTag.value(), oLTag.type());
                    }
                }
                if (this.m_counter > 10) {
                    this.m_future.cancel(true);
                } else {
                    this.m_counter++;
                }
            }
        }

        public void setFuture(ScheduledFuture scheduledFuture) {
            this.m_future = scheduledFuture;
        }
    }

    static class TagUpdater implements Runnable {
        TagUpdater() {
        }

        public void run() {
            OlAndroidLibrary instance = OlAndroidLibrary.getInstance();
            String androidId = SystemInfo.getAndroidId();
            while (queue.size() > 0) {
                OLTag oLTag = (OLTag) queue.poll();
                if (oLTag != null) {
                    instance.setTagValue(olAppId, androidId, oLTag.name(), oLTag.value(), oLTag.type());
                }
            }
            tagsSended = true;
        }
    }

    static {
        lock = new Object();
        queue = new ConcurrentLinkedQueue();
        tagsSended = false;
        boolean contains = ZBuildConfig.target.contains(EventType.DEBUG);
        olAuthKey = ZBuildConfig.otherlevels_auth_key;
        olAppId = contains ? ZBuildConfig.otherlevels_app_id_dev : ZBuildConfig.otherlevels_app_id;
        olPushChannel = contains ? ZBuildConfig.otherlevels_push_channel_id_dev : ZBuildConfig.otherlevels_push_channel_id;
        gcmProjectId = contains ? ZBuildConfig.otherlevels_gcm_id_dev : ZBuildConfig.otherlevels_gcm_id;
    }

    private static boolean checkPlayServices(Activity activity) {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(activity);
        if (isGooglePlayServicesAvailable == 0) {
            return true;
        }
        if (GooglePlayServicesUtil.isUserRecoverableError(isGooglePlayServicesAvailable)) {
            Log.i("CTR", "GooglePlayServices are disabled.");
        } else {
            Log.i("CTR", "This device is not supported.");
        }
        return false;
    }

    private static int getAppVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            throw new RuntimeException("Could not get package name: " + e);
        }
    }

    private static String getRegistrationId(Context context, SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString(PREFS_GCM_REGID, AdTrackerConstants.BLANK);
        if (string == null || string.length() == 0) {
            Log.i("CTR", "Registration not found.");
            return AdTrackerConstants.BLANK;
        } else if (sharedPreferences.getInt(PREFS_GCM_APP_VERSION, ExploreByTouchHelper.INVALID_ID) == getAppVersion(context)) {
            return string;
        } else {
            Log.i("CTR", "App version changed.");
            return AdTrackerConstants.BLANK;
        }
    }

    public static native String getTags(SharedPreferences sharedPreferences);

    public static native boolean handleGiftData(String str);

    public static void initialize(Context context, Activity activity, SharedPreferences sharedPreferences, GLSurfaceView gLSurfaceView) {
        if (checkPlayServices(activity)) {
            Log.i("CTR", "Google Play Services APK found.");
            GoogleCloudMessaging instance = GoogleCloudMessaging.getInstance(activity);
            String registrationId = getRegistrationId(context, sharedPreferences);
            if (registrationId == null || registrationId.length() == 0) {
                Log.i("CTR", "GCM registration is not found");
                registerInBackground(instance, gLSurfaceView, context, sharedPreferences);
            } else {
                Log.i("CTR", "GCM registration OK");
                updateTags(gLSurfaceView, sharedPreferences);
            }
        } else {
            Log.i("CTR", "No valid Google Play Services APK found.");
        }
    }

    public static void onPause(Activity activity) {
        OlAndroidLibrary.getInstance().registerPause(olAppId, activity);
    }

    public static void onResume(Activity activity) {
        OlAndroidLibrary.getInstance().registerResume(olAppId, activity);
    }

    public static void refreshGifts(GLSurfaceView gLSurfaceView, String str) {
        OlAndroidLibrary instance = OlAndroidLibrary.getInstance();
        OLAndroidAsyncResponseHandler responseHandler = new ResponseHandler(gLSurfaceView);
        instance.getTagValue(olAppId, SystemInfo.getAndroidId(), str, responseHandler);
    }

    private static void registerInBackground(GoogleCloudMessaging googleCloudMessaging, GLSurfaceView gLSurfaceView, Context context, SharedPreferences sharedPreferences) {
        new AnonymousClass_2(googleCloudMessaging, gLSurfaceView, context, sharedPreferences).execute(new Void[]{null, null, null});
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String registerSync(com.google.android.gms.gcm.GoogleCloudMessaging r3, android.opengl.GLSurfaceView r4, android.content.Context r5, android.content.SharedPreferences r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.zeptolab.ctr.pushes.CtrPushesManagerOL.registerSync(com.google.android.gms.gcm.GoogleCloudMessaging, android.opengl.GLSurfaceView, android.content.Context, android.content.SharedPreferences):java.lang.String");
        /*
        r0 = "";
        if (r3 != 0) goto L_0x0008;
    L_0x0004:
        r3 = com.google.android.gms.gcm.GoogleCloudMessaging.getInstance(r5);	 Catch:{ IOException -> 0x0030 }
    L_0x0008:
        r0 = 1;
        r0 = new java.lang.String[r0];	 Catch:{ IOException -> 0x0030 }
        r1 = 0;
        r2 = gcmProjectId;	 Catch:{ IOException -> 0x0030 }
        r0[r1] = r2;	 Catch:{ IOException -> 0x0030 }
        r1 = r3.register(r0);	 Catch:{ IOException -> 0x0030 }
        r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0030 }
        r0.<init>();	 Catch:{ IOException -> 0x0030 }
        r2 = "Device registered, registration ID=";
        r0 = r0.append(r2);	 Catch:{ IOException -> 0x0030 }
        r0 = r0.append(r1);	 Catch:{ IOException -> 0x0030 }
        r0 = r0.toString();	 Catch:{ IOException -> 0x0030 }
        r2 = new com.zeptolab.ctr.pushes.CtrPushesManagerOL$1;	 Catch:{ IOException -> 0x0030 }
        r2.<init>(r1, r6, r5);	 Catch:{ IOException -> 0x0030 }
        r4.queueEvent(r2);	 Catch:{ IOException -> 0x0030 }
    L_0x002f:
        return r0;
    L_0x0030:
        r0 = move-exception;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "Error :";
        r1 = r1.append(r2);
        r0 = r0.getMessage();
        r0 = r1.append(r0);
        r0 = r0.toString();
        goto L_0x002f;
        */
    }

    private static void sendRegistrationIdToBackend(String str, SharedPreferences sharedPreferences, Context context) {
        int i = 0;
        Log.i("CTR", "Sending GCM regid to OL");
        String androidId = SystemInfo.getAndroidId();
        try {
            OlAndroidLibrary instance = OlAndroidLibrary.getInstance();
            instance.registerUserAndDeviceToken(androidId, olAuthKey, olPushChannel, str);
            instance.linkTrackingId(olAppId, androidId, context);
            androidId = getTags(sharedPreferences);
            if (androidId != null && androidId.length() != 0) {
                String[] split = androidId.split(",");
                int length = split.length;
                while (i < length) {
                    String str2 = split[i];
                    if (!(str2 == null || str2.length() == 0)) {
                        String[] split2 = str2.split(":");
                        if (split2 != null && split2.length == 3) {
                            queue.add(new OLTag(split2[0], split2[1], split2[2]));
                        }
                    }
                    i++;
                }
                ThreadPoolManager.getInstance().submit(new TagUpdater());
            }
        } catch (Exception e) {
            Throwable th = e;
            Log.e("CTR", th.getMessage(), th);
        }
    }

    public static synchronized void setTagValue(String str, String str2, String str3) {
        synchronized (CtrPushesManagerOL.class) {
            if (tagsSended) {
                queue.add(new OLTag(str, str2, str3));
                ThreadPoolManager.getInstance().submit(new TagUpdater());
            } else {
                queue.add(new OLTag(str, str2, str3));
                Object scheduledTagUpdater = new ScheduledTagUpdater();
                scheduledTagUpdater.setFuture(ThreadPoolManager.getInstance().scheduleAtFixedRate(scheduledTagUpdater, 1, 1));
            }
        }
    }

    private static void storeRegistrationId(Context context, String str, SharedPreferences sharedPreferences) {
        int appVersion = getAppVersion(context);
        Log.i("CTR", "Saving regId on app version " + appVersion);
        Editor edit = sharedPreferences.edit();
        edit.putString(PREFS_GCM_REGID, str);
        edit.putInt(PREFS_GCM_APP_VERSION, appVersion);
        edit.commit();
    }

    private static void updateTags(GLSurfaceView gLSurfaceView, SharedPreferences sharedPreferences) {
        gLSurfaceView.queueEvent(new AnonymousClass_3(sharedPreferences));
    }
}