package com.inmobi.androidsdk.impl.net;

import android.content.Context;
import android.os.Handler;
import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.bootstrapper.PkInitilaizer;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.imai.IMAIClickEventList;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.re.controller.util.Constants;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public final class RequestResponseManager {
    static Thread a;
    static Handler b;
    static AtomicBoolean c;
    public static AtomicBoolean isSynced;
    private static AtomicBoolean j;
    private static AtomicBoolean l;
    public static IMAIClickEventList mDBWriterQueue;
    public static IMAIClickEventList mNetworkQueue;
    byte[] d;
    String e;
    String f;
    String g;
    private AtomicBoolean h;
    private HttpURLConnection i;
    private WebviewLoader k;
    private final int m;
    private final int n;
    private byte[] o;
    private byte[] p;

    public enum ActionType {
        AdRequest,
        AdRequest_Interstitial;

        static {
            AdRequest = new com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType("AdRequest", 0);
            AdRequest_Interstitial = new com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType("AdRequest_Interstitial", 1);
            a = new com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType[]{AdRequest, AdRequest_Interstitial};
        }
    }

    class a extends Thread {
        a() {
        }

        public void run() {
            try {
                RequestResponseManager.this.i.disconnect();
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception in closing connection ", e);
            }
        }
    }

    class b extends Thread {
        final /* synthetic */ UserInfo a;
        final /* synthetic */ String b;
        final /* synthetic */ com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType c;
        final /* synthetic */ HttpRequestCallback d;

        b(UserInfo userInfo, String str, com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType actionType, HttpRequestCallback httpRequestCallback) {
            this.a = userInfo;
            this.b = str;
            this.c = actionType;
            this.d = httpRequestCallback;
        }

        public void run() {
            Throwable th;
            int i = 1;
            WifiInfo wifiInfo = null;
            try {
                wifiInfo = IceDataCollector.getConnectedWifiInfo(this.a.getApplicationContext());
                Log.internal(ConfigConstants.LOGGING_TAG, "Ad Serving URL: " + this.b);
                String buildPostBody = HttpRequestBuilder.buildPostBody(this.a, wifiInfo, this.c);
                Log.debug(ConfigConstants.LOGGING_TAG, buildPostBody);
                RequestResponseManager.this.i = RequestResponseManager.this.a(this.b, this.a);
                RequestResponseManager.this.a(buildPostBody);
                RequestResponseManager.this.a(0, (Object)RequestResponseManager.this.a(this.a), this.d);
            } catch (AdException e) {
                th = e;
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception retrieving ad ", th);
                RequestResponseManager.this.a(i, (Object)th, this.d);
            } catch (IOException e2) {
                th = e2;
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception retrieving ad ", th);
                if (th instanceof SocketTimeoutException) {
                    Log.internal(ConfigConstants.LOGGING_TAG, "Server Timeout");
                    RequestResponseManager.this.a(i, (Object)ErrorCode.AD_FETCH_TIMEOUT, this.d);
                } else {
                    RequestResponseManager.this.a(i, (Object)ErrorCode.NETWORK_ERROR, this.d);
                }
            } catch (Exception e3) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception retrieving ad ", e3);
                RequestResponseManager.this.a(i, (Object)ErrorCode.INTERNAL_ERROR, this.d);
            }
        }
    }

    class c extends Thread {
        final /* synthetic */ UserInfo a;
        final /* synthetic */ String b;
        final /* synthetic */ com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType c;
        final /* synthetic */ HttpRequestCallback d;

        c(UserInfo userInfo, String str, com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType actionType, HttpRequestCallback httpRequestCallback) {
            this.a = userInfo;
            this.b = str;
            this.c = actionType;
            this.d = httpRequestCallback;
        }

        public void run() {
            Throwable th;
            int i = 1;
            WifiInfo wifiInfo = null;
            try {
                wifiInfo = IceDataCollector.getConnectedWifiInfo(this.a.getApplicationContext());
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "No wifi permissions set, unable to send wifi data");
            } catch (AdException e2) {
                th = e2;
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception retrieving ad ", th);
                RequestResponseManager.this.a(i, (Object)th, this.d);
            } catch (IOException e3) {
                th = e3;
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception retrieving ad ", th);
                if (th instanceof SocketTimeoutException) {
                    Log.internal(ConfigConstants.LOGGING_TAG, "Server Timeout");
                    RequestResponseManager.this.a(i, (Object)ErrorCode.AD_FETCH_TIMEOUT, this.d);
                } else {
                    RequestResponseManager.this.a(i, (Object)ErrorCode.NETWORK_ERROR, this.d);
                }
            }
            Log.internal(ConfigConstants.LOGGING_TAG, "Ad Serving URL: " + this.b);
            String buildPostBody = HttpRequestBuilder.buildPostBody(this.a, wifiInfo, this.c);
            Log.internal(ConfigConstants.LOGGING_TAG, "UnEncrypted PostBody :" + buildPostBody);
            buildPostBody = RequestResponseManager.this.a(buildPostBody, this.d);
            RequestResponseManager.this.i = RequestResponseManager.this.a(this.b, this.a);
            if (buildPostBody != null) {
                Log.debug(ConfigConstants.LOGGING_TAG, "PostBody :" + buildPostBody);
                RequestResponseManager.this.a(buildPostBody);
                RequestResponseManager.this.a(0, (Object)RequestResponseManager.this.a(this.a), this.d);
            } else {
                RequestResponseManager.this.a(1, (Object)ErrorCode.INTERNAL_ERROR, this.d);
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ HttpRequestCallback b;

        d(Context context, HttpRequestCallback httpRequestCallback) {
            this.a = context;
            this.b = httpRequestCallback;
        }

        public void run() {
            throw new UnsupportedOperationException("Method not decompiled: com.inmobi.androidsdk.impl.net.RequestResponseManager.d.run():void");
            /* JADX: method processing error */
/*
            Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:42)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:62)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:29)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
            /*
            r11 = this;
            r10 = 1;
        L_0x0001:
            r0 = isSynced;	 Catch:{ Exception -> 0x00a2 }
            r0 = r0.get();	 Catch:{ Exception -> 0x00a2 }
            if (r0 != 0) goto L_0x0204;
        L_0x0009:
            r0 = isSynced;	 Catch:{ Exception -> 0x00a2 }
            r1 = 1;
            r0.set(r1);	 Catch:{ Exception -> 0x00a2 }
            r0 = mNetworkQueue;	 Catch:{ Exception -> 0x00a2 }
            if (r0 == 0) goto L_0x001b;
        L_0x0013:
            r0 = mNetworkQueue;	 Catch:{ Exception -> 0x00a2 }
            r0 = r0.isEmpty();	 Catch:{ Exception -> 0x00a2 }
            if (r0 == 0) goto L_0x0040;
        L_0x001b:
            r0 = mDBWriterQueue;	 Catch:{ Exception -> 0x00a2 }
            if (r0 != 0) goto L_0x0034;
        L_0x001f:
            r0 = mDBWriterQueue;	 Catch:{ Exception -> 0x00a2 }
            r0 = r0.isEmpty();	 Catch:{ Exception -> 0x00a2 }
            if (r0 == 0) goto L_0x0034;
        L_0x0027:
            r0 = "[InMobi]-[Network]-4.4.1";
            r1 = "Click event list empty";
            com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x00a2 }
            r0 = com.inmobi.androidsdk.impl.net.RequestResponseManager.this;	 Catch:{ Exception -> 0x00a2 }
            r0.deinit();	 Catch:{ Exception -> 0x00a2 }
        L_0x0033:
            return;
        L_0x0034:
            r0 = mNetworkQueue;	 Catch:{ Exception -> 0x00a2 }
            r1 = mDBWriterQueue;	 Catch:{ Exception -> 0x00a2 }
            r0.addAll(r1);	 Catch:{ Exception -> 0x00a2 }
            r0 = mDBWriterQueue;	 Catch:{ Exception -> 0x00a2 }
            r0.clear();	 Catch:{ Exception -> 0x00a2 }
        L_0x0040:
            r0 = mNetworkQueue;	 Catch:{ Exception -> 0x0094 }
            r0 = r0.isEmpty();	 Catch:{ Exception -> 0x0094 }
            if (r0 != 0) goto L_0x0001;
        L_0x0048:
            r0 = mNetworkQueue;	 Catch:{ Exception -> 0x0094 }
            r1 = 0;
            r0 = r0.remove(r1);	 Catch:{ Exception -> 0x0094 }
            r0 = (com.inmobi.androidsdk.impl.imai.db.ClickData) r0;	 Catch:{ Exception -> 0x0094 }
            r2 = r0.getClickUrl();	 Catch:{ Exception -> 0x0094 }
            r3 = r0.getRetryCount();	 Catch:{ Exception -> 0x0094 }
            r4 = r0.isPingWv();	 Catch:{ Exception -> 0x0094 }
            r5 = r0.isFollowRedirects();	 Catch:{ Exception -> 0x0094 }
            r1 = com.inmobi.androidsdk.bootstrapper.Initializer.getConfigParams();	 Catch:{ Exception -> 0x0094 }
            r1 = r1.getImai();	 Catch:{ Exception -> 0x0094 }
            r1 = r1.getRetryInterval();	 Catch:{ Exception -> 0x0094 }
            r6 = r11.a;	 Catch:{ Exception -> 0x0094 }
            r6 = com.inmobi.commons.internal.InternalSDKUtil.checkNetworkAvailibility(r6);	 Catch:{ Exception -> 0x0094 }
            if (r6 != 0) goto L_0x00ab;
        L_0x0075:
            r1 = "[InMobi]-[Network]-4.4.1";
            r2 = "Cannot process click. Network Not available";
            com.inmobi.commons.internal.Log.internal(r1, r2);	 Catch:{ Exception -> 0x0094 }
            if (r3 <= r10) goto L_0x0083;
        L_0x007e:
            r1 = mDBWriterQueue;	 Catch:{ Exception -> 0x0094 }
            r1.add(r0);	 Catch:{ Exception -> 0x0094 }
        L_0x0083:
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            if (r0 == 0) goto L_0x008e;
        L_0x0087:
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            r1 = 1;
            r2 = 0;
            r0.notifyResult(r1, r2);	 Catch:{ Exception -> 0x0094 }
        L_0x008e:
            r0 = com.inmobi.androidsdk.impl.net.RequestResponseManager.this;	 Catch:{ Exception -> 0x0094 }
            r0.deinit();	 Catch:{ Exception -> 0x0094 }
            goto L_0x0033;
        L_0x0094:
            r0 = move-exception;
            r1 = "[InMobi]-[Network]-4.4.1";
            r2 = "Exception pinging click in background";
            com.inmobi.commons.internal.Log.internal(r1, r2, r0);	 Catch:{ Exception -> 0x00a2 }
            r0 = com.inmobi.androidsdk.impl.net.RequestResponseManager.this;	 Catch:{ Exception -> 0x00a2 }
            r0.deinit();	 Catch:{ Exception -> 0x00a2 }
            goto L_0x0033;
        L_0x00a2:
            r0 = move-exception;
            r1 = "[InMobi]-[Network]-4.4.1";
            r2 = "Exception ping to server ";
            com.inmobi.commons.internal.Log.internal(r1, r2, r0);
            goto L_0x0033;
        L_0x00ab:
            r6 = com.inmobi.androidsdk.bootstrapper.Initializer.getConfigParams();	 Catch:{ Exception -> 0x0094 }
            r6 = r6.getImai();	 Catch:{ Exception -> 0x0094 }
            r6 = r6.getMaxRetry();	 Catch:{ Exception -> 0x0094 }
            r7 = l;	 Catch:{ Exception -> 0x0094 }
            r7 = r7.get();	 Catch:{ Exception -> 0x0094 }
            if (r7 != 0) goto L_0x00ed;
        L_0x00c1:
            if (r3 >= r6) goto L_0x00ed;
        L_0x00c3:
            r6 = "[InMobi]-[Network]-4.4.1";
            r7 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0094 }
            r7.<init>();	 Catch:{ Exception -> 0x0094 }
            r8 = "Retrying to ping in background after ";
            r7 = r7.append(r8);	 Catch:{ Exception -> 0x0094 }
            r8 = r1 / 1000;
            r7 = r7.append(r8);	 Catch:{ Exception -> 0x0094 }
            r8 = " secs";
            r7 = r7.append(r8);	 Catch:{ Exception -> 0x0094 }
            r7 = r7.toString();	 Catch:{ Exception -> 0x0094 }
            com.inmobi.commons.internal.Log.internal(r6, r7);	 Catch:{ Exception -> 0x0094 }
            r6 = a;	 Catch:{ Exception -> 0x0094 }
            monitor-enter(r6);	 Catch:{ Exception -> 0x0094 }
            r7 = a;	 Catch:{ InterruptedException -> 0x0152 }
            r8 = (long) r1;	 Catch:{ InterruptedException -> 0x0152 }
            r7.wait(r8);	 Catch:{ InterruptedException -> 0x0152 }
        L_0x00ec:
            monitor-exit(r6);	 Catch:{ all -> 0x015b }
        L_0x00ed:
            r1 = "[InMobi]-[Network]-4.4.1";
            r6 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0094 }
            r6.<init>();	 Catch:{ Exception -> 0x0094 }
            r7 = "Processing click in background: ";
            r6 = r6.append(r7);	 Catch:{ Exception -> 0x0094 }
            r6 = r6.append(r2);	 Catch:{ Exception -> 0x0094 }
            r6 = r6.toString();	 Catch:{ Exception -> 0x0094 }
            com.inmobi.commons.internal.Log.internal(r1, r6);	 Catch:{ Exception -> 0x0094 }
            if (r4 == 0) goto L_0x018e;
        L_0x0107:
            r1 = com.inmobi.androidsdk.impl.net.RequestResponseManager.this;	 Catch:{ Exception -> 0x0094 }
            r1 = r1.processClickUrlInWebview(r2);	 Catch:{ Exception -> 0x0094 }
            if (r1 == 0) goto L_0x015e;
        L_0x010f:
            r0 = "[InMobi]-[Network]-4.4.1";
            r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0094 }
            r1.<init>();	 Catch:{ Exception -> 0x0094 }
            r3 = "Ping in webview successful: ";
            r1 = r1.append(r3);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.append(r2);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.toString();	 Catch:{ Exception -> 0x0094 }
            com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x0094 }
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            if (r0 == 0) goto L_0x0132;
        L_0x012b:
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            r1 = 0;
            r2 = 0;
            r0.notifyResult(r1, r2);	 Catch:{ Exception -> 0x0094 }
        L_0x0132:
            r0 = mDBWriterQueue;	 Catch:{ Exception -> 0x0094 }
            r0 = r0.size();	 Catch:{ Exception -> 0x0094 }
            r1 = com.inmobi.androidsdk.bootstrapper.Initializer.getConfigParams();	 Catch:{ Exception -> 0x0094 }
            r1 = r1.getImai();	 Catch:{ Exception -> 0x0094 }
            r1 = r1.getmDefaultEventsBatch();	 Catch:{ Exception -> 0x0094 }
            if (r0 <= r1) goto L_0x0040;
        L_0x0146:
            r0 = mDBWriterQueue;	 Catch:{ Exception -> 0x0094 }
            r0.saveClickEvents();	 Catch:{ Exception -> 0x0094 }
            r0 = mDBWriterQueue;	 Catch:{ Exception -> 0x0094 }
            r0.clear();	 Catch:{ Exception -> 0x0094 }
            goto L_0x0040;
        L_0x0152:
            r1 = move-exception;
            r7 = "[InMobi]-[Network]-4.4.1";
            r8 = "Network thread wait failure";
            com.inmobi.commons.internal.Log.internal(r7, r8, r1);	 Catch:{ all -> 0x015b }
            goto L_0x00ec;
        L_0x015b:
            r0 = move-exception;
            monitor-exit(r6);	 Catch:{ all -> 0x015b }
            throw r0;	 Catch:{ Exception -> 0x0094 }
        L_0x015e:
            r1 = r3 + -1;
            r0.setRetryCount(r1);	 Catch:{ Exception -> 0x0094 }
            if (r3 <= r10) goto L_0x016a;
        L_0x0165:
            r1 = mDBWriterQueue;	 Catch:{ Exception -> 0x0094 }
            r1.add(r0);	 Catch:{ Exception -> 0x0094 }
        L_0x016a:
            r0 = "[InMobi]-[Network]-4.4.1";
            r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0094 }
            r1.<init>();	 Catch:{ Exception -> 0x0094 }
            r3 = "Ping in webview failed: ";
            r1 = r1.append(r3);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.append(r2);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.toString();	 Catch:{ Exception -> 0x0094 }
            com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x0094 }
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            if (r0 == 0) goto L_0x0132;
        L_0x0186:
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            r1 = 1;
            r2 = 0;
            r0.notifyResult(r1, r2);	 Catch:{ Exception -> 0x0094 }
            goto L_0x0132;
        L_0x018e:
            r1 = com.inmobi.androidsdk.impl.net.RequestResponseManager.this;	 Catch:{ Exception -> 0x0094 }
            r1 = r1.processClickHttpClient(r2, r5);	 Catch:{ Exception -> 0x0094 }
            if (r1 == 0) goto L_0x01bb;
        L_0x0196:
            r0 = "[InMobi]-[Network]-4.4.1";
            r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0094 }
            r1.<init>();	 Catch:{ Exception -> 0x0094 }
            r3 = "Ping successful: ";
            r1 = r1.append(r3);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.append(r2);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.toString();	 Catch:{ Exception -> 0x0094 }
            com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x0094 }
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            if (r0 == 0) goto L_0x0132;
        L_0x01b2:
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            r1 = 0;
            r2 = 0;
            r0.notifyResult(r1, r2);	 Catch:{ Exception -> 0x0094 }
            goto L_0x0132;
        L_0x01bb:
            r1 = r3 + -1;
            r0.setRetryCount(r1);	 Catch:{ Exception -> 0x0094 }
            if (r3 <= r10) goto L_0x01c7;
        L_0x01c2:
            r1 = mDBWriterQueue;	 Catch:{ Exception -> 0x0094 }
            r1.add(r0);	 Catch:{ Exception -> 0x0094 }
        L_0x01c7:
            r0 = "[InMobi]-[Network]-4.4.1";
            r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0094 }
            r1.<init>();	 Catch:{ Exception -> 0x0094 }
            r3 = "Ping  failed: ";
            r1 = r1.append(r3);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.append(r2);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.toString();	 Catch:{ Exception -> 0x0094 }
            com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x0094 }
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            if (r0 == 0) goto L_0x01ea;
        L_0x01e3:
            r0 = r11.b;	 Catch:{ Exception -> 0x0094 }
            r1 = 1;
            r3 = 0;
            r0.notifyResult(r1, r3);	 Catch:{ Exception -> 0x0094 }
        L_0x01ea:
            r0 = "[InMobi]-[Network]-4.4.1";
            r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0094 }
            r1.<init>();	 Catch:{ Exception -> 0x0094 }
            r3 = "Ping failed: ";
            r1 = r1.append(r3);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.append(r2);	 Catch:{ Exception -> 0x0094 }
            r1 = r1.toString();	 Catch:{ Exception -> 0x0094 }
            com.inmobi.commons.internal.Log.internal(r0, r1);	 Catch:{ Exception -> 0x0094 }
            goto L_0x0132;
        L_0x0204:
            r0 = com.inmobi.androidsdk.impl.net.RequestResponseManager.this;	 Catch:{ Exception -> 0x00a2 }
            r0.deinit();	 Catch:{ Exception -> 0x00a2 }
            goto L_0x0033;
            */
        }
    }

    static {
        mNetworkQueue = null;
        mDBWriterQueue = new IMAIClickEventList();
        j = null;
        b = new Handler();
        c = null;
        l = null;
    }

    public RequestResponseManager() {
        this.h = new AtomicBoolean();
        this.k = null;
        this.m = 8;
        this.n = 16;
        this.e = AdTrackerConstants.BLANK;
        this.f = AdTrackerConstants.BLANK;
        this.g = AdTrackerConstants.BLANK;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.inmobi.androidsdk.impl.net.Response a(com.inmobi.androidsdk.impl.UserInfo r10) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.androidsdk.impl.net.RequestResponseManager.a(com.inmobi.androidsdk.impl.UserInfo):com.inmobi.androidsdk.impl.net.Response");
        /*
        r9 = this;
        r2 = 0;
        r8 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r7 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r0 = "[InMobi]-[Network]-4.4.1";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r3 = "Http Status Code: ";
        r1 = r1.append(r3);
        r3 = r9.i;
        r3 = r3.getResponseCode();
        r1 = r1.append(r3);
        r1 = r1.toString();
        com.inmobi.commons.internal.Log.debug(r0, r1);
        r0 = r9.i;
        r0 = r0.getResponseCode();
        r1 = r9.i;
        r3 = "im-id";
        r3 = r1.getHeaderField(r3);
        r1 = "[InMobi]-[Network]-4.4.1";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "Im Id: ";
        r4 = r4.append(r5);
        r4 = r4.append(r3);
        r4 = r4.toString();
        com.inmobi.commons.internal.Log.debug(r1, r4);
        r1 = r9.i;
        r4 = "im-ec";
        r1 = r1.getHeaderField(r4);
        if (r1 == 0) goto L_0x006b;
    L_0x0053:
        r4 = "[InMobi]-[Network]-4.4.1";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Sandbox error Id: ";
        r5 = r5.append(r6);
        r1 = r5.append(r1);
        r1 = r1.toString();
        com.inmobi.commons.internal.Log.debug(r4, r1);
    L_0x006b:
        if (r0 != r7) goto L_0x0109;
    L_0x006d:
        r1 = new java.io.BufferedReader;	 Catch:{ all -> 0x011e }
        r0 = new java.io.InputStreamReader;	 Catch:{ all -> 0x011e }
        r4 = r9.i;	 Catch:{ all -> 0x011e }
        r4 = r4.getInputStream();	 Catch:{ all -> 0x011e }
        r5 = "UTF-8";
        r0.<init>(r4, r5);	 Catch:{ all -> 0x011e }
        r1.<init>(r0);	 Catch:{ all -> 0x011e }
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0094 }
        r0.<init>();	 Catch:{ all -> 0x0094 }
    L_0x0084:
        r4 = r1.readLine();	 Catch:{ all -> 0x0094 }
        if (r4 == 0) goto L_0x009e;
    L_0x008a:
        r4 = r0.append(r4);	 Catch:{ all -> 0x0094 }
        r5 = "\n";
        r4.append(r5);	 Catch:{ all -> 0x0094 }
        goto L_0x0084;
    L_0x0094:
        r0 = move-exception;
    L_0x0095:
        r2 = r9.i;
        r2.disconnect();
        r9.a(r1);
        throw r0;
    L_0x009e:
        r0 = r0.toString();	 Catch:{ all -> 0x0094 }
        r4 = "[InMobi]-[Network]-4.4.1";
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0094 }
        r5.<init>();	 Catch:{ all -> 0x0094 }
        r6 = "Ad Response: ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x0094 }
        r5 = r5.append(r0);	 Catch:{ all -> 0x0094 }
        r5 = r5.toString();	 Catch:{ all -> 0x0094 }
        com.inmobi.commons.internal.Log.debug(r4, r5);	 Catch:{ all -> 0x0094 }
        r0 = r0.getBytes();	 Catch:{ Exception -> 0x00f9 }
        r4 = 0;
        r0 = com.inmobi.commons.internal.Base64.decode(r0, r4);	 Catch:{ Exception -> 0x00f9 }
        r4 = r9.o;	 Catch:{ Exception -> 0x00f9 }
        r5 = r9.p;	 Catch:{ Exception -> 0x00f9 }
        r4 = com.inmobi.commons.internal.InternalSDKUtil.DeAe(r0, r4, r5);	 Catch:{ Exception -> 0x00f9 }
        r0 = new java.lang.String;	 Catch:{ Exception -> 0x00f9 }
        r0.<init>(r4);	 Catch:{ Exception -> 0x00f9 }
        r2 = r0;
    L_0x00d1:
        r0 = "[InMobi]-[Network]-4.4.1";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0094 }
        r4.<init>();	 Catch:{ all -> 0x0094 }
        r5 = "Decrypted Ad Response: ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x0094 }
        r4 = r4.append(r2);	 Catch:{ all -> 0x0094 }
        r4 = r4.toString();	 Catch:{ all -> 0x0094 }
        com.inmobi.commons.internal.Log.internal(r0, r4);	 Catch:{ all -> 0x0094 }
        if (r2 == 0) goto L_0x00fe;
    L_0x00eb:
        r0 = new com.inmobi.androidsdk.impl.net.Response;	 Catch:{ all -> 0x0094 }
        r0.<init>(r3, r2);	 Catch:{ all -> 0x0094 }
        r2 = r9.i;
        r2.disconnect();
        r9.a(r1);
        return r0;
    L_0x00f9:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ all -> 0x0094 }
        goto L_0x00d1;
    L_0x00fe:
        r0 = new com.inmobi.androidsdk.impl.AdException;	 Catch:{ all -> 0x0094 }
        r2 = "Some error in response.";
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r5 = -1;
        r0.<init>(r2, r4, r3, r5);	 Catch:{ all -> 0x0094 }
        throw r0;	 Catch:{ all -> 0x0094 }
    L_0x0109:
        r1 = 204; // 0xcc float:2.86E-43 double:1.01E-321;
        if (r0 != r1) goto L_0x0122;
    L_0x010d:
        r1 = "[InMobi]-[Network]-4.4.1";
        r4 = "Server returned No fill";
        com.inmobi.commons.internal.Log.debug(r1, r4);	 Catch:{ all -> 0x011e }
        r1 = new com.inmobi.androidsdk.impl.AdException;	 Catch:{ all -> 0x011e }
        r4 = "Server did not return 200.";
        r5 = 100;
        r1.<init>(r4, r5, r3, r0);	 Catch:{ all -> 0x011e }
        throw r1;	 Catch:{ all -> 0x011e }
    L_0x011e:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0095;
    L_0x0122:
        if (r0 != r8) goto L_0x0135;
    L_0x0124:
        r1 = "[InMobi]-[Network]-4.4.1";
        r4 = "Invalid App Id.Please check the app Id in the adrequest is valid and in active state";
        com.inmobi.commons.internal.Log.debug(r1, r4);	 Catch:{ all -> 0x011e }
        r1 = new com.inmobi.androidsdk.impl.AdException;	 Catch:{ all -> 0x011e }
        r4 = "Server did not return 200.";
        r5 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        r1.<init>(r4, r5, r3, r0);	 Catch:{ all -> 0x011e }
        throw r1;	 Catch:{ all -> 0x011e }
    L_0x0135:
        r1 = "[InMobi]-[Network]-4.4.1";
        r4 = "Server Error";
        com.inmobi.commons.internal.Log.debug(r1, r4);	 Catch:{ all -> 0x011e }
        r1 = new com.inmobi.androidsdk.impl.AdException;	 Catch:{ all -> 0x011e }
        r4 = "Server did not return 200.";
        r5 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r1.<init>(r4, r5, r3, r0);	 Catch:{ all -> 0x011e }
        throw r1;	 Catch:{ all -> 0x011e }
        */
    }

    private String a(String str, HttpRequestCallback httpRequestCallback) {
        b();
        this.o = InternalSDKUtil.keag();
        this.e = PkInitilaizer.getConfigParams().getExponent();
        this.f = PkInitilaizer.getConfigParams().getModulus();
        this.g = PkInitilaizer.getConfigParams().getVersion();
        if (this.e.equals(AdTrackerConstants.BLANK) || this.f.equals(AdTrackerConstants.BLANK) || this.g.equals(AdTrackerConstants.BLANK)) {
            Log.debug(ConfigConstants.LOGGING_TAG, "Exception retreiving Ad due to key problem");
            return null;
        } else {
            String SeMeGe = InternalSDKUtil.SeMeGe(str, this.o, this.p, this.d, this.f, this.e);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("sm=");
            stringBuilder.append(SeMeGe);
            stringBuilder.append("&sn=");
            stringBuilder.append(this.g);
            SeMeGe = stringBuilder.toString();
            Log.debug(ConfigConstants.LOGGING_TAG, SeMeGe);
            return SeMeGe;
        }
    }

    private HttpURLConnection a(String str, UserInfo userInfo) {
        this.i = (HttpURLConnection) new URL(str).openConnection();
        InternalSDKUtil.addCommonPropertiesToConnection(this.i);
        a(this.i, userInfo);
        return this.i;
    }

    private void a(int i, Object obj, HttpRequestCallback httpRequestCallback) {
        if (!this.h.get() && httpRequestCallback != null) {
            httpRequestCallback.notifyResult(i, obj);
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.debug(ConfigConstants.LOGGING_TAG, "Exception closing resource: " + closeable, e);
            }
        }
    }

    private void a(String str) {
        this.i.setRequestProperty("Content-Length", Integer.toString(str.length()));
        try {
            Closeable bufferedWriter = new BufferedWriter(new OutputStreamWriter(this.i.getOutputStream()));
            try {
                bufferedWriter.write(str);
                a(bufferedWriter);
            } catch (Throwable th) {
                th = th;
                a(bufferedWriter);
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            bufferedWriter = null;
            a(bufferedWriter);
            throw th3;
        }
    }

    private static void a(HttpURLConnection httpURLConnection, UserInfo userInfo) {
        int fetchTimeOut = Initializer.getConfigParams().getFetchTimeOut();
        httpURLConnection.setConnectTimeout(fetchTimeOut);
        httpURLConnection.setReadTimeout(fetchTimeOut);
        httpURLConnection.setRequestProperty("user-agent", userInfo.getPhoneDefaultUserAgent());
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("content-type", "application/x-www-form-urlencoded");
    }

    private void b() {
        try {
            this.d = new byte[8];
            SecureRandom secureRandom = new SecureRandom();
            secureRandom.nextBytes(this.d);
            this.p = new byte[16];
            secureRandom.nextBytes(this.p);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void asyncRequestAd(UserInfo userInfo, ActionType actionType, String str, HttpRequestCallback httpRequestCallback) {
        new b(userInfo, str, actionType, httpRequestCallback).start();
    }

    public void asyncRequestSecuredAd(UserInfo userInfo, ActionType actionType, String str, HttpRequestCallback httpRequestCallback) {
        new c(userInfo, str, actionType, httpRequestCallback).start();
    }

    public void deinit() {
        try {
            if (j != null) {
                j.set(false);
            }
            if (mDBWriterQueue != null) {
                mDBWriterQueue.saveClickEvents();
                mDBWriterQueue.clear();
            }
            isSynced.set(false);
            if (mNetworkQueue != null) {
                mNetworkQueue.clear();
            }
            mNetworkQueue = null;
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Request Response Manager deinit failed", e);
        }
    }

    public void doCancel() {
        this.h.set(true);
        if (this.i != null) {
            new a().start();
        }
    }

    public void init() {
        try {
            if (mNetworkQueue == null) {
                mNetworkQueue = IMAIClickEventList.getLoggedClickEvents();
            }
            if (j == null) {
                j = new AtomicBoolean(false);
            }
            l = new AtomicBoolean(true);
            isSynced = new AtomicBoolean(false);
            c = new AtomicBoolean(false);
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Request Response Manager init failed", e);
        }
    }

    public void processClick(Context context, HttpRequestCallback httpRequestCallback) {
        try {
            if (j.compareAndSet(false, true)) {
                a = new Thread(new d(context, httpRequestCallback));
                a.setPriority(1);
                a.start();
            }
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Exception ping ", e);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean processClickHttpClient(java.lang.String r8, boolean r9) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.androidsdk.impl.net.RequestResponseManager.processClickHttpClient(java.lang.String, boolean):boolean");
        /*
        r7 = this;
        r3 = 1;
        r2 = 0;
        r1 = 0;
        r0 = "[InMobi]-[Network]-4.4.1";
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r4.<init>();	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r5 = "Processing click in http client ";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r4 = r4.append(r8);	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r4 = r4.toString();	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        com.inmobi.commons.internal.Log.internal(r0, r4);	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r0 = com.inmobi.androidsdk.bootstrapper.Initializer.getConfigParams();	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r0 = r0.getImai();	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r4 = r0.getPingTimeOut();	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r0 = new java.net.URL;	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r0.<init>(r8);	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r0 = r0.openConnection();	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Exception -> 0x00aa, all -> 0x009b }
        r0.setInstanceFollowRedirects(r9);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        com.inmobi.commons.internal.InternalSDKUtil.addCommonPropertiesToConnection(r0);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r0.setConnectTimeout(r4);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r0.setReadTimeout(r4);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r1 = 0;
        r0.setUseCaches(r1);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r1 = "user-agent";
        r4 = com.inmobi.commons.internal.InternalSDKUtil.getSavedUserAgent();	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r0.setRequestProperty(r1, r4);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r1 = "GET";
        r0.setRequestMethod(r1);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r1 = com.inmobi.androidsdk.impl.SDKUtil.getQAMode();	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        if (r1 == 0) goto L_0x0064;
    L_0x0056:
        r1 = "mk-carrier";
        r4 = "117.97.87.6";
        r0.setRequestProperty(r1, r4);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r1 = "x-real-ip";
        r4 = "117.97.87.6";
        r0.setRequestProperty(r1, r4);	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
    L_0x0064:
        r1 = r0.getResponseCode();	 Catch:{ Exception -> 0x00b0, all -> 0x00a2 }
        r4 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r1 >= r4) goto L_0x00b7;
    L_0x006c:
        r1 = r3;
    L_0x006d:
        if (r3 != r1) goto L_0x007c;
    L_0x006f:
        r2 = l;	 Catch:{ Exception -> 0x0083, all -> 0x00a2 }
        r3 = 1;
        r2.set(r3);	 Catch:{ Exception -> 0x0083, all -> 0x00a2 }
    L_0x0075:
        if (r0 == 0) goto L_0x00b5;
    L_0x0077:
        r0.disconnect();
        r0 = r1;
    L_0x007b:
        return r0;
    L_0x007c:
        r2 = l;	 Catch:{ Exception -> 0x0083, all -> 0x00a2 }
        r3 = 0;
        r2.set(r3);	 Catch:{ Exception -> 0x0083, all -> 0x00a2 }
        goto L_0x0075;
    L_0x0083:
        r2 = move-exception;
        r6 = r2;
        r2 = r0;
        r0 = r1;
        r1 = r6;
    L_0x0088:
        r3 = l;	 Catch:{ all -> 0x00a7 }
        r4 = 0;
        r3.set(r4);	 Catch:{ all -> 0x00a7 }
        r3 = "[InMobi]-[Network]-4.4.1";
        r4 = "Click in background exception";
        com.inmobi.commons.internal.Log.internal(r3, r4, r1);	 Catch:{ all -> 0x00a7 }
        if (r2 == 0) goto L_0x007b;
    L_0x0097:
        r2.disconnect();
        goto L_0x007b;
    L_0x009b:
        r0 = move-exception;
    L_0x009c:
        if (r1 == 0) goto L_0x00a1;
    L_0x009e:
        r1.disconnect();
    L_0x00a1:
        throw r0;
    L_0x00a2:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x009c;
    L_0x00a7:
        r0 = move-exception;
        r1 = r2;
        goto L_0x009c;
    L_0x00aa:
        r0 = move-exception;
        r6 = r0;
        r0 = r2;
        r2 = r1;
        r1 = r6;
        goto L_0x0088;
    L_0x00b0:
        r1 = move-exception;
        r6 = r0;
        r0 = r2;
        r2 = r6;
        goto L_0x0088;
    L_0x00b5:
        r0 = r1;
        goto L_0x007b;
    L_0x00b7:
        r1 = r2;
        goto L_0x006d;
        */
    }

    public boolean processClickUrlInWebview(String str) {
        try {
            Log.internal(ConfigConstants.LOGGING_TAG, "Processing click in webview " + str);
            this.k = new WebviewLoader(InternalSDKUtil.getContext());
            int pingTimeOut = Initializer.getConfigParams().getImai().getPingTimeOut();
            HashMap hashMap = null;
            if (SDKUtil.getQAMode()) {
                hashMap = new HashMap();
                hashMap.put("mk-carrier", Constants.QA_MODE_IP);
                hashMap.put("x-real-ip", Constants.QA_MODE_IP);
            }
            this.k.loadInWebview(str, hashMap);
            synchronized (a) {
                try {
                    a.wait((long) pingTimeOut);
                } catch (InterruptedException e) {
                    Log.internal(ConfigConstants.LOGGING_TAG, "Network thread wait failure", e);
                }
            }
            if (true == c.get()) {
                l.set(true);
            } else {
                l.set(false);
                WebviewLoader.b.set(false);
            }
            this.k.deinit(pingTimeOut);
            return c.get();
        } catch (Exception e2) {
            Log.internal(ConfigConstants.LOGGING_TAG, "ping in webview exception", e2);
            return c.get();
        }
    }
}