package org.codehaus.jackson.map.deser.impl;

import java.util.ArrayList;
import java.util.HashMap;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

public class ExternalTypeHandler$Builder
{
  private final HashMap<String, Integer> _nameToPropertyIndex = new HashMap();
  private final ArrayList<ExternalTypeHandler.ExtTypedProperty> _properties = new ArrayList();
  
  public void addExternal(SettableBeanProperty paramSettableBeanProperty, String paramString)
  {
    Integer localInteger = Integer.valueOf(_properties.size());
    _properties.add(new ExternalTypeHandler.ExtTypedProperty(paramSettableBeanProperty, paramString));
    _nameToPropertyIndex.put(paramSettableBeanProperty.getName(), localInteger);
    _nameToPropertyIndex.put(paramString, localInteger);
  }
  
  public ExternalTypeHandler build()
  {
    return new ExternalTypeHandler((ExternalTypeHandler.ExtTypedProperty[])_properties.toArray(new ExternalTypeHandler.ExtTypedProperty[_properties.size()]), _nameToPropertyIndex, null, null);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.ExternalTypeHandler.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */