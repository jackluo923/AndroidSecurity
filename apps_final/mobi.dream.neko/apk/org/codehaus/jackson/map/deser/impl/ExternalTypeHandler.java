package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.util.TokenBuffer;

public class ExternalTypeHandler
{
  private final HashMap<String, Integer> _nameToPropertyIndex;
  private final ExtTypedProperty[] _properties;
  private final TokenBuffer[] _tokens;
  private final String[] _typeIds;
  
  protected ExternalTypeHandler(ExternalTypeHandler paramExternalTypeHandler)
  {
    _properties = _properties;
    _nameToPropertyIndex = _nameToPropertyIndex;
    int i = _properties.length;
    _typeIds = new String[i];
    _tokens = new TokenBuffer[i];
  }
  
  protected ExternalTypeHandler(ExtTypedProperty[] paramArrayOfExtTypedProperty, HashMap<String, Integer> paramHashMap, String[] paramArrayOfString, TokenBuffer[] paramArrayOfTokenBuffer)
  {
    _properties = paramArrayOfExtTypedProperty;
    _nameToPropertyIndex = paramHashMap;
    _typeIds = paramArrayOfString;
    _tokens = paramArrayOfTokenBuffer;
  }
  
  protected final void _deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, int paramInt)
    throws IOException, JsonProcessingException
  {
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
    localTokenBuffer.writeStartArray();
    localTokenBuffer.writeString(_typeIds[paramInt]);
    JsonParser localJsonParser = _tokens[paramInt].asParser(paramJsonParser);
    localJsonParser.nextToken();
    localTokenBuffer.copyCurrentStructure(localJsonParser);
    localTokenBuffer.writeEndArray();
    paramJsonParser = localTokenBuffer.asParser(paramJsonParser);
    paramJsonParser.nextToken();
    _properties[paramInt].getProperty().deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
  }
  
  public Object complete(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException
  {
    int i = 0;
    int j = _properties.length;
    if (i < j)
    {
      if (_typeIds[i] == null) {
        if (_tokens[i] != null) {}
      }
      for (;;)
      {
        i += 1;
        break;
        throw paramDeserializationContext.mappingException("Missing external type id property '" + _properties[i].getTypePropertyName() + "'");
        if (_tokens[i] == null)
        {
          paramJsonParser = _properties[i].getProperty();
          throw paramDeserializationContext.mappingException("Missing property '" + paramJsonParser.getName() + "' for external type id '" + _properties[i].getTypePropertyName());
        }
        _deserialize(paramJsonParser, paramDeserializationContext, paramObject, i);
      }
    }
    return paramObject;
  }
  
  public boolean handleToken(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, String paramString, Object paramObject)
    throws IOException, JsonProcessingException
  {
    int k = 0;
    int j = 0;
    Integer localInteger = (Integer)_nameToPropertyIndex.get(paramString);
    if (localInteger == null) {
      return false;
    }
    int m = localInteger.intValue();
    int i;
    if (_properties[m].hasTypePropertyName(paramString))
    {
      _typeIds[m] = paramJsonParser.getText();
      paramJsonParser.skipChildren();
      i = j;
      if (paramObject != null)
      {
        i = j;
        if (_tokens[m] != null) {
          i = 1;
        }
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        _deserialize(paramJsonParser, paramDeserializationContext, paramObject, m);
        _typeIds[m] = null;
        _tokens[m] = null;
      }
      return true;
      paramString = new TokenBuffer(paramJsonParser.getCodec());
      paramString.copyCurrentStructure(paramJsonParser);
      _tokens[m] = paramString;
      i = k;
      if (paramObject != null)
      {
        i = k;
        if (_typeIds[m] != null) {
          i = 1;
        }
      }
    }
  }
  
  public boolean handleTypePropertyValue(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, String paramString, Object paramObject)
    throws IOException, JsonProcessingException
  {
    Integer localInteger = (Integer)_nameToPropertyIndex.get(paramString);
    if (localInteger == null) {}
    int j;
    do
    {
      return false;
      j = localInteger.intValue();
    } while (!_properties[j].hasTypePropertyName(paramString));
    _typeIds[j] = paramJsonParser.getText();
    if ((paramObject != null) && (_tokens[j] != null)) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        _deserialize(paramJsonParser, paramDeserializationContext, paramObject, j);
        _typeIds[j] = null;
        _tokens[j] = null;
      }
      return true;
    }
  }
  
  public ExternalTypeHandler start()
  {
    return new ExternalTypeHandler(this);
  }
  
  public static class Builder
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
  
  private static final class ExtTypedProperty
  {
    private final SettableBeanProperty _property;
    private final String _typePropertyName;
    
    public ExtTypedProperty(SettableBeanProperty paramSettableBeanProperty, String paramString)
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
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.ExternalTypeHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */