package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.node.ObjectNode;

@JacksonStdImpl
public final class StdArraySerializers$ByteArraySerializer
  extends SerializerBase<byte[]>
{
  public StdArraySerializers$ByteArraySerializer()
  {
    super(byte[].class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    paramSerializerProvider = createSchemaNode("array", true);
    paramSerializerProvider.put("items", createSchemaNode("string"));
    return paramSerializerProvider;
  }
  
  public void serialize(byte[] paramArrayOfByte, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeBinary(paramArrayOfByte);
  }
  
  public void serializeWithType(byte[] paramArrayOfByte, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonGenerationException
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramArrayOfByte, paramJsonGenerator);
    paramJsonGenerator.writeBinary(paramArrayOfByte);
    paramTypeSerializer.writeTypeSuffixForScalar(paramArrayOfByte, paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.ByteArraySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */