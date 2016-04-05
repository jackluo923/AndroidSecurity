package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

final class PropertySerializerMap$TypeAndSerializer
{
  public final JsonSerializer<Object> serializer;
  public final Class<?> type;
  
  public PropertySerializerMap$TypeAndSerializer(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    type = paramClass;
    serializer = paramJsonSerializer;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.PropertySerializerMap.TypeAndSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */