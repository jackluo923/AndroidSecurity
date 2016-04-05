package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

public class MetricEndPoint
{
  public static void sendData(String paramString1, String paramString2)
  {
    paramString1 = (HttpURLConnection)new URL(paramString1).openConnection();
    InternalSDKUtil.addCommonPropertiesToConnection(paramString1);
    paramString1.setDoOutput(true);
    paramString1.setDoInput(false);
    OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(paramString1.getOutputStream());
    localOutputStreamWriter.write(paramString2);
    localOutputStreamWriter.flush();
    localOutputStreamWriter.close();
    paramString1.getResponseCode();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.metric.MetricEndPoint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */