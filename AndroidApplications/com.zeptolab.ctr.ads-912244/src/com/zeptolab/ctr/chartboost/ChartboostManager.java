package com.zeptolab.ctr.chartboost;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.brightcove.player.media.ErrorFields;
import com.brightcove.player.model.Video.Fields;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Chartboost.CBAPIResponseCallback;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import com.chartboost.sdk.special.ChartboostData;
import com.inmobi.androidsdk.impl.AdException;
import com.zeptolab.ctr.CtrView;
import com.zeptolab.ctr.L;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ChartboostManager {
    private static final String HTTP = "http://";
    private static final String HTTPS = "https://";
    private static final String TAG = "ChartboostManager";
    private static Activity activity;
    private static volatile ChartboostManager instance;
    private static final Object loadLock;
    private static final Object lock;
    private final Chartboost chartboost;
    private final CtrView view;

    final class AnonymousClass_1 implements Runnable {
        final /* synthetic */ int val$asyncId;
        final /* synthetic */ JSONObject val$response;

        AnonymousClass_1(JSONObject jSONObject, int i) {
            this.val$response = jSONObject;
            this.val$asyncId = i;
        }

        public void run() {
            synchronized (loadLock) {
                ChartboostManager.onSuccessSync(this.val$response, this.val$asyncId);
            }
        }
    }

    final class AnonymousClass_2 implements CBAPIResponseCallback {
        final /* synthetic */ String val$name;

        AnonymousClass_2(String str) {
            this.val$name = str;
        }

        public void onFailure(CBImpressionError cBImpressionError) {
            L.w(TAG, "Received chartboost impression failure (" + this.val$name + "): " + cBImpressionError.name());
        }

        public void onSuccess(JSONObject jSONObject) {
            L.d(TAG, "Received chartboost impression result (" + this.val$name + "): " + jSONObject.toString());
        }
    }

    final class AnonymousClass_3 implements Runnable {
        final /* synthetic */ int val$asyncId;
        final /* synthetic */ int val$count;

        AnonymousClass_3(int i, int i2) {
            this.val$count = i;
            this.val$asyncId = i2;
        }

        public void run() {
            L.d(TAG, "getInterstitials(count = " + this.val$count + ", asyncId = " + this.val$asyncId + ")");
            ChartboostData.getBatch("Default", this.val$count, new CBAPIResponseCallback() {
                public void onFailure(CBImpressionError cBImpressionError) {
                    L.w(TAG, "ChartboostData get batch error: " + cBImpressionError.name());
                }

                public void onSuccess(JSONObject jSONObject) {
                    L.d(TAG, "getInterstitials(count = " + AnonymousClass_3.this.val$count + ", asyncId = " + AnonymousClass_3.this.val$asyncId + ")");
                    ChartboostManager.onSuccess(jSONObject, AnonymousClass_3.this.val$asyncId);
                }
            });
        }
    }

    static {
        instance = null;
        lock = new Object();
        activity = null;
        loadLock = new Object();
    }

    private ChartboostManager(CtrView ctrView, Activity activity) {
        this.chartboost = Chartboost.sharedChartboost();
        this.chartboost.onCreate(activity, ZBuildConfig.chartboost_app_id, ZBuildConfig.chartboost_app_sgn, null);
        activity = activity;
        this.view = ctrView;
    }

    public static boolean getInterstitials(int i, int i2) {
        if (instance == null) {
            return false;
        }
        activity.runOnUiThread(new AnonymousClass_3(i, i2));
        return true;
    }

    public static ChartboostManager initialize(CtrView ctrView, Activity activity) {
        if (instance == null) {
            synchronized (lock) {
                if (instance == null) {
                    instance = new ChartboostManager(ctrView, activity);
                }
            }
        }
        return instance;
    }

    public static native void onLoad(String str, String str2, String str3, Object[] objArr, Object[] objArr2, int i);

    public static native void onLoadDone(int i);

    private static void onSuccess(JSONObject jSONObject, int i) {
        if (instance != null && instance.view != null) {
            instance.view.queueEvent(new AnonymousClass_1(jSONObject, i));
        } else if (instance == null) {
            L.w(TAG, "instance is null");
        } else if (instance.view == null) {
            L.w(TAG, "instance.view is null");
        }
    }

    private static void onSuccessSync(JSONObject jSONObject, int i) {
        try {
            int optInt = jSONObject.optInt("status", AdException.INTERNAL_ERROR);
            if (optInt != 200) {
                L.w(TAG, jSONObject.optString(ErrorFields.MESSAGE, "Unknown status: " + optInt));
                try {
                    L.d(TAG, "Load Done");
                    onLoadDone(i);
                } catch (Exception e) {
                    L.e(TAG, "Chartboost Exception", e);
                }
            } else {
                JSONArray jSONArray = jSONObject.getJSONArray("interstitials");
                L.d(TAG, "Found " + jSONArray.length() + " interstitials");
                int i2 = 0;
                while (i2 < jSONArray.length()) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    String string = jSONObject2.getString("ad_id");
                    String string2 = jSONObject2.getString(Fields.NAME);
                    String string3 = jSONObject2.getString("link");
                    List arrayList = new ArrayList();
                    List arrayList2 = new ArrayList();
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("icons");
                    JSONArray names = jSONObject3.names();
                    if (names != null) {
                        int i3 = 0;
                        while (i3 < names.length()) {
                            String string4 = names.getString(i3);
                            arrayList2.add(jSONObject3.getString(string4));
                            arrayList.add(string4);
                            i3++;
                        }
                    }
                    onLoad(string, string2, string3, arrayList.toArray(), arrayList2.toArray(), i);
                    i2++;
                }
                try {
                    L.d(TAG, "Load Done");
                    onLoadDone(i);
                } catch (Exception e2) {
                    L.e(TAG, "Chartboost Exception", e2);
                }
            }
        } catch (JSONException e3) {
            L.e(TAG, "Chartboost JsonException", e3);
            try {
                L.d(TAG, "Load Done");
                onLoadDone(i);
            } catch (Exception e4) {
                L.e(TAG, "Chartboost Exception", e4);
            }
        } catch (Exception e5) {
            L.e(TAG, "Chartboost Exception", e5);
            try {
                L.d(TAG, "Load Done");
                onLoadDone(i);
            } catch (Exception e6) {
                L.e(TAG, "Chartboost Exception", e6);
            }
        }
    }

    public static void openURL(String str, String str2) {
        if (instance != null) {
            L.d(TAG, "Trying to open URL: " + str + " for application: " + str2);
            if (activity != null) {
                if (!(str.startsWith(HTTP) || str.startsWith(HTTPS))) {
                    str = HTTP + str;
                }
                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } else {
                L.e(TAG, "Activity is null");
            }
        }
    }

    public static void sendAdShown(String str, String str2) {
        if (instance != null) {
            L.d(TAG, "Sending chartboost impression: " + str + ", " + str2);
            ChartboostData.show(str, new AnonymousClass_2(str2));
        }
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    public boolean onBackPressed() {
        return this.chartboost.onBackPressed();
    }

    public void onDestroy(Activity activity) {
        this.chartboost.onDestroy(activity);
    }

    public void onLowMemory(Activity activity) {
    }

    public void onStart(Activity activity) {
        this.chartboost.onStart(activity);
        this.chartboost.startSession();
    }

    public void onStop(Activity activity) {
        this.chartboost.onStop(activity);
    }
}