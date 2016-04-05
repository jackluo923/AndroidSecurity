package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

public final class AnnotatedField
  extends AnnotatedMember
{
  protected final Field _field;
  
  public AnnotatedField(Field paramField, AnnotationMap paramAnnotationMap)
  {
    super(paramAnnotationMap);
    _field = paramField;
  }
  
  public void addOrOverride(Annotation paramAnnotation)
  {
    _annotations.add(paramAnnotation);
  }
  
  public Field getAnnotated()
  {
    return _field;
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _annotations.get(paramClass);
  }
  
  public int getAnnotationCount()
  {
    return _annotations.size();
  }
  
  public Class<?> getDeclaringClass()
  {
    return _field.getDeclaringClass();
  }
  
  public String getFullName()
  {
    return getDeclaringClass().getName() + "#" + getName();
  }
  
  public Type getGenericType()
  {
    return _field.getGenericType();
  }
  
  public Member getMember()
  {
    return _field;
  }
  
  public int getModifiers()
  {
    return _field.getModifiers();
  }
  
  public String getName()
  {
    return _field.getName();
  }
  
  public Class<?> getRawType()
  {
    return _field.getType();
  }
  
  public void setValue(Object paramObject1, Object paramObject2)
    throws IllegalArgumentException
  {
    try
    {
      _field.set(paramObject1, paramObject2);
      return;
    }
    catch (IllegalAccessException paramObject1)
    {
      throw new IllegalArgumentException("Failed to setValue() for field " + getFullName() + ": " + ((IllegalAccessException)paramObject1).getMessage(), (Throwable)paramObject1);
    }
  }
  
  public String toString()
  {
    return "[field " + getName() + ", annotations: " + _annotations + "]";
  }
  
  public AnnotatedField withAnnotations(AnnotationMap paramAnnotationMap)
  {
    return new AnnotatedField(_field, paramAnnotationMap);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */