package org.codehaus.jackson.map.ser;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

final class StdSerializerProvider$WrappedSerializer
  extends JsonSerializer<Object>
{
  protected final JsonSerializer<Object> _serializer;
  protected final TypeSerializer _typeSerializer;
  
  public StdSerializerProvider$WrappedSerializer(TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    _typeSerializer = paramTypeSerializer;
    _serializer = paramJsonSerializer;
  }
  
  public Class<Object> handledType()
  {
    return Object.class;
  }
  
  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    _serializer.serializeWithType(paramObject, paramJsonGenerator, paramSerializerProvider, _typeSerializer);
  }
  
  public void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonProcessingException
  {
    _serializer.serializeWithType(paramObject, paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializerProvider.WrappedSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */