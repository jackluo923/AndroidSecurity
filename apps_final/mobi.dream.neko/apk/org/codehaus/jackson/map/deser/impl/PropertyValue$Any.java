package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.deser.SettableAnyProperty;

final class PropertyValue$Any
  extends PropertyValue
{
  final SettableAnyProperty _property;
  final String _propertyName;
  
  public PropertyValue$Any(PropertyValue paramPropertyValue, Object paramObject, SettableAnyProperty paramSettableAnyProperty, String paramString)
  {
    super(paramPropertyValue, paramObject);
    _property = paramSettableAnyProperty;
    _propertyName = paramString;
  }
  
  public void assign(Object paramObject)
    throws IOException, JsonProcessingException
  {
    _property.set(paramObject, _propertyName, value);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValue.Any
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */