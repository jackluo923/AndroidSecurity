package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.node.ObjectNode;

@JacksonStdImpl
public final class StdArraySerializers$StringArraySerializer
  extends StdArraySerializers.ArraySerializerBase<String[]>
  implements ResolvableSerializer
{
  protected JsonSerializer<Object> _elementSerializer;
  
  public StdArraySerializers$StringArraySerializer(BeanProperty paramBeanProperty)
  {
    super(String[].class, null, paramBeanProperty);
  }
  
  private void serializeContentsSlow(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
    throws IOException, JsonGenerationException
  {
    int i = 0;
    int j = paramArrayOfString.length;
    if (i < j)
    {
      if (paramArrayOfString[i] == null) {
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      }
      for (;;)
      {
        i += 1;
        break;
        paramJsonSerializer.serialize(paramArrayOfString[i], paramJsonGenerator, paramSerializerProvider);
      }
    }
  }
  
  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    paramSerializerProvider = createSchemaNode("array", true);
    paramSerializerProvider.put("items", createSchemaNode("string"));
    return paramSerializerProvider;
  }
  
  public void resolve(SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    paramSerializerProvider = paramSerializerProvider.findValueSerializer(String.class, _property);
    if ((paramSerializerProvider != null) && (paramSerializerProvider.getClass().getAnnotation(JacksonStdImpl.class) == null)) {
      _elementSerializer = paramSerializerProvider;
    }
  }
  
  public void serializeContents(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    int j = paramArrayOfString.length;
    if (j == 0) {
      return;
    }
    if (_elementSerializer != null)
    {
      serializeContentsSlow(paramArrayOfString, paramJsonGenerator, paramSerializerProvider, _elementSerializer);
      return;
    }
    int i = 0;
    label32:
    if (i < j)
    {
      if (paramArrayOfString[i] != null) {
        break label59;
      }
      paramJsonGenerator.writeNull();
    }
    for (;;)
    {
      i += 1;
      break label32;
      break;
      label59:
      paramJsonGenerator.writeString(paramArrayOfString[i]);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.StringArraySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */