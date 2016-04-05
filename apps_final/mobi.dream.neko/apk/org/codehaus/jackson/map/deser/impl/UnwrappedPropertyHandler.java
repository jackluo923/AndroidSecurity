package org.codehaus.jackson.map.deser.impl;

import java.io.IOException;
import java.util.ArrayList;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.util.TokenBuffer;

public class UnwrappedPropertyHandler
{
  protected final ArrayList<SettableBeanProperty> _properties = new ArrayList();
  
  public void addProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    _properties.add(paramSettableBeanProperty);
  }
  
  public Object processUnwrapped(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, TokenBuffer paramTokenBuffer)
    throws IOException, JsonProcessingException
  {
    int i = 0;
    int j = _properties.size();
    while (i < j)
    {
      paramJsonParser = (SettableBeanProperty)_properties.get(i);
      JsonParser localJsonParser = paramTokenBuffer.asParser();
      localJsonParser.nextToken();
      paramJsonParser.deserializeAndSet(localJsonParser, paramDeserializationContext, paramObject);
      i += 1;
    }
    return paramObject;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.UnwrappedPropertyHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */