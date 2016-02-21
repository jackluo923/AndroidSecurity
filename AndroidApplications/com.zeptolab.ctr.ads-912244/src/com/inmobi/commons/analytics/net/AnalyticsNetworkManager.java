package com.inmobi.commons.analytics.net;

import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.db.AnalyticsDatabaseManager;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.monetization.internal.Constants;
import com.zeptolab.utils.HTMLEncoder;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public final class AnalyticsNetworkManager {
    public static final int MESSAGE_PING = 1001;
    private static Handler a;
    private static AnalyticsNetworkManager b;
    private static a f;
    private AnalyticsPayloadBuilder c;
    private AnalyticsConnectivityReceiver d;
    private int e;

    class a extends Thread {

        class a implements Callback {
            a() {
            }

            public boolean handleMessage(Message message) {
                Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "NetworkManager->handleMessag: msg:" + message);
                if (message.what == 1001) {
                    if (AnalyticsInitializer.getConfigParams().getAutomaticCapture().getAutoSessionCapture() || AnalyticsEventsWrapper.isEventsUser()) {
                        a.this.b();
                    } else {
                        AnalyticsUtils.setStartHandle(false);
                    }
                }
                return true;
            }
        }

        a() {
        }

        public void run() {
            Looper.prepare();
            a = new Handler(new a());
            Looper.loop();
        }
    }

    static {
        f = new a();
    }

    private AnalyticsNetworkManager() {
        this.e = 0;
        new a().start();
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "NetworkManager-> Constructor ");
    }

    private String a(String str, String str2, boolean z) {
        StringBuilder stringBuilder = new StringBuilder();
        String toString = Integer.toString(new Random().nextInt());
        Map map = null;
        Long lTVId = AnalyticsInitializer.getConfigParams().getLTVId();
        if (str != null) {
            stringBuilder.append("payload=");
            stringBuilder.append(AnalyticsCommon.getURLEncoded(str));
        }
        if (str2 != null) {
            stringBuilder.append("&mk-siteid=");
            stringBuilder.append(str2);
        }
        stringBuilder.append("&c=");
        if (z) {
            stringBuilder.append(1);
        } else {
            stringBuilder.append(0);
        }
        if (lTVId != null) {
            map = new HashMap();
            map.put(UID.KEY_LTVID, lTVId + AdTrackerConstants.BLANK);
        }
        String uidMap = AnalyticsInitializer.getConfigParams().getUID().getUidMap(1, toString, map);
        stringBuilder.append("&u-id-map=");
        stringBuilder.append(AnalyticsCommon.getURLEncoded(uidMap));
        stringBuilder.append("&u-id-key=");
        stringBuilder.append(toString);
        stringBuilder.append("&u-key-ver=");
        stringBuilder.append(UIDHelper.getRSAKeyVersion());
        uidMap = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(Constants.MEDIATION_SDK_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
        stringBuilder.append("&mk-version=");
        stringBuilder.append(uidMap);
        stringBuilder.append("&u-id-adt=");
        if (InternalSDKUtil.isLimitAdTrackingEnabled()) {
            stringBuilder.append(1);
        } else {
            stringBuilder.append(0);
        }
        return stringBuilder.toString();
    }

    private void a(AnalyticsPayload analyticsPayload, String str) {
        boolean z = false;
        try {
            boolean z2;
            int responseCode;
            Closeable bufferedReader;
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Ping URL: " + AnalyticsUtils.getEventUrl());
            String completePayload = analyticsPayload.getCompletePayload();
            int minEventsToCompress = AnalyticsInitializer.getConfigParams().getMinEventsToCompress();
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Post body: " + completePayload);
            if (analyticsPayload.getPayloadSize() < minEventsToCompress || VERSION.SDK_INT < 8) {
                z2 = z;
            } else {
                Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Compressing the payload");
                z2 = true;
                completePayload = AnalyticsUtils.compressPayload(completePayload);
            }
            int maxAppIdLength = AnalyticsInitializer.getConfigParams().getMaxAppIdLength();
            if (str.length() > maxAppIdLength) {
                str = str.substring(0, maxAppIdLength);
            }
            completePayload = a(completePayload, str, z2);
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Post body: " + completePayload);
            AnalyticsCommon analyticsCommon = new AnalyticsCommon();
            HttpURLConnection httpURLConnection = analyticsCommon.setupConnection(AnalyticsUtils.getEventUrl());
            analyticsCommon.postData(httpURLConnection, completePayload);
            try {
                responseCode = httpURLConnection.getResponseCode();
            } catch (IOException e) {
                responseCode = 401;
            }
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Http Status Code: " + responseCode);
            if (responseCode == 200) {
                this.e = 0;
                AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
            } else {
                this.e++;
                if (this.e >= AnalyticsUtils.getMaxRetryBeforeDiscard()) {
                    this.e = 0;
                    AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
                }
            }
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), HTMLEncoder.ENCODE_NAME_DEFAULT));
            } catch (Exception e2) {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream(), HTMLEncoder.ENCODE_NAME_DEFAULT));
                } catch (Exception e3) {
                    bufferedReader = null;
                }
            }
            try {
                StringBuilder stringBuilder = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        stringBuilder.append(readLine).append(com.admarvel.android.ads.Constants.FORMATTER);
                    } else {
                        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Ping Response: " + stringBuilder.toString());
                        httpURLConnection.disconnect();
                        analyticsCommon.closeResource(bufferedReader);
                        return;
                    }
                }
            } catch (Exception e4) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Unable to read from stream");
            }
        } catch (Exception e5) {
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception Pinging", e5);
            this.e++;
            if (this.e >= AnalyticsUtils.getMaxRetryBeforeDiscard()) {
                this.e = z;
                AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
            }
        }
    }

    private void b() {
        boolean z = 1;
        if (!(this.d == null || !this.d.isConnected() || this.c == null)) {
            AnalyticsPayload payloadList = this.c.getPayloadList(AnalyticsDatabaseManager.getInstance().getEvents(), InternalSDKUtil.getContext());
            if (payloadList.getCompletePayload() != null) {
                a(payloadList, SessionInfo.getAppId(InternalSDKUtil.getContext()));
                z = false;
            }
        }
        if (i == 0) {
            a.sendEmptyMessageDelayed(MESSAGE_PING, AnalyticsUtils.getTimeinterval());
        } else {
            AnalyticsUtils.setStartHandle(false);
        }
    }

    public static Handler getHandler() {
        return a;
    }

    public static synchronized AnalyticsNetworkManager startInstance() {
        AnalyticsNetworkManager analyticsNetworkManager;
        synchronized (AnalyticsNetworkManager.class) {
            if (b == null) {
                b = new AnalyticsNetworkManager();
            }
            if (b.c == null) {
                b.c = new AnalyticsPayloadBuilder();
            }
            if (b.d == null) {
                b.d = new AnalyticsConnectivityReceiver(InternalSDKUtil.getContext(), f);
            }
            analyticsNetworkManager = b;
        }
        return analyticsNetworkManager;
    }
}