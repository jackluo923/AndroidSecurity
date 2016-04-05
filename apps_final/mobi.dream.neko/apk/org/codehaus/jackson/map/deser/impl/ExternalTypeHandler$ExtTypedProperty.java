package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.map.deser.SettableBeanProperty;

final class ExternalTypeHandler$ExtTypedProperty
{
  private final SettableBeanProperty _property;
  private final String _typePropertyName;
  
  public ExternalTypeHandler$ExtTypedProperty(SettableBeanProperty paramSettableBeanProperty, String paramString)
  {
    _property = paramSettableBeanProperty;
    _typePropertyName = paramString;
  }
  
  public SettableBeanProperty getProperty()
  {
    return _property;
  }
  
  public String getTypePropertyName()
  {
    return _typePropertyName;
  }
  
  public boolean hasTypePropertyName(String paramString)
  {
    return paramString.equals(_typePropertyName);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.ExternalTypeHandler.ExtTypedProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */