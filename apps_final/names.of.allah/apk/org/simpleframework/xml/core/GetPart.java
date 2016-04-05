package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class GetPart
  implements MethodPart
{
  private final Cache<Annotation> cache = new ConcurrentCache();
  private final Annotation label;
  private final Annotation[] list;
  private final Method method;
  private final String name;
  private final MethodType type;
  
  public GetPart(MethodName paramMethodName, Annotation paramAnnotation, Annotation[] paramArrayOfAnnotation)
  {
    method = paramMethodName.getMethod();
    name = paramMethodName.getName();
    type = paramMethodName.getType();
    label = paramAnnotation;
    list = paramArrayOfAnnotation;
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    if (cache.isEmpty())
    {
      Annotation[] arrayOfAnnotation = list;
      int j = arrayOfAnnotation.length;
      int i = 0;
      while (i < j)
      {
        Annotation localAnnotation = arrayOfAnnotation[i];
        Class localClass = localAnnotation.annotationType();
        cache.cache(localClass, localAnnotation);
        i += 1;
      }
    }
    return (Annotation)cache.fetch(paramClass);
  }
  
  public Class getDeclaringClass()
  {
    return method.getDeclaringClass();
  }
  
  public Class getDependent()
  {
    return Reflector.getReturnDependent(method);
  }
  
  public Class[] getDependents()
  {
    return Reflector.getReturnDependents(method);
  }
  
  public Method getMethod()
  {
    if (!method.isAccessible()) {
      method.setAccessible(true);
    }
    return method;
  }
  
  public MethodType getMethodType()
  {
    return type;
  }
  
  public String getName()
  {
    return name;
  }
  
  public Class getType()
  {
    return method.getReturnType();
  }
  
  public String toString()
  {
    return method.toGenericString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.GetPart
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */