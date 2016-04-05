package org.codehaus.jackson.map.introspect;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.type.JavaType;

public final class AnnotatedMethod
  extends AnnotatedWithParams
{
  protected final Method _method;
  protected Class<?>[] _paramTypes;
  
  public AnnotatedMethod(Method paramMethod, AnnotationMap paramAnnotationMap, AnnotationMap[] paramArrayOfAnnotationMap)
  {
    super(paramAnnotationMap, paramArrayOfAnnotationMap);
    _method = paramMethod;
  }
  
  public final Object call()
    throws Exception
  {
    return _method.invoke(null, new Object[0]);
  }
  
  public final Object call(Object[] paramArrayOfObject)
    throws Exception
  {
    return _method.invoke(null, paramArrayOfObject);
  }
  
  public final Object call1(Object paramObject)
    throws Exception
  {
    return _method.invoke(null, new Object[] { paramObject });
  }
  
  public Method getAnnotated()
  {
    return _method;
  }
  
  public Class<?> getDeclaringClass()
  {
    return _method.getDeclaringClass();
  }
  
  public String getFullName()
  {
    return getDeclaringClass().getName() + "#" + getName() + "(" + getParameterCount() + " params)";
  }
  
  public Type getGenericType()
  {
    return _method.getGenericReturnType();
  }
  
  public Member getMember()
  {
    return _method;
  }
  
  public int getModifiers()
  {
    return _method.getModifiers();
  }
  
  public String getName()
  {
    return _method.getName();
  }
  
  public Class<?> getParameterClass(int paramInt)
  {
    Class[] arrayOfClass = _method.getParameterTypes();
    if (paramInt >= arrayOfClass.length) {
      return null;
    }
    return arrayOfClass[paramInt];
  }
  
  public Class<?>[] getParameterClasses()
  {
    if (_paramTypes == null) {
      _paramTypes = _method.getParameterTypes();
    }
    return _paramTypes;
  }
  
  public int getParameterCount()
  {
    return getParameterTypes().length;
  }
  
  public Type getParameterType(int paramInt)
  {
    Type[] arrayOfType = _method.getGenericParameterTypes();
    if (paramInt >= arrayOfType.length) {
      return null;
    }
    return arrayOfType[paramInt];
  }
  
  public Type[] getParameterTypes()
  {
    return _method.getGenericParameterTypes();
  }
  
  public Class<?> getRawType()
  {
    return _method.getReturnType();
  }
  
  public JavaType getType(TypeBindings paramTypeBindings)
  {
    return getType(paramTypeBindings, _method.getTypeParameters());
  }
  
  public void setValue(Object paramObject1, Object paramObject2)
    throws IllegalArgumentException
  {
    try
    {
      _method.invoke(paramObject1, new Object[] { paramObject2 });
      return;
    }
    catch (IllegalAccessException paramObject1)
    {
      throw new IllegalArgumentException("Failed to setValue() with method " + getFullName() + ": " + ((IllegalAccessException)paramObject1).getMessage(), (Throwable)paramObject1);
    }
    catch (InvocationTargetException paramObject1)
    {
      throw new IllegalArgumentException("Failed to setValue() with method " + getFullName() + ": " + ((InvocationTargetException)paramObject1).getMessage(), (Throwable)paramObject1);
    }
  }
  
  public String toString()
  {
    return "[method " + getName() + ", annotations: " + _annotations + "]";
  }
  
  public AnnotatedMethod withAnnotations(AnnotationMap paramAnnotationMap)
  {
    return new AnnotatedMethod(_method, paramAnnotationMap, _paramAnnotations);
  }
  
  public AnnotatedMethod withMethod(Method paramMethod)
  {
    return new AnnotatedMethod(paramMethod, _annotations, _paramAnnotations);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedMethod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */