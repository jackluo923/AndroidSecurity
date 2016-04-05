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
public final class StdArraySerializers$DoubleArraySerializer
  extends StdArraySerializers.ArraySerializerBase<double[]>
{
  public StdArraySerializers$DoubleArraySerializer()
  {
    super(double[].class, null, null);
  }
  
  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    paramSerializerProvider = createSchemaNode("array", true);
    paramSerializerProvider.put("items", createSchemaNode("number"));
    return paramSerializerProvider;
  }
  
  public void serializeContents(double[] paramArrayOfDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    int i = 0;
    int j = paramArrayOfDouble.length;
    while (i < j)
    {
      paramJsonGenerator.writeNumber(paramArrayOfDouble[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.DoubleArraySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */