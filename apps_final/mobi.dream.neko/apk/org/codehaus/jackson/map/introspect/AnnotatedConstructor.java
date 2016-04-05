package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.type.JavaType;

public final class AnnotatedConstructor
  extends AnnotatedWithParams
{
  protected final Constructor<?> _constructor;
  
  public AnnotatedConstructor(Constructor<?> paramConstructor, AnnotationMap paramAnnotationMap, AnnotationMap[] paramArrayOfAnnotationMap)
  {
    super(paramAnnotationMap, paramArrayOfAnnotationMap);
    if (paramConstructor == null) {
      throw new IllegalArgumentException("Null constructor not allowed");
    }
    _constructor = paramConstructor;
  }
  
  public final Object call()
    throws Exception
  {
    return _constructor.newInstance(new Object[0]);
  }
  
  public final Object call(Object[] paramArrayOfObject)
    throws Exception
  {
    return _constructor.newInstance(paramArrayOfObject);
  }
  
  public final Object call1(Object paramObject)
    throws Exception
  {
    return _constructor.newInstance(new Object[] { paramObject });
  }
  
  public Constructor<?> getAnnotated()
  {
    return _constructor;
  }
  
  public Class<?> getDeclaringClass()
  {
    return _constructor.getDeclaringClass();
  }
  
  public Type getGenericType()
  {
    return getRawType();
  }
  
  public Member getMember()
  {
    return _constructor;
  }
  
  public int getModifiers()
  {
    return _constructor.getModifiers();
  }
  
  public String getName()
  {
    return _constructor.getName();
  }
  
  public Class<?> getParameterClass(int paramInt)
  {
    Class[] arrayOfClass = _constructor.getParameterTypes();
    if (paramInt >= arrayOfClass.length) {
      return null;
    }
    return arrayOfClass[paramInt];
  }
  
  public int getParameterCount()
  {
    return _constructor.getParameterTypes().length;
  }
  
  public Type getParameterType(int paramInt)
  {
    Type[] arrayOfType = _constructor.getGenericParameterTypes();
    if (paramInt >= arrayOfType.length) {
      return null;
    }
    return arrayOfType[paramInt];
  }
  
  public Class<?> getRawType()
  {
    return _constructor.getDeclaringClass();
  }
  
  public JavaType getType(TypeBindings paramTypeBindings)
  {
    return getType(paramTypeBindings, _constructor.getTypeParameters());
  }
  
  public void setValue(Object paramObject1, Object paramObject2)
    throws UnsupportedOperationException
  {
    throw new UnsupportedOperationException("Cannot call setValue() on constructor of " + getDeclaringClass().getName());
  }
  
  public String toString()
  {
    return "[constructor for " + getName() + ", annotations: " + _annotations + "]";
  }
  
  public AnnotatedConstructor withAnnotations(AnnotationMap paramAnnotationMap)
  {
    return new AnnotatedConstructor(_constructor, paramAnnotationMap, _paramAnnotations);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedConstructor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */