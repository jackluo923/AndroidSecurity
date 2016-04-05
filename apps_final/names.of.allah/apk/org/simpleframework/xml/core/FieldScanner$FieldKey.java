package org.simpleframework.xml.core;

import java.lang.reflect.Field;

class FieldScanner$FieldKey
{
  private final String name;
  private final Class type;
  
  public FieldScanner$FieldKey(Field paramField)
  {
    type = paramField.getDeclaringClass();
    name = paramField.getName();
  }
  
  private boolean equals(FieldKey paramFieldKey)
  {
    if (type != type) {
      return false;
    }
    return name.equals(name);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof FieldKey)) {
      return equals((FieldKey)paramObject);
    }
    return false;
  }
  
  public int hashCode()
  {
    return name.hashCode();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.FieldScanner.FieldKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */