package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

class FieldDetail
{
  private final Field field;
  private final Annotation[] list;
  private final String name;
  
  public FieldDetail(Field paramField)
  {
    list = paramField.getDeclaredAnnotations();
    name = paramField.getName();
    field = paramField;
  }
  
  public Annotation[] getAnnotations()
  {
    return list;
  }
  
  public Field getField()
  {
    return field;
  }
  
  public String getName()
  {
    return name;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.FieldDetail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */