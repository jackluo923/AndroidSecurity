package com.millennialmedia.google.gson;

import com.millennialmedia.google.gson.internal..Gson.Preconditions;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

public final class FieldAttributes
{
  private final Field field;
  
  public FieldAttributes(Field paramField)
  {
    .Gson.Preconditions.checkNotNull(paramField);
    field = paramField;
  }
  
  final Object get(Object paramObject)
  {
    return field.get(paramObject);
  }
  
  public final <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    return field.getAnnotation(paramClass);
  }
  
  public final Collection<Annotation> getAnnotations()
  {
    return Arrays.asList(field.getAnnotations());
  }
  
  public final Class<?> getDeclaredClass()
  {
    return field.getType();
  }
  
  public final Type getDeclaredType()
  {
    return field.getGenericType();
  }
  
  public final Class<?> getDeclaringClass()
  {
    return field.getDeclaringClass();
  }
  
  public final String getName()
  {
    return field.getName();
  }
  
  public final boolean hasModifier(int paramInt)
  {
    return (field.getModifiers() & paramInt) != 0;
  }
  
  final boolean isSynthetic()
  {
    return field.isSynthetic();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.FieldAttributes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */