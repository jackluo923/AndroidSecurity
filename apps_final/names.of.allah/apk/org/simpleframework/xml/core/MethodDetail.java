package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

class MethodDetail
{
  private final Annotation[] list;
  private final Method method;
  private final String name;
  
  public MethodDetail(Method paramMethod)
  {
    list = paramMethod.getDeclaredAnnotations();
    name = paramMethod.getName();
    method = paramMethod;
  }
  
  public Annotation[] getAnnotations()
  {
    return list;
  }
  
  public Method getMethod()
  {
    return method;
  }
  
  public String getName()
  {
    return name;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MethodDetail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */