package com.appyet.f;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

public final class x
  extends org.apache.http.conn.ssl.SSLSocketFactory
{
  SSLContext a = SSLContext.getInstance("TLS");
  
  public x(KeyStore paramKeyStore)
  {
    super(paramKeyStore);
    paramKeyStore = new y(this);
    a.init(null, new TrustManager[] { paramKeyStore }, null);
  }
  
  public final Socket createSocket()
  {
    return a.getSocketFactory().createSocket();
  }
  
  public final Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return a.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */