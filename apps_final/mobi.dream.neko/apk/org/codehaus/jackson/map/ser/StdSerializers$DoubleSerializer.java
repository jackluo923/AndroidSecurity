package org.codehaus.jackson.map.ser;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.NonTypedScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$DoubleSerializer
  extends NonTypedScalarSerializerBase<Double>
{
  static final DoubleSerializer instance = new DoubleSerializer();
  
  public StdSerializers$DoubleSerializer()
  {
    super(Double.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("number", true);
  }
  
  public void serialize(Double paramDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeNumber(paramDouble.doubleValue());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.DoubleSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */