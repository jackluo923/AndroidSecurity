package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;

class Platform$JettyNpnProvider
  implements InvocationHandler
{
  private final List<String> protocols;
  private String selected;
  private boolean unsupported;
  
  public Platform$JettyNpnProvider(List<String> paramList)
  {
    protocols = paramList;
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    throws Throwable
  {
    String str = paramMethod.getName();
    Class localClass = paramMethod.getReturnType();
    paramObject = paramArrayOfObject;
    if (paramArrayOfObject == null) {
      paramObject = Util.EMPTY_STRING_ARRAY;
    }
    if ((str.equals("supports")) && (Boolean.TYPE == localClass)) {
      return Boolean.valueOf(true);
    }
    if ((str.equals("unsupported")) && (Void.TYPE == localClass))
    {
      unsupported = true;
      return null;
    }
    if ((str.equals("protocols")) && (paramObject.length == 0)) {
      return protocols;
    }
    if ((str.equals("selectProtocol")) && (String.class == localClass) && (paramObject.length == 1) && ((paramObject[0] == null) || ((paramObject[0] instanceof List))))
    {
      paramObject = (List)paramObject[0];
      selected = ((String)protocols.get(0));
      return selected;
    }
    if ((str.equals("protocolSelected")) && (paramObject.length == 1))
    {
      selected = ((String)paramObject[0]);
      return null;
    }
    return paramMethod.invoke(this, (Object[])paramObject);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.Platform.JettyNpnProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */