package org.codehaus.jackson.map.ser;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.NonTypedScalarSerializerBase;

@Deprecated
@JacksonStdImpl
public final class StdSerializers$StringSerializer
  extends NonTypedScalarSerializerBase<String>
{
  public StdSerializers$StringSerializer()
  {
    super(String.class);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("string", true);
  }
  
  public void serialize(String paramString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeString(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.StringSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */