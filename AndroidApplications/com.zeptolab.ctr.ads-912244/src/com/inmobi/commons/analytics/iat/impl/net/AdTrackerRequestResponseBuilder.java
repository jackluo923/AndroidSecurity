package com.inmobi.commons.analytics.iat.impl.net;

import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants.StatusCode;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.monetization.internal.Constants;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

public class AdTrackerRequestResponseBuilder {
    private static String a;
    private static long b;

    static {
        a = null;
        b = 0;
    }

    protected static String formHTTPRequest(String str, String str2, int i, boolean z, String str3) {
        List linkedList = new LinkedList();
        String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER);
        if (!(str == null || str.trim().equals(AdTrackerConstants.BLANK))) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.APP_ID, str));
        }
        String toString = Integer.toString(new Random().nextInt());
        String uidMap = AdTrackerInitializer.getConfigParams().getUID().getUidMap(1, toString, null);
        if (InternalSDKUtil.isLimitAdTrackingEnabled()) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_LIMIT_ADTRACKING, "1"));
        } else {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_LIMIT_ADTRACKING, "0"));
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UIDMAP, uidMap));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UIDKEY, toString));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.UKEYVER, UIDHelper.getRSAKeyVersion()));
        if (!(str2 == null || str2.trim().equals(AdTrackerConstants.BLANK))) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.GOALNAME, str2));
        }
        if (z) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.LATE_PING, "1"));
        } else {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.LATE_PING, "0"));
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.SOURCE, AdTrackerConstants.ANDROID));
        if (i > 0) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.GOALCOUNT, Integer.toString(i)));
        }
        toString = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(Constants.MEDIATION_SDK_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.SDKVER, toString));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.SDKREL_VER, toString));
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.OS_VERSION, String.valueOf(VERSION.SDK_INT)));
        toString = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REFERRER_FROM_LOGCAT);
        if (toString == null) {
            toString = "0";
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_REFERRER_FROM_LOGCAT, toString));
        try {
            toString = InternalSDKUtil.getContext().getPackageManager().getPackageInfo(InternalSDKUtil.getContext().getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Cant get appversion", e);
            toString = null;
        }
        if (!(toString == null || toString.trim().equals(AdTrackerConstants.BLANK))) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.APPVER, toString));
        }
        if (!(str3 == null || str3.trim().equals(AdTrackerConstants.BLANK))) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.VALIDIDS, str3));
        }
        if (preferences != null) {
            int intPreferences = FileOperations.getIntPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER_FROM_SDK);
            long longPreferences = FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T2) - FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_T1);
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.REFERRER_FROM_SDK, Integer.toString(intPreferences)));
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.REFERRER_DELAY, Long.toString(longPreferences)));
        }
        if (1 == AdTrackerNetworkInterface.isUnstableNetwork()) {
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.KEY_UNSTABLE_NETWORK, Integer.toString(AdTrackerNetworkInterface.isUnstableNetwork())));
        }
        linkedList.add(new BasicNameValuePair(AdTrackerConstants.TIMESTAMP, Long.toString(System.currentTimeMillis())));
        return URLEncodedUtils.format(linkedList, "utf-8");
    }

    public static String getWebViewRequestParam() {
        return a;
    }

    public static void saveWebviewRequestParam(String str, Goal goal) {
        a = formHTTPRequest(str, goal.getGoalName(), goal.getGoalCount(), goal.isDuplicateGoal(), null);
    }

    public static StatusCode sendHTTPRequest(String str, Goal goal, String str2) {
        StatusCode statusCode;
        Throwable th;
        long j = 0;
        int i = 1;
        StatusCode statusCode2 = StatusCode.APP_ANALYTICS_UPLOAD_FAILURE;
        try {
            b = System.currentTimeMillis();
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER);
            String formHTTPRequest = formHTTPRequest(str, goal.getGoalName(), goal.getGoalCount(), goal.isDuplicateGoal(), str2);
            int connectionTimeout = AdTrackerInitializer.getConfigParams().getConnectionTimeout();
            formHTTPRequest = AdTrackerNetworkInterface.a() + formHTTPRequest;
            if (preferences != null) {
                formHTTPRequest = formHTTPRequest + "&referrer=" + preferences;
            }
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, formHTTPRequest);
            HttpUriRequest httpGet = new HttpGet(formHTTPRequest);
            HttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, connectionTimeout);
            HttpConnectionParams.setSoTimeout(basicHttpParams, connectionTimeout);
            defaultHttpClient.setParams(basicHttpParams);
            HttpResponse execute = defaultHttpClient.execute(httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                formHTTPRequest = EntityUtils.toString(execute.getEntity());
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "RESPONSE: " + formHTTPRequest);
                JSONObject jSONObject = new JSONObject(formHTTPRequest);
                String string = jSONObject.getString(AdTrackerConstants.ERRORMSG);
                int i2 = jSONObject.getInt(AdTrackerConstants.ERRORCODE);
                if (6000 == i2) {
                    AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_SUCCESS, goal, 1, System.currentTimeMillis() - b, 0, null);
                    statusCode = StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS;
                } else {
                    AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal, 1, 0, i2, null);
                    statusCode = statusCode2;
                }
                if (6001 != i2) {
                    return statusCode;
                }
                try {
                    Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Error uploading ping " + string + "\nReloading webview");
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS, null);
                    return AdTrackerNetworkInterface.reportUsingWebview(str, goal) ? StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS : StatusCode.APP_ANALYTICS_UPLOAD_FAILURE;
                } catch (Exception e) {
                    th = e;
                    statusCode2 = statusCode;
                    AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal, i, j, AdTrackerConstants.EXCEPTION, th.getMessage());
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error uploading Goal Ping", th);
                    return statusCode2;
                }
            } else {
                AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal, 1, 0, execute.getStatusLine().getStatusCode(), null);
                return statusCode2;
            }
        } catch (Exception e2) {
            th = e2;
            AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal, i, j, AdTrackerConstants.EXCEPTION, th.getMessage());
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error uploading Goal Ping", th);
            return statusCode2;
        }
    }

    public static boolean serverReachable(String str) {
        try {
            if (new DefaultHttpClient().execute(new HttpGet(str)).getStatusLine().getStatusCode() == 200) {
                return true;
            }
        } catch (Exception e) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Server not reachable..Logging events");
        }
        return false;
    }
}