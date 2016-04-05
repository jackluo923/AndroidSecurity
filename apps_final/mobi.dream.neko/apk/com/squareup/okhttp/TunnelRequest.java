package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.RawHeaders;

public final class TunnelRequest
{
  final String host;
  final int port;
  final String proxyAuthorization;
  final String userAgent;
  
  public TunnelRequest(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    if (paramString1 == null) {
      throw new NullPointerException("host == null");
    }
    if (paramString2 == null) {
      throw new NullPointerException("userAgent == null");
    }
    host = paramString1;
    port = paramInt;
    userAgent = paramString2;
    proxyAuthorization = paramString3;
  }
  
  RawHeaders getRequestHeaders()
  {
    RawHeaders localRawHeaders = new RawHeaders();
    localRawHeaders.setRequestLine("CONNECT " + host + ":" + port + " HTTP/1.1");
    if (port == Util.getDefaultPort("https")) {}
    for (String str = host;; str = host + ":" + port)
    {
      localRawHeaders.set("Host", str);
      localRawHeaders.set("User-Agent", userAgent);
      if (proxyAuthorization != null) {
        localRawHeaders.set("Proxy-Authorization", proxyAuthorization);
      }
      localRawHeaders.set("Proxy-Connection", "Keep-Alive");
      return localRawHeaders;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.TunnelRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */