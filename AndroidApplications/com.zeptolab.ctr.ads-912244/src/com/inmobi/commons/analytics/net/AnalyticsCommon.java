package com.inmobi.commons.analytics.net;

import android.util.Log;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.zeptolab.utils.HTMLEncoder;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class AnalyticsCommon {

    public static interface HttpRequestCallback {
        public static final int HTTP_FAILURE = 1;
        public static final int HTTP_SUCCESS = 0;

        void notifyResult(int i, Object obj);
    }

    private static void a(HttpURLConnection httpURLConnection) {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        InternalSDKUtil.addCommonPropertiesToConnection(httpURLConnection);
    }

    public static String getURLEncoded(String str) {
        String str2 = AdTrackerConstants.BLANK;
        try {
            return URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (Exception e) {
            return AdTrackerConstants.BLANK;
        }
    }

    public void closeResource(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.d(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception closing resource: " + closeable, e);
            }
        }
    }

    public void postData(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("Content-Length", Integer.toString(str.length()));
        try {
            Closeable bufferedWriter = new BufferedWriter(new OutputStreamWriter(httpURLConnection.getOutputStream()));
            try {
                bufferedWriter.write(str);
                closeResource(bufferedWriter);
            } catch (Throwable th) {
                th = th;
                closeResource(bufferedWriter);
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            bufferedWriter = null;
            closeResource(bufferedWriter);
            throw th3;
        }
    }

    public HttpURLConnection setupConnection(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        a(httpURLConnection);
        return httpURLConnection;
    }
}