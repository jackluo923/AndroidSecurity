package com.squareup.okhttp.internal;

import com.squareup.okhttp.OkHttpClient;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

class Platform$JdkWithJettyNpnPlatform
  extends Platform.Java5
{
  private final Class<?> clientProviderClass;
  private final Method getMethod;
  private final Method putMethod;
  private final Class<?> serverProviderClass;
  
  public Platform$JdkWithJettyNpnPlatform(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
  {
    super(paramMethod1, null);
    putMethod = paramMethod2;
    getMethod = paramMethod3;
    clientProviderClass = paramClass1;
    serverProviderClass = paramClass2;
  }
  
  public byte[] getNpnSelectedProtocol(SSLSocket paramSSLSocket)
  {
    try
    {
      paramSSLSocket = (Platform.JettyNpnProvider)Proxy.getInvocationHandler(getMethod.invoke(null, new Object[] { paramSSLSocket }));
      if ((!Platform.JettyNpnProvider.access$300(paramSSLSocket)) && (Platform.JettyNpnProvider.access$400(paramSSLSocket) == null))
      {
        Logger.getLogger(OkHttpClient.class.getName()).log(Level.INFO, "NPN callback dropped so SPDY is disabled. Is npn-boot on the boot class path?");
        return null;
      }
      if (!Platform.JettyNpnProvider.access$300(paramSSLSocket))
      {
        paramSSLSocket = Platform.JettyNpnProvider.access$400(paramSSLSocket).getBytes("US-ASCII");
        return paramSSLSocket;
      }
    }
    catch (UnsupportedEncodingException paramSSLSocket)
    {
      throw new AssertionError();
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new AssertionError();
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw new AssertionError();
    }
    return null;
  }
  
  public void setNpnProtocols(SSLSocket paramSSLSocket, byte[] paramArrayOfByte)
  {
    try
    {
      Object localObject = new ArrayList();
      int j;
      for (int i = 0; i < paramArrayOfByte.length; i = j + i)
      {
        j = i + 1;
        i = paramArrayOfByte[i];
        ((List)localObject).add(new String(paramArrayOfByte, j, i, "US-ASCII"));
      }
      paramArrayOfByte = Platform.class.getClassLoader();
      Class localClass1 = clientProviderClass;
      Class localClass2 = serverProviderClass;
      localObject = new Platform.JettyNpnProvider((List)localObject);
      paramArrayOfByte = Proxy.newProxyInstance(paramArrayOfByte, new Class[] { localClass1, localClass2 }, (InvocationHandler)localObject);
      putMethod.invoke(null, new Object[] { paramSSLSocket, paramArrayOfByte });
      return;
    }
    catch (UnsupportedEncodingException paramSSLSocket)
    {
      throw new AssertionError(paramSSLSocket);
    }
    catch (InvocationTargetException paramSSLSocket)
    {
      throw new AssertionError(paramSSLSocket);
    }
    catch (IllegalAccessException paramSSLSocket)
    {
      throw new AssertionError(paramSSLSocket);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Platform.JdkWithJettyNpnPlatform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */