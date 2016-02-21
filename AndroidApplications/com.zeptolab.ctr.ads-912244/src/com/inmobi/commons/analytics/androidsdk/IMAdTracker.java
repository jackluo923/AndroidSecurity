package com.inmobi.commons.analytics.androidsdk;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.net.AdTrackerNetworkInterface;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

public final class IMAdTracker {
    private static IMAdTracker a;

    private IMAdTracker() {
    }

    private boolean a(String str) {
        boolean z = false;
        try {
            String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.APP_ID);
            if (InternalSDKUtil.getContext() == null || preferences == null || preferences.trim().equals(AdTrackerConstants.BLANK)) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_INITIALIZATION_INCOMPLETE);
                return z;
            } else if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_INVALID_GOAL);
                return z;
            } else {
                boolean checkDownloadGoalUploaded = AdTrackerUtils.checkDownloadGoalUploaded();
                if (AdTrackerConstants.GOAL_DOWNLOAD.equals(str) && true == checkDownloadGoalUploaded) {
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Download goal already uploaded");
                    return z;
                } else {
                    AdTrackerNetworkInterface.init();
                    if (!AdTrackerConstants.GOAL_DOWNLOAD.equals(str)) {
                        Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Goal Queued " + str);
                        AdTrackerNetworkInterface.getGoalList().addGoal(str, 1, 0, 0, false);
                    } else if (!AdTrackerUtils.checkDownloadGoalAdded()) {
                        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.IAT_DOWNLOAD_INSERT_STATUS, true);
                        Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Goal Queued " + str);
                        AdTrackerNetworkInterface.getGoalList().addGoal(str, 1, 0, 0, false);
                    }
                    AdTrackerNetworkInterface.reportToServer(preferences);
                    return true;
                }
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cannot report goal", e);
            return z;
        }
    }

    public static synchronized IMAdTracker getInstance() {
        IMAdTracker iMAdTracker;
        synchronized (IMAdTracker.class) {
            if (a == null) {
                a = new IMAdTracker();
            }
            iMAdTracker = a;
        }
        return iMAdTracker;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void init(android.content.Context r6, java.lang.String r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.commons.analytics.androidsdk.IMAdTracker.init(android.content.Context, java.lang.String):void");
        /*
        r5 = this;
        if (r6 != 0) goto L_0x0011;
    L_0x0002:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "Application Context NULL";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x0022 }
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "context cannot be null";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x0022 }
    L_0x0010:
        return;
    L_0x0011:
        if (r7 != 0) goto L_0x002b;
    L_0x0013:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "APP ID Cannot be NULL";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x0022 }
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "appId cannot be null";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x0022 }
        goto L_0x0010;
    L_0x0022:
        r0 = move-exception;
        r1 = "[InMobi]-[AdTracker]-4.4.1";
        r2 = "Failed to init";
        com.inmobi.commons.internal.Log.internal(r1, r2, r0);
        goto L_0x0010;
    L_0x002b:
        r0 = r7.trim();	 Catch:{ Exception -> 0x0022 }
        r1 = "";
        r0 = r0.equals(r1);	 Catch:{ Exception -> 0x0022 }
        if (r0 == 0) goto L_0x003f;
    L_0x0037:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "appId cannot be blank";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x0022 }
        goto L_0x0010;
    L_0x003f:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "IMAdtracker init successfull";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x0022 }
        r0 = "IMAdTrackerStatusUpload";
        r1 = "mk-siteid";
        com.inmobi.commons.internal.FileOperations.setPreferences(r6, r0, r1, r7);	 Catch:{ Exception -> 0x0022 }
        r0 = "android.permission.INTERNET";
        r0 = com.inmobi.commons.analytics.iat.impl.AdTrackerUtils.isPermissionGranted(r0);	 Catch:{ Exception -> 0x0022 }
        if (r0 == 0) goto L_0x005d;
    L_0x0055:
        r0 = "android.permission.ACCESS_NETWORK_STATE";
        r0 = com.inmobi.commons.analytics.iat.impl.AdTrackerUtils.isPermissionGranted(r0);	 Catch:{ Exception -> 0x0022 }
        if (r0 != 0) goto L_0x0065;
    L_0x005d:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "Add android.permission.INTERNET and android.permission.ACCESS_NETWORK_STATE permission in Android manifest";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x0022 }
        goto L_0x0010;
    L_0x0065:
        r0 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Exception -> 0x0022 }
        r1 = 17;
        if (r0 >= r1) goto L_0x007a;
    L_0x006b:
        r0 = "android.permission.READ_LOGS";
        r0 = com.inmobi.commons.analytics.iat.impl.AdTrackerUtils.isPermissionGranted(r0);	 Catch:{ Exception -> 0x0022 }
        if (r0 != 0) goto L_0x007a;
    L_0x0073:
        r0 = "[InMobi]-[AdTracker]-4.4.1";
        r1 = "Add android.permission.READ_LOGS permission in Android Manifest";
        com.inmobi.commons.internal.Log.debug(r0, r1);	 Catch:{ Exception -> 0x0022 }
    L_0x007a:
        r0 = 0;
        r2 = r6.getApplicationContext();	 Catch:{ Exception -> 0x0022 }
        r3 = "IMAdTrackerStatusUpload";
        r4 = "t1";
        r2 = com.inmobi.commons.internal.FileOperations.getLongPreferences(r2, r3, r4);	 Catch:{ Exception -> 0x0022 }
        r0 = (r0 > r2 ? 1 : (r0 == r2? 0 : -1));
        if (r0 != 0) goto L_0x009b;
    L_0x008c:
        r0 = r6.getApplicationContext();	 Catch:{ Exception -> 0x0022 }
        r1 = "IMAdTrackerStatusUpload";
        r2 = "t1";
        r3 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x0022 }
        com.inmobi.commons.internal.FileOperations.setPreferences(r0, r1, r2, r3);	 Catch:{ Exception -> 0x0022 }
    L_0x009b:
        r0 = new android.content.IntentFilter;	 Catch:{ Exception -> 0x0022 }
        r0.<init>();	 Catch:{ Exception -> 0x0022 }
        r1 = "android.net.conn.CONNECTIVITY_CHANGE";
        r0.addAction(r1);	 Catch:{ Exception -> 0x0022 }
        r1 = "com.android.vending.INSTALL_REFERRER";
        r0.addAction(r1);	 Catch:{ Exception -> 0x0022 }
        r1 = r6.getApplicationContext();	 Catch:{ Exception -> 0x0022 }
        r2 = new com.inmobi.commons.analytics.androidsdk.IMAdTrackerReceiver;	 Catch:{ Exception -> 0x0022 }
        r2.<init>();	 Catch:{ Exception -> 0x0022 }
        r1.registerReceiver(r2, r0);	 Catch:{ Exception -> 0x0022 }
        goto L_0x0010;
        */
    }

    public void reportAppDownloadGoal() {
        a(AdTrackerConstants.GOAL_DOWNLOAD);
    }

    public void reportCustomGoal(String str) {
        if (AdTrackerConstants.GOAL_DOWNLOAD.equals(str)) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, AdTrackerConstants.MSG_INVALID_CUSTOM_GOAL);
        } else {
            a(str);
        }
    }
}