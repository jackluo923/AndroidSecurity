package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import java.util.Map;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.deser.SettableAnyProperty;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

public abstract class PropertyValue
{
  public final PropertyValue next;
  public final Object value;
  
  protected PropertyValue(PropertyValue paramPropertyValue, Object paramObject)
  {
    next = paramPropertyValue;
    value = paramObject;
  }
  
  public abstract void assign(Object paramObject)
    throws IOException, JsonProcessingException;
  
  static final class Any
    extends PropertyValue
  {
    final SettableAnyProperty _property;
    final String _propertyName;
    
    public Any(PropertyValue paramPropertyValue, Object paramObject, SettableAnyProperty paramSettableAnyProperty, String paramString)
    {
      super(paramObject);
      _property = paramSettableAnyProperty;
      _propertyName = paramString;
    }
    
    public void assign(Object paramObject)
      throws IOException, JsonProcessingException
    {
      _property.set(paramObject, _propertyName, value);
    }
  }
  
  static final class Map
    extends PropertyValue
  {
    final Object _key;
    
    public Map(PropertyValue paramPropertyValue, Object paramObject1, Object paramObject2)
    {
      super(paramObject1);
      _key = paramObject2;
    }
    
    public void assign(Object paramObject)
      throws IOException, JsonProcessingException
    {
      ((Map)paramObject).put(_key, value);
    }
  }
  
  static final class Regular
    extends PropertyValue
  {
    final SettableBeanProperty _property;
    
    public Regular(PropertyValue paramPropertyValue, Object paramObject, SettableBeanProperty paramSettableBeanProperty)
    {
      super(paramObject);
      _property = paramSettableBeanProperty;
    }
    
    public void assign(Object paramObject)
      throws IOException, JsonProcessingException
    {
      _property.set(paramObject, value);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */