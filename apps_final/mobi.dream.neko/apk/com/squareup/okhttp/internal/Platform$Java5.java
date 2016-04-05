package com.squareup.okhttp.internal;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.net.Socket;

class Platform$Java5
  extends Platform
{
  private final Method getMtu;
  
  private Platform$Java5(Method paramMethod)
  {
    getMtu = paramMethod;
  }
  
  public int getMtu(Socket paramSocket)
    throws IOException
  {
    try
    {
      paramSocket = NetworkInterface.getByInetAddress(paramSocket.getLocalAddress());
      int i = ((Integer)getMtu.invoke(paramSocket, new Object[0])).intValue();
      return i;
    }
    catch (IllegalAccessException paramSocket)
    {
      throw new AssertionError(paramSocket);
    }
    catch (InvocationTargetException paramSocket)
    {
      if ((paramSocket.getCause() instanceof IOException)) {
        throw ((IOException)paramSocket.getCause());
      }
      throw new RuntimeException(paramSocket.getCause());
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Platform.Java5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */