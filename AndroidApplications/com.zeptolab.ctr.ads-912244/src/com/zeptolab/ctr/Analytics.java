package com.zeptolab.ctr;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.event.EventType;
import com.flurry.android.FlurryAgent;
import com.gameanalytics.android.GameAnalytics;
import com.mixpanel.android.mpmetrics.j;
import com.zeptolab.utils.SystemInfo;
import com.zeptolab.utils.Tracking;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;

public class Analytics {
    private static final String TAG = "Analytics";
    protected Activity app;
    protected j mixpanel;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Map val$params;
        final /* synthetic */ String val$str;

        AnonymousClass_1(String str, Map map) {
            this.val$str = str;
            this.val$params = map;
        }

        public void run() {
            try {
                FlurryAgent.logEvent(this.val$str, this.val$params);
                if (ZBuildConfig.target.contains(CtrView.AnalyticsJNIKey)) {
                    Analytics.this.showAnalyticsPopup("flurry", this.val$str, this.val$params);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ Map val$params;
        final /* synthetic */ String val$str;

        AnonymousClass_2(String str, Map map) {
            this.val$str = str;
            this.val$params = map;
        }

        public void run() {
            try {
                Analytics.this.mixpanel.a(this.val$str, Analytics.this.convertToJSONObject(this.val$params));
                if (ZBuildConfig.target.contains(CtrView.AnalyticsJNIKey)) {
                    Analytics.this.showAnalyticsPopup("mixpanel", this.val$str, this.val$params);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public Analytics(Context context) {
        this.app = context;
        if (ZBuildConfig.target.contains(EventType.DEBUG)) {
            FlurryAgent.setLogEnabled(true);
            L.d(TAG, "Flurry agent version: " + FlurryAgent.getAgentVersion());
        } else {
            FlurryAgent.setLogEnabled(false);
        }
        FlurryAgent.setReportLocation(false);
        String androidId = SystemInfo.getAndroidId();
        SystemInfo.getPackageName();
        if (ZBuildConfig.target.contains(EventType.DEBUG)) {
            this.mixpanel = j.a(context, ZBuildConfig.id_mixpanel_debug);
            this.mixpanel.e();
        } else {
            this.mixpanel = j.a(context, ZBuildConfig.id_mixpanel);
        }
        this.mixpanel.a(androidId);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("app", SystemInfo.getAppName());
            jSONObject.put("version", SystemInfo.getAppVersion());
            jSONObject.put("profiles", SystemInfo.getAppProfiles());
            jSONObject.put(Event.INTENT_MARKET, SystemInfo.getAppMarket());
            this.mixpanel.a(jSONObject);
        } catch (JSONException e) {
        }
        GameAnalytics.setDebugLogLevel(0);
    }

    private void showAnalyticsPopup(String str, String str2, Map map) {
        OnClickListener anonymousClass_3 = new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        };
        StringBuilder stringBuilder = new StringBuilder(str2);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            stringBuilder.append(Constants.FORMATTER);
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append(": ");
            stringBuilder.append((String) entry.getValue());
        }
        new Builder(this.app).setTitle("Analytics: " + str).setMessage(stringBuilder.toString()).setNeutralButton("OK", anonymousClass_3).show();
    }

    protected JSONObject convertToJSONObject(Map map) {
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    public void incrementInfo(String str, int i) {
        L.i("INFO FAIRED INCREMENT: ", str + " += " + i);
    }

    public void logEventFlurry(String str, Map map) {
        L.i("FLURRY EVENT: ", str);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            L.i("\t PARAMS: " + ((String) entry.getKey()), (String) entry.getValue());
        }
        this.app.runOnUiThread(new AnonymousClass_1(str, map));
    }

    public void logEventMixpanel(String str, Map map) {
        L.i("MIXPANEL EVENT: ", str);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            L.i("\t PARAMS: " + ((String) entry.getKey()), (String) entry.getValue());
        }
        this.app.runOnUiThread(new AnonymousClass_2(str, map));
    }

    public void logEventZendesk(String str, Map map) {
        L.i("ZENDESK EVENT: ", str);
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            L.i("\t PARAMS: " + ((String) entry.getKey()), (String) entry.getValue());
            stringBuilder.append(String.format("%s: %s; ", new Object[]{entry.getKey(), entry.getValue()}));
        }
        String trim = stringBuilder.toString().trim();
        GameAnalytics.newQualityEvent(str, trim.substring(0, trim.length() - 1));
    }

    public void onDestroy() {
        this.mixpanel.a();
    }

    public void onEndSession() {
        FlurryAgent.onEndSession(this.app);
        GameAnalytics.manualBatch();
        GameAnalytics.stopSession();
    }

    public void onStartSession(String str) {
        FlurryAgent.onStartSession(this.app, str);
    }

    public void passCheckpointFlightPass(String str) {
    }

    public void setInfo(String str, String str2) {
        L.i("INFO FAIRED: ", str + " = " + str2);
    }

    public void startZendeskSession() {
        GameAnalytics.initialise(this.app, ZBuildConfig.id_zendesk_secret, ZBuildConfig.id_zendesk_game);
        GameAnalytics.startSession(this.app);
    }

    public void trackInstall() {
        Tracking.track();
    }
}