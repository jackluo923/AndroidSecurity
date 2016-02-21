package com.inmobi.commons.analytics.iat.impl.net;

import android.os.Handler;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants.StatusCode;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.analytics.iat.impl.GoalList;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.cache.RetryMechanism;
import com.inmobi.commons.cache.RetryMechanism.RetryRunnable;
import com.inmobi.commons.internal.CommonsException;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.zeptolab.ctr.ads.R;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

public class AdTrackerNetworkInterface {
    private static GoalList a;
    private static AtomicBoolean b;
    private static AtomicBoolean c;
    private static Thread d;
    private static Handler e;
    private static AtomicBoolean f;
    private static AtomicBoolean g;
    private static AdTrackerWebViewLoader h;
    private static boolean i;
    private static int j;
    private static String k;
    private static String l;
    private static String m;
    private static Timer n;

    final class a implements Runnable {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        public void run() {
            while (!c.get()) {
                try {
                    a.saveGoals();
                    c.set(true);
                    if (a != null && !a.isEmpty()) {
                        while (!a.isEmpty()) {
                            try {
                                AdTrackerNetworkInterface.b(this.a);
                            } catch (Exception e) {
                                AdTrackerNetworkInterface.deinit();
                            }
                        }
                        b.set(false);
                    }
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "GoalList Empty");
                    AdTrackerNetworkInterface.deinit();
                    return;
                } catch (Exception e2) {
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Exception reporting goals", e2);
                }
            }
            AdTrackerNetworkInterface.deinit();
        }
    }

    final class b implements RetryRunnable {
        b() {
        }

        public void completed() {
            AdTrackerNetworkInterface.notifyThread();
        }

        public void run() {
            AdTrackerNetworkInterface.k();
        }
    }

    static {
        b = null;
        f = null;
        g = null;
        i = false;
        j = 0;
        k = "https://d.appsdt.com/download/tracker/?";
        l = "https://d.appsdt.com/sdkdwnldbeacon.html";
        m = "https://d.appsdt.com/download/tracker/iatsdkconfs?";
        n = new Timer();
    }

    static String a() {
        return k;
    }

    private static void a(Goal goal) {
        try {
            String goalName = goal.getGoalName();
            long retryTime = goal.getRetryTime();
            int maxWaitTime = AdTrackerInitializer.getConfigParams().getRetryParams().getMaxWaitTime();
            if (true == f.get()) {
                retryTime = 0;
            } else if (retryTime > ((long) maxWaitTime)) {
                retryTime = (long) maxWaitTime;
            }
            if (retryTime > 0) {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Retrying goalname: " + goalName + " after " + (retryTime / 1000) + " secs");
            }
            synchronized (d) {
                Thread.sleep(retryTime);
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to reduce wait time exception", e);
        }
    }

    private static void a(String str, Goal goal) {
        boolean isDuplicateGoal = goal.isDuplicateGoal();
        int goalCount = goal.getGoalCount();
        String goalName = goal.getGoalName();
        if ((h() ? Boolean.valueOf(reportUsingNetwork(str, goal)) : Boolean.valueOf(reportUsingWebview(str, goal))).booleanValue()) {
            FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_FIRST_GOAL_SUCCESS, true);
            a.removeGoal(goalName, goalCount);
            if (AdTrackerConstants.GOAL_DOWNLOAD.equals(goalName)) {
                AdTrackerUtils.updateStatus();
            }
        } else {
            a.increaseRetryTime(goalName, goalCount, isDuplicateGoal);
        }
    }

    static String b() {
        return l;
    }

    private static void b(String str) {
        try {
            a.saveGoals();
            i = AdTrackerInitializer.getLogger().startNewSample();
            Goal goal = (Goal) a.get(0);
            if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                a(goal);
                g();
                a(str, goal);
                FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.WAIT_FOR_REFERRER, true);
                j = 0;
            } else {
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Network Unavailable");
                j = 1;
                deinit();
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to process IAT goals", e);
        }
    }

    public static void deinit() {
        if (b != null) {
            b.set(false);
        }
        if (!(a == null || a.isEmpty())) {
            a.saveGoals();
        }
        c.set(false);
        a = null;
    }

    private static void g() {
        try {
            if (!i() && !l()) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Getting wait time for referrer");
                long j = j();
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Waiting for referrer for " + j + "secs");
                if (!i()) {
                    synchronized (d) {
                        d.wait(j * 1000);
                    }
                }
                if (!i()) {
                    String referrerFromLogs = AdTrackerUtils.getReferrerFromLogs();
                    if (referrerFromLogs != null) {
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Saving referrer from logs: " + referrerFromLogs);
                        AdTrackerUtils.setReferrerFromLogs(InternalSDKUtil.getContext(), referrerFromLogs);
                    }
                }
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to set referrer", e);
        }
    }

    public static GoalList getGoalList() {
        return a;
    }

    public static Thread getNetworkThread() {
        return d;
    }

    public static Handler getUIHandler() {
        return e;
    }

    public static AtomicBoolean getWebviewUploadStatus() {
        return g;
    }

    private static boolean h() {
        boolean z = false;
        try {
            String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.TIMETOLIVE);
            String preferences2 = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS);
            Calendar instance = Calendar.getInstance();
            instance.setTime(new Date());
            instance.getTime().toString();
            if (preferences == null || preferences2 == null) {
                return z;
            }
            Date time = instance.getTime();
            instance.add(R.styleable.MapAttrs_uiZoomGestures, Integer.parseInt(preferences));
            return instance.getTime().after(time) ? true : z;
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error parsing ttl", e);
            return z;
        }
    }

    private static boolean i() {
        return FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER) != null;
    }

    public static void init() {
        if (a == null) {
            a = GoalList.getLoggedGoals();
        }
        if (b == null) {
            b = new AtomicBoolean(false);
        }
        c = new AtomicBoolean(false);
        if (e == null) {
            e = new Handler();
        }
        f = new AtomicBoolean(true);
        g = new AtomicBoolean(false);
    }

    public static boolean isMetricSample() {
        return i;
    }

    public static boolean isSynced() {
        return c.get();
    }

    public static int isUnstableNetwork() {
        return j;
    }

    private static long j() {
        long j = 0;
        try {
            int referrerWaitTimeRetryCount = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryCount();
            int referrerWaitTimeRetryInterval = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryInterval();
            int referrerWaitTime = AdTrackerInitializer.getConfigParams().getReferrerWaitTime();
            int i = (((referrerWaitTimeRetryCount * referrerWaitTimeRetryInterval) + 0) * referrerWaitTimeRetryCount) / 2;
            new RetryMechanism(referrerWaitTimeRetryCount - 1, referrerWaitTimeRetryInterval, n).rescheduleTimer(new b());
            synchronized (d) {
                d.wait((long) i);
            }
            long longPreferences = FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT);
            if (j != longPreferences) {
                return longPreferences;
            }
            try {
                return (long) (referrerWaitTime / 1000);
            } catch (Exception e) {
                th = e;
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to get wait time", th);
                return longPreferences;
            }
        } catch (Exception e2) {
            longPreferences = j;
            Throwable th2 = e2;
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to get wait time", th2);
            return longPreferences;
        }
    }

    private static void k() {
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        String str = m + "t=" + System.currentTimeMillis();
        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Fetch Wait time URL: " + str);
        HttpUriRequest httpGet = new HttpGet(str);
        HttpResponse httpResponse = null;
        try {
            httpResponse = defaultHttpClient.execute(httpGet);
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e);
        }
        if (httpResponse.getStatusLine().getStatusCode() == 200) {
            try {
                str = EntityUtils.toString(httpResponse.getEntity());
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Wait time received for referrer: " + str);
                FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT, new JSONObject(str).getLong(AdTrackerConstants.KEY_REF_WAIT));
            } catch (Exception e2) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e2);
            }
        } else {
            throw new CommonsException(-1);
        }
    }

    private static boolean l() {
        return FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.WAIT_FOR_REFERRER);
    }

    public static void notifyThread() {
        try {
            synchronized (d) {
                d.notify();
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to notify thread", e);
        }
    }

    public static synchronized StatusCode reportToServer(String str) {
        StatusCode statusCode;
        synchronized (AdTrackerNetworkInterface.class) {
            if (b.compareAndSet(false, true)) {
                d = new Thread(new a(str));
                d.setPriority(1);
                d.start();
            }
            statusCode = StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS;
        }
        return statusCode;
    }

    protected static boolean reportUsingNetwork(String str, Goal goal) {
        boolean z = false;
        String goalName = goal.getGoalName();
        try {
            String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS);
            StatusCode statusCode = StatusCode.APP_ANALYTICS_UPLOAD_FAILURE;
            StatusCode sendHTTPRequest = AdTrackerRequestResponseBuilder.sendHTTPRequest(str, goal, preferences);
            if (StatusCode.APP_ANALYTICS_UPLOAD_SUCCESS == sendHTTPRequest) {
                f.set(true);
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Successfully uploaded goal: " + goalName);
            } else if (StatusCode.RELOAD_WEBVIEW_ERROR == sendHTTPRequest) {
                f.set(false);
            } else {
                f.set(false);
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to upload goal: " + goalName);
            }
        } catch (Exception e) {
            Throwable th = e;
            f.set(z);
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to upload goal: " + goalName);
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to report goal: ", th);
        }
        return f.get();
    }

    protected static boolean reportUsingWebview(String str, Goal goal) {
        boolean z = false;
        try {
            int webviewTimeout = AdTrackerInitializer.getConfigParams().getWebviewTimeout();
            h = new AdTrackerWebViewLoader();
            AdTrackerRequestResponseBuilder.saveWebviewRequestParam(str, goal);
            h.loadWebview(goal);
            synchronized (d) {
                d.wait((long) webviewTimeout);
            }
            if (true == AdTrackerWebViewLoader.isWebviewLoading()) {
                AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal, 0, 0, AdTrackerConstants.NETWORK_TIMEOUT, null);
            }
            if (g.get()) {
                f.set(true);
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Uploaded goal successfully: " + goal.getGoalName());
            } else {
                f.set(false);
                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to upload goal: " + goal.getGoalName());
            }
            h.deinit(webviewTimeout);
        } catch (Exception e) {
            Throwable th = e;
            f.set(z);
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to load webview Exception", th);
        }
        return g.get();
    }

    public static void setSynced(boolean z) {
        c.set(z);
    }

    public static void setWebviewUploadStatus(boolean z) {
        g.set(z);
    }

    public static void waitThread(int i) {
        try {
            synchronized (d) {
                d.wait((long) i);
            }
        } catch (Exception e) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Failed to notify thread", e);
        }
    }
}