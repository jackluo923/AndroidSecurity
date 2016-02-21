package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

public class MetricEndPoint {
    public static void sendData(String str, String str2) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        InternalSDKUtil.addCommonPropertiesToConnection(httpURLConnection);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(false);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream());
        outputStreamWriter.write(str2);
        outputStreamWriter.flush();
        outputStreamWriter.close();
        httpURLConnection.getResponseCode();
    }
}