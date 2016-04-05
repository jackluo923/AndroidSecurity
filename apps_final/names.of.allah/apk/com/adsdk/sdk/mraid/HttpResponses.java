package com.adsdk.sdk.mraid;

import java.text.NumberFormat;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

public class HttpResponses
{
  public static boolean extractBooleanHeader(HttpResponse paramHttpResponse, ResponseHeader paramResponseHeader, boolean paramBoolean)
  {
    paramHttpResponse = extractHeader(paramHttpResponse, paramResponseHeader);
    if (paramHttpResponse == null) {
      return paramBoolean;
    }
    return paramHttpResponse.equals("1");
  }
  
  public static String extractHeader(HttpResponse paramHttpResponse, ResponseHeader paramResponseHeader)
  {
    paramHttpResponse = paramHttpResponse.getFirstHeader(paramResponseHeader.getKey());
    if (paramHttpResponse != null) {
      return paramHttpResponse.getValue();
    }
    return null;
  }
  
  public static int extractIntHeader(HttpResponse paramHttpResponse, ResponseHeader paramResponseHeader, int paramInt)
  {
    paramHttpResponse = extractIntegerHeader(paramHttpResponse, paramResponseHeader);
    if (paramHttpResponse == null) {
      return paramInt;
    }
    return paramHttpResponse.intValue();
  }
  
  public static Integer extractIntegerHeader(HttpResponse paramHttpResponse, ResponseHeader paramResponseHeader)
  {
    NumberFormat localNumberFormat = NumberFormat.getInstance(Locale.US);
    localNumberFormat.setParseIntegerOnly(true);
    paramHttpResponse = extractHeader(paramHttpResponse, paramResponseHeader);
    try
    {
      int i = localNumberFormat.parse(paramHttpResponse.trim()).intValue();
      return Integer.valueOf(i);
    }
    catch (Exception paramHttpResponse) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.HttpResponses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */