package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

final class PropertyValue$Regular
  extends PropertyValue
{
  final SettableBeanProperty _property;
  
  public PropertyValue$Regular(PropertyValue paramPropertyValue, Object paramObject, SettableBeanProperty paramSettableBeanProperty)
  {
    super(paramPropertyValue, paramObject);
    _property = paramSettableBeanProperty;
  }
  
  public void assign(Object paramObject)
    throws IOException, JsonProcessingException
  {
    _property.set(paramObject, value);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValue.Regular
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */