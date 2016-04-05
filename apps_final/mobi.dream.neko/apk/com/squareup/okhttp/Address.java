package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.net.Proxy;
import java.net.UnknownHostException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class Address
{
  final HostnameVerifier hostnameVerifier;
  final Proxy proxy;
  final SSLSocketFactory sslSocketFactory;
  final String uriHost;
  final int uriPort;
  
  public Address(String paramString, int paramInt, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, Proxy paramProxy)
    throws UnknownHostException
  {
    if (paramString == null) {
      throw new NullPointerException("uriHost == null");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("uriPort <= 0: " + paramInt);
    }
    proxy = paramProxy;
    uriHost = paramString;
    uriPort = paramInt;
    sslSocketFactory = paramSSLSocketFactory;
    hostnameVerifier = paramHostnameVerifier;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Address))
    {
      paramObject = (Address)paramObject;
      bool1 = bool2;
      if (Util.equal(proxy, proxy))
      {
        bool1 = bool2;
        if (uriHost.equals(uriHost))
        {
          bool1 = bool2;
          if (uriPort == uriPort)
          {
            bool1 = bool2;
            if (Util.equal(sslSocketFactory, sslSocketFactory))
            {
              bool1 = bool2;
              if (Util.equal(hostnameVerifier, hostnameVerifier)) {
                bool1 = true;
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public HostnameVerifier getHostnameVerifier()
  {
    return hostnameVerifier;
  }
  
  public Proxy getProxy()
  {
    return proxy;
  }
  
  public SSLSocketFactory getSslSocketFactory()
  {
    return sslSocketFactory;
  }
  
  public String getUriHost()
  {
    return uriHost;
  }
  
  public int getUriPort()
  {
    return uriPort;
  }
  
  public int hashCode()
  {
    int k = 0;
    int m = uriHost.hashCode();
    int n = uriPort;
    int i;
    if (sslSocketFactory != null)
    {
      i = sslSocketFactory.hashCode();
      if (hostnameVerifier == null) {
        break label95;
      }
    }
    label95:
    for (int j = hostnameVerifier.hashCode();; j = 0)
    {
      if (proxy != null) {
        k = proxy.hashCode();
      }
      return ((((m + 527) * 31 + n) * 31 + i) * 31 + j) * 31 + k;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.Address
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */