package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public final class AnnotatedParameter
  extends AnnotatedMember
{
  protected final int _index;
  protected final AnnotatedWithParams _owner;
  protected final Type _type;
  
  public AnnotatedParameter(AnnotatedWithParams paramAnnotatedWithParams, Type paramType, AnnotationMap paramAnnotationMap, int paramInt)
  {
    super(paramAnnotationMap);
    _owner = paramAnnotatedWithParams;
    _type = paramType;
    _index = paramInt;
  }
  
  public void addOrOverride(Annotation paramAnnotation)
  {
    _annotations.add(paramAnnotation);
  }
  
  public AnnotatedElement getAnnotated()
  {
    return null;
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _annotations.get(paramClass);
  }
  
  public Class<?> getDeclaringClass()
  {
    return _owner.getDeclaringClass();
  }
  
  public Type getGenericType()
  {
    return _type;
  }
  
  public int getIndex()
  {
    return _index;
  }
  
  public Member getMember()
  {
    return _owner.getMember();
  }
  
  public int getModifiers()
  {
    return _owner.getModifiers();
  }
  
  public String getName()
  {
    return "";
  }
  
  public AnnotatedWithParams getOwner()
  {
    return _owner;
  }
  
  public Type getParameterType()
  {
    return _type;
  }
  
  public Class<?> getRawType()
  {
    if ((_type instanceof Class)) {
      return (Class)_type;
    }
    return TypeFactory.defaultInstance().constructType(_type).getRawClass();
  }
  
  public void setValue(Object paramObject1, Object paramObject2)
    throws UnsupportedOperationException
  {
    throw new UnsupportedOperationException("Cannot call setValue() on constructor parameter of " + getDeclaringClass().getName());
  }
  
  public String toString()
  {
    return "[parameter #" + getIndex() + ", annotations: " + _annotations + "]";
  }
  
  public AnnotatedParameter withAnnotations(AnnotationMap paramAnnotationMap)
  {
    if (paramAnnotationMap == _annotations) {
      return this;
    }
    return _owner.replaceParameterAnnotations(_index, paramAnnotationMap);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */