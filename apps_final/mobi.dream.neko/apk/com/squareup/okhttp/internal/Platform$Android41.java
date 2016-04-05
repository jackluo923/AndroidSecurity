package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.net.ssl.SSLSocket;

class Platform$Android41
  extends Platform.Android23
{
  private final Method getNpnSelectedProtocol;
  private final Method setNpnProtocols;
  
  private Platform$Android41(Method paramMethod1, Class<?> paramClass, Method paramMethod2, Method paramMethod3, Method paramMethod4, Method paramMethod5)
  {
    super(paramMethod1, paramClass, paramMethod2, paramMethod3, null);
    setNpnProtocols = paramMethod4;
    getNpnSelectedProtocol = paramMethod5;
  }
  
  public byte[] getNpnSelectedProtocol(SSLSocket paramSSLSocket)
  {
    if (!openSslSocketClass.isInstance(paramSSLSocket)) {
      return null;
    }
    try
    {
      paramSSLSocket = (byte[])getNpnSelectedProtocol.invoke(paramSSLSocket, new Object[0]);
      return paramSSLSocket;
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
  
  public void setNpnProtocols(SSLSocket paramSSLSocket, byte[] paramArrayOfByte)
  {
    if (!openSslSocketClass.isInstance(paramSSLSocket)) {
      return;
    }
    try
    {
      setNpnProtocols.invoke(paramSSLSocket, new Object[] { paramArrayOfByte });
      return;
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw new AssertionError(paramSSLSocket);
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new RuntimeException(paramSSLSocket);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Platform.Android41
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */