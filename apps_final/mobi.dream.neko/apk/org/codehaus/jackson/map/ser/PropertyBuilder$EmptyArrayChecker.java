package org.codehaus.jackson.map.ser;

import java.lang.reflect.Array;

public class PropertyBuilder$EmptyArrayChecker
{
  public boolean equals(Object paramObject)
  {
    return (paramObject == null) || (Array.getLength(paramObject) == 0);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.PropertyBuilder.EmptyArrayChecker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */