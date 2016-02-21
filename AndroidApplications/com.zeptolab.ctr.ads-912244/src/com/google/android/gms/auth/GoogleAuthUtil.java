package com.google.android.gms.auth;

import android.accounts.AccountManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.R;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.a;
import com.google.android.gms.internal.do_;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.s;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.net.URISyntaxException;

public final class GoogleAuthUtil {
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    public static final String KEY_REQUEST_ACTIONS = "request_visible_actions";
    @Deprecated
    public static final String KEY_REQUEST_VISIBLE_ACTIVITIES = "request_visible_actions";
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    private static final ComponentName vo;
    private static final ComponentName vp;
    private static final Intent vq;
    private static final Intent vr;

    static {
        KEY_CALLER_UID = VERSION.SDK_INT >= 11 ? "callerUid" : "callerUid";
        KEY_ANDROID_PACKAGE_NAME = VERSION.SDK_INT >= 14 ? "androidPackageName" : "androidPackageName";
        vo = new ComponentName(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, "com.google.android.gms.auth.GetToken");
        vp = new ComponentName(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, "com.google.android.gms.recovery.RecoveryService");
        vq = new Intent().setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE).setComponent(vo);
        vr = new Intent().setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE).setComponent(vp);
    }

    private GoogleAuthUtil() {
    }

    private static boolean K(String str) {
        return "NetworkError".equals(str) || "ServiceUnavailable".equals(str) || "Timeout".equals(str);
    }

    private static boolean L(String str) {
        return "BadAuthentication".equals(str) || "CaptchaRequired".equals(str) || "DeviceManagementRequiredOrSyncDisabled".equals(str) || "NeedPermission".equals(str) || "NeedsBrowser".equals(str) || "UserCancel".equals(str) || "AppDownloadRequired".equals(str);
    }

    private static String a(Context context, String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            return getToken(context, str, str2, bundle);
        } catch (GooglePlayServicesAvailabilityException e) {
            int i;
            GooglePlayServicesAvailabilityException googlePlayServicesAvailabilityException = e;
            PendingIntent errorPendingIntent = GooglePlayServicesUtil.getErrorPendingIntent(googlePlayServicesAvailabilityException.getConnectionStatusCode(), context, 0);
            Resources resources = context.getResources();
            Notification notification = new Notification(17301642, resources.getString(R.string.auth_client_play_services_err_notification_msg), System.currentTimeMillis());
            notification.flags |= 16;
            String str3 = context.getApplicationInfo().name;
            if (TextUtils.isEmpty(str3)) {
                ApplicationInfo applicationInfo;
                str3 = context.getPackageName();
                PackageManager packageManager = context.getApplicationContext().getPackageManager();
                try {
                    applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
                } catch (NameNotFoundException e2) {
                    applicationInfo = null;
                }
                if (applicationInfo != null) {
                    str3 = packageManager.getApplicationLabel(applicationInfo).toString();
                }
            }
            CharSequence string = resources.getString(R.string.auth_client_requested_by_msg, new Object[]{str3});
            switch (googlePlayServicesAvailabilityException.getConnectionStatusCode()) {
                case GoogleScorer.CLIENT_GAMES:
                    i = R.string.auth_client_needs_installation_title;
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    i = R.string.auth_client_needs_update_title;
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    i = R.string.auth_client_needs_enabling_title;
                    break;
                default:
                    i = R.string.auth_client_using_bad_version_title;
                    break;
            }
            notification.setLatestEventInfo(context, resources.getString(i), string, errorPendingIntent);
            ((NotificationManager) context.getSystemService("notification")).notify(39789, notification);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        } catch (UserRecoverableAuthException e3) {
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
        }
    }

    private static void b(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("Callack cannot be null.");
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    public static void clearToken(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        er.ad("Calling this from your main thread can lead to deadlock");
        s(applicationContext);
        Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        ServiceConnection aVar = new a();
        if (applicationContext.bindService(vq, aVar, 1)) {
            try {
                bundle = s.a.a(aVar.dm()).a(str, bundle);
                String string = bundle.getString(do_.wf);
                if (bundle.getBoolean("booleanResult")) {
                    applicationContext.unbindService(aVar);
                } else {
                    throw new GoogleAuthException(string);
                }
            } catch (RemoteException e) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", e);
                throw new IOException("remote exception");
            } catch (InterruptedException e2) {
                throw new GoogleAuthException("Interrupted");
            } catch (Throwable th) {
            }
        } else {
            throw new IOException("Could not bind to service with the given context.");
        }
    }

    public static String getToken(Context context, String str, String str2) {
        return getToken(context, str, str2, new Bundle());
    }

    public static String getToken(Context context, String str, String str2, Bundle bundle) {
        Bundle bundle2;
        Context applicationContext = context.getApplicationContext();
        er.ad("Calling this from your main thread can lead to deadlock");
        s(applicationContext);
        bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str3 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str3);
        if (!bundle2.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle2.putString(KEY_ANDROID_PACKAGE_NAME, str3);
        }
        ServiceConnection aVar = new a();
        if (applicationContext.bindService(vq, aVar, 1)) {
            try {
                bundle2 = s.a.a(aVar.dm()).a(str, str2, bundle2);
                Object string = bundle2.getString("authtoken");
                if (TextUtils.isEmpty(string)) {
                    String string2 = bundle2.getString("Error");
                    Intent intent = (Intent) bundle2.getParcelable("userRecoveryIntent");
                    if (L(string2)) {
                        throw new UserRecoverableAuthException(string2, intent);
                    } else if (K(string2)) {
                        throw new IOException(string2);
                    } else {
                        throw new GoogleAuthException(string2);
                    }
                } else {
                    applicationContext.unbindService(aVar);
                    return string;
                }
            } catch (RemoteException e) {
                Log.i("GoogleAuthUtil", "GMS remote exception ", e);
                throw new IOException("remote exception");
            } catch (InterruptedException e2) {
                throw new GoogleAuthException("Interrupted");
            } catch (Throwable th) {
            }
        } else {
            throw new IOException("Could not bind to service with the given context.");
        }
    }

    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBoolean("handle_notification", true);
        return a(context, str, str2, bundle);
    }

    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle, Intent intent) {
        b(intent);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putParcelable("callback_intent", intent);
        bundle.putBoolean("handle_notification", true);
        return a(context, str, str2, bundle);
    }

    public static String getTokenWithNotification(Context context, String str, String str2, Bundle bundle, String str3, Bundle bundle2) {
        if (TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Authority cannot be empty or null.");
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        ContentResolver.validateSyncExtrasBundle(bundle2);
        bundle.putString("authority", str3);
        bundle.putBundle("sync_extras", bundle2);
        bundle.putBoolean("handle_notification", true);
        return a(context, str, str2, bundle);
    }

    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken(GOOGLE_ACCOUNT_TYPE, str);
    }

    private static void s(Context context) {
        try {
            GooglePlayServicesUtil.s(context);
        } catch (GooglePlayServicesRepairableException e) {
            GooglePlayServicesRepairableException googlePlayServicesRepairableException = e;
            throw new GooglePlayServicesAvailabilityException(googlePlayServicesRepairableException.getConnectionStatusCode(), googlePlayServicesRepairableException.getMessage(), googlePlayServicesRepairableException.getIntent());
        } catch (GooglePlayServicesNotAvailableException e2) {
            throw new GoogleAuthException(e2.getMessage());
        }
    }
}