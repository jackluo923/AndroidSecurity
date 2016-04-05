package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.net.ssl.SSLSocket;

class Platform$Android23
  extends Platform.Java5
{
  protected final Class<?> openSslSocketClass;
  private final Method setHostname;
  private final Method setUseSessionTickets;
  
  private Platform$Android23(Method paramMethod1, Class<?> paramClass, Method paramMethod2, Method paramMethod3)
  {
    super(paramMethod1, null);
    openSslSocketClass = paramClass;
    setUseSessionTickets = paramMethod2;
    setHostname = paramMethod3;
  }
  
  public void enableTlsExtensions(SSLSocket paramSSLSocket, String paramString)
  {
    super.enableTlsExtensions(paramSSLSocket, paramString);
    if (openSslSocketClass.isInstance(paramSSLSocket)) {}
    try
    {
      setUseSessionTickets.invoke(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
      setHostname.invoke(paramSSLSocket, new Object[] { paramString });
      return;
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new RuntimeException(paramSSLSocket);
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw new AssertionError(paramSSLSocket);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Platform.Android23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */