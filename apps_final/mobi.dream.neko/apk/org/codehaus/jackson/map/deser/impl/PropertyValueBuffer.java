package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.SettableAnyProperty;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

public final class PropertyValueBuffer
{
  private PropertyValue _buffered;
  final DeserializationContext _context;
  final Object[] _creatorParameters;
  private int _paramsNeeded;
  final JsonParser _parser;
  
  public PropertyValueBuffer(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, int paramInt)
  {
    _parser = paramJsonParser;
    _context = paramDeserializationContext;
    _paramsNeeded = paramInt;
    _creatorParameters = new Object[paramInt];
  }
  
  public boolean assignParameter(int paramInt, Object paramObject)
  {
    _creatorParameters[paramInt] = paramObject;
    paramInt = _paramsNeeded - 1;
    _paramsNeeded = paramInt;
    return paramInt <= 0;
  }
  
  public void bufferAnyProperty(SettableAnyProperty paramSettableAnyProperty, String paramString, Object paramObject)
  {
    _buffered = new PropertyValue.Any(_buffered, paramObject, paramSettableAnyProperty, paramString);
  }
  
  public void bufferMapProperty(Object paramObject1, Object paramObject2)
  {
    _buffered = new PropertyValue.Map(_buffered, paramObject2, paramObject1);
  }
  
  public void bufferProperty(SettableBeanProperty paramSettableBeanProperty, Object paramObject)
  {
    _buffered = new PropertyValue.Regular(_buffered, paramObject, paramSettableBeanProperty);
  }
  
  protected PropertyValue buffered()
  {
    return _buffered;
  }
  
  protected final Object[] getParameters(Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null)
    {
      int i = 0;
      int j = _creatorParameters.length;
      while (i < j)
      {
        if (_creatorParameters[i] == null)
        {
          Object localObject = paramArrayOfObject[i];
          if (localObject != null) {
            _creatorParameters[i] = localObject;
          }
        }
        i += 1;
      }
    }
    return _creatorParameters;
  }
  
  public void inject(SettableBeanProperty[] paramArrayOfSettableBeanProperty)
  {
    int i = 0;
    int j = paramArrayOfSettableBeanProperty.length;
    while (i < j)
    {
      SettableBeanProperty localSettableBeanProperty = paramArrayOfSettableBeanProperty[i];
      if (localSettableBeanProperty != null) {
        _creatorParameters[i] = _context.findInjectableValue(localSettableBeanProperty.getInjectableValueId(), localSettableBeanProperty, null);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.PropertyValueBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */