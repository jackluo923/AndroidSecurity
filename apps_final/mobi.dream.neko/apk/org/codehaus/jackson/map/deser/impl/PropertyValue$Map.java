package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import java.util.Map;
import org.codehaus.jackson.JsonProcessingException;

final class PropertyValue$Map
  extends PropertyValue
{
  final Object _key;
  
  public PropertyValue$Map(PropertyValue paramPropertyValue, Object paramObject1, Object paramObject2)
  {
    super(paramPropertyValue, paramObject1);
    _key = paramObject2;
  }
  
  public void assign(Object paramObject)
    throws IOException, JsonProcessingException
  {
    ((Map)paramObject).put(_key, value);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValue.Map
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */