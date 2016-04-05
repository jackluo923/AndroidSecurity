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
public final class StdSerializers$IntegerSerializer
  extends NonTypedScalarSerializerBase<Integer>
{
  public StdSerializers$IntegerSerializer()
  {
    super(Integer.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("integer", true);
  }
  
  public void serialize(Integer paramInteger, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeNumber(paramInteger.intValue());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.IntegerSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */