package com.appyet.g;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

final class j
  implements HostnameVerifier
{
  j(i parami) {}
  
  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */