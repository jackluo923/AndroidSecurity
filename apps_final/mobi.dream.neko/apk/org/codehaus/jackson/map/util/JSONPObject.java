package org.codehaus.jackson.map.util;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.JsonSerializableWithType;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public class JSONPObject
  implements JsonSerializableWithType
{
  protected final String _function;
  protected final JavaType _serializationType;
  protected final Object _value;
  
  public JSONPObject(String paramString, Object paramObject)
  {
    this(paramString, paramObject, (JavaType)null);
  }
  
  @Deprecated
  public JSONPObject(String paramString, Object paramObject, Class<?> paramClass)
  {
    _function = paramString;
    _value = paramObject;
    if (paramClass == null) {}
    for (paramString = null;; paramString = TypeFactory.defaultInstance().constructType(paramClass))
    {
      _serializationType = paramString;
      return;
    }
  }
  
  public JSONPObject(String paramString, Object paramObject, JavaType paramJavaType)
  {
    _function = paramString;
    _value = paramObject;
    _serializationType = paramJavaType;
  }
  
  public String getFunction()
  {
    return _function;
  }
  
  public JavaType getSerializationType()
  {
    return _serializationType;
  }
  
  public Object getValue()
  {
    return _value;
  }
  
  public void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeRaw(_function);
    paramJsonGenerator.writeRaw('(');
    if (_value == null) {
      paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
    }
    for (;;)
    {
      paramJsonGenerator.writeRaw(')');
      return;
      if (_serializationType != null) {
        paramSerializerProvider.findTypedValueSerializer(_serializationType, true, null).serialize(_value, paramJsonGenerator, paramSerializerProvider);
      } else {
        paramSerializerProvider.findTypedValueSerializer(_value.getClass(), true, null).serialize(_value, paramJsonGenerator, paramSerializerProvider);
      }
    }
  }
  
  public void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonProcessingException
  {
    serialize(paramJsonGenerator, paramSerializerProvider);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.JSONPObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */