package com.inmobi.commons.analytics.iat.impl;

import android.content.Intent;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public class AdTrackerUtils {
    public static boolean checkDownloadGoalAdded() {
        if (InternalSDKUtil.getContext() != null) {
            return FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_INSERT_STATUS);
        }
        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Application Context NULL cannot checkStatusUpload");
        return false;
    }

    public static boolean checkDownloadGoalUploaded() {
        if (InternalSDKUtil.getContext() != null) {
            return FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_STATUS);
        }
        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Application Context NULL cannot checkStatusUpload");
        return false;
    }

    public static String getReferrerFromLogs() {
        String[] strArr = new String[]{"logcat", "-d", "ActivityManager:I"};
        String str = null;
        try {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Getting referrer from logs");
            Pattern compile = Pattern.compile(AdTrackerInitializer.getConfigParams().getLogcatPattern());
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(strArr).getInputStream()));
            String str2 = str;
            while (true) {
                try {
                    CharSequence readLine = bufferedReader.readLine();
                } catch (Exception e) {
                    th = e;
                }
                if (readLine != null) {
                    Matcher matcher = compile.matcher(readLine);
                    if (matcher.find()) {
                        str2 = matcher.group(1);
                    }
                } else {
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Received referrer from logs: " + str2);
                    return str2;
                }
            }
        } catch (Exception e2) {
            str2 = str;
            Throwable th2 = e2;
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Getting referrer from logs failed", th2);
            return str2;
        }
    }

    public static boolean isPermissionGranted(String str) {
        try {
            if (InternalSDKUtil.getContext().checkCallingOrSelfPermission(str) == 0) {
                return true;
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cant check permissions", e);
        }
        return false;
    }

    public static void reportMetric(AdTrackerEventType adTrackerEventType, Goal goal, int i, long j, int i2, String str) {
        try {
            if (!AdTrackerNetworkInterface.isMetricSample()) {
                return;
            }
            JSONObject jSONObject;
            if (AdTrackerEventType.GOAL_SUCCESS.equals(adTrackerEventType)) {
                jSONObject = new JSONObject();
                jSONObject.put("g", goal.getGoalName());
                jSONObject.put("n", goal.getRetryCount());
                jSONObject.put("t", j);
                jSONObject.put("r", i);
                AdTrackerInitializer.getLogger().logEvent(new EventLog(AdTrackerEventType.GOAL_SUCCESS, jSONObject));
            } else if (AdTrackerEventType.GOAL_FAILURE.equals(adTrackerEventType)) {
                jSONObject = new JSONObject();
                jSONObject.put("g", goal.getGoalName());
                jSONObject.put("n", goal.getRetryCount());
                jSONObject.put("e", i2);
                if (str != null) {
                    jSONObject.put("m", str);
                }
                AdTrackerInitializer.getLogger().logEvent(new EventLog(AdTrackerEventType.GOAL_FAILURE, jSONObject));
            } else {
                jSONObject = new JSONObject();
                jSONObject.put("g", goal.getGoalName());
                jSONObject.put("n", goal.getRetryCount());
                AdTrackerInitializer.getLogger().logEvent(new EventLog(AdTrackerEventType.GOAL_DUMPED, jSONObject));
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error reporting metric", e);
        }
    }

    public static boolean resetStatus() {
        if (InternalSDKUtil.getContext() == null) {
            return false;
        }
        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_STATUS, false);
        return true;
    }

    public static boolean sendBroadcastMessage(int i) {
        try {
            Intent intent = new Intent();
            intent.setAction(AdTrackerConstants.TESTMODE_INTENT);
            intent.putExtra(AdTrackerConstants.ADTRACKER_ERROR, i);
            InternalSDKUtil.getContext().sendBroadcast(intent);
            return true;
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cant send test broadcast", e);
            return false;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void setInternalReferrer(android.content.Context r8, java.lang.String r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.analytics.iat.impl.AdTrackerUtils.setInternalReferrer(android.content.Context, java.lang.String):void");
        /*
        r3 = 0;
        if (r8 == 0) goto L_0x0006;
    L_0x0004:
        if (r9 != 0) goto L_0x000e;
    L_0x0006:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "Cannot set Market Referrer..Referrer NULL";
        com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x007f }
    L_0x000d:
        return;
    L_0x000e:
        r0 = r8.getApplicationContext();	 Catch:{ Exception -> 0x007f }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "t2";
        r0 = com.inmobi.commons.internal.FileOperations.getLongPreferences(r0, r1, r2);	 Catch:{ Exception -> 0x007f }
        r0 = (r3 > r0 ? 1 : (r3 == r0? 0 : -1));
        if (r0 != 0) goto L_0x002d;
    L_0x001e:
        r0 = r8.getApplicationContext();	 Catch:{ Exception -> 0x007f }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "t2";
        r3 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x007f }
        com.inmobi.commons.internal.FileOperations.setPreferences(r0, r1, r2, r3);	 Catch:{ Exception -> 0x007f }
    L_0x002d:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x007f }
        r1.<init>();	 Catch:{ Exception -> 0x007f }
        r2 = "Saving referrer from broadcast receiver: ";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x007f }
        r1 = r1.append(r9);	 Catch:{ Exception -> 0x007f }
        r1 = r1.toString();	 Catch:{ Exception -> 0x007f }
        com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x007f }
        r0 = r8.getApplicationContext();	 Catch:{ Exception -> 0x007f }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "referrer";
        com.inmobi.commons.internal.FileOperations.setPreferences(r0, r1, r2, r9);	 Catch:{ Exception -> 0x007f }
        r0 = r8.getApplicationContext();	 Catch:{ Exception -> 0x007f }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "rlc";
        r3 = "0";
        com.inmobi.commons.internal.FileOperations.setPreferences(r0, r1, r2, r3);	 Catch:{ Exception -> 0x007f }
        r0 = r8.getApplicationContext();	 Catch:{ Exception -> 0x007f }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "mk-siteid";
        r7 = com.inmobi.commons.internal.FileOperations.getPreferences(r0, r1, r2);	 Catch:{ Exception -> 0x007f }
        if (r7 == 0) goto L_0x0077;
    L_0x006b:
        r0 = "";
        r1 = r7.trim();	 Catch:{ Exception -> 0x007f }
        r0 = r0.equals(r1);	 Catch:{ Exception -> 0x007f }
        if (r0 == 0) goto L_0x0088;
    L_0x0077:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "Initialization incomplete. Please call InMobi initialize with a valid app Id";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x007f }
        goto L_0x000d;
    L_0x007f:
        r0 = move-exception;
        r1 = "[InMobi]-[AdTracker]-4.4.1";
        r2 = "Cannot set referrer";
        com.inmobi.commons.internal.Log.internal(r1, r2, r0);
        goto L_0x000d;
    L_0x0088:
        r0 = r8.getApplicationContext();	 Catch:{ Exception -> 0x007f }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "waitForReferrer";
        r0 = com.inmobi.commons.internal.FileOperations.getBooleanPreferences(r0, r1, r2);	 Catch:{ Exception -> 0x007f }
        if (r0 == 0) goto L_0x00ad;
    L_0x0096:
        com.inmobi.commons.internal.InternalSDKUtil.setContext(r8);	 Catch:{ Exception -> 0x007f }
        com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface.init();	 Catch:{ Exception -> 0x007f }
        r0 = com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface.getGoalList();	 Catch:{ Exception -> 0x007f }
        r1 = "download";
        r2 = 1;
        r3 = 0;
        r5 = 0;
        r6 = 1;
        r0.addGoal(r1, r2, r3, r5, r6);	 Catch:{ Exception -> 0x007f }
        com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface.reportToServer(r7);	 Catch:{ Exception -> 0x007f }
    L_0x00ad:
        com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface.notifyThread();	 Catch:{ Exception -> 0x007f }
        goto L_0x000d;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void setReferrerFromLogs(android.content.Context r5, java.lang.String r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.analytics.iat.impl.AdTrackerUtils.setReferrerFromLogs(android.content.Context, java.lang.String):void");
        /*
        if (r5 == 0) goto L_0x0004;
    L_0x0002:
        if (r6 != 0) goto L_0x000c;
    L_0x0004:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "Cannot set Market Referrer from logs..Referrer NULL";
        com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x0046 }
    L_0x000b:
        return;
    L_0x000c:
        r0 = 0;
        r2 = r5.getApplicationContext();	 Catch:{ Exception -> 0x0046 }
        r3 = "IMAdTrackerStatusUpload";
        r4 = "t2";
        r2 = com.inmobi.commons.internal.FileOperations.getLongPreferences(r2, r3, r4);	 Catch:{ Exception -> 0x0046 }
        r0 = (r0 > r2 ? 1 : (r0 == r2? 0 : -1));
        if (r0 != 0) goto L_0x002d;
    L_0x001e:
        r0 = r5.getApplicationContext();	 Catch:{ Exception -> 0x0046 }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "t2";
        r3 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0046 }
        com.inmobi.commons.internal.FileOperations.setPreferences(r0, r1, r2, r3);	 Catch:{ Exception -> 0x0046 }
    L_0x002d:
        r0 = r5.getApplicationContext();	 Catch:{ Exception -> 0x0046 }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "referrer";
        com.inmobi.commons.internal.FileOperations.setPreferences(r0, r1, r2, r6);	 Catch:{ Exception -> 0x0046 }
        r0 = r5.getApplicationContext();	 Catch:{ Exception -> 0x0046 }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "rlc";
        r3 = "1";
        com.inmobi.commons.internal.FileOperations.setPreferences(r0, r1, r2, r3);	 Catch:{ Exception -> 0x0046 }
        goto L_0x000b;
    L_0x0046:
        r0 = move-exception;
        r1 = "[InMobi]-[AdTracker]-4.4.1";
        r2 = "Cannot set referrer from logs";
        com.inmobi.commons.internal.Log.internal(r1, r2, r0);
        goto L_0x000b;
        */
    }

    public static boolean updateStatus() {
        if (InternalSDKUtil.getContext() == null) {
            return false;
        }
        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_STATUS, true);
        return true;
    }
}