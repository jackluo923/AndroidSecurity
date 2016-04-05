package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$ClassSerializer
  extends ScalarSerializerBase<Class<?>>
{
  public StdJdkSerializers$ClassSerializer()
  {
    super(Class.class, false);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("string", true);
  }
  
  public void serialize(Class<?> paramClass, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeString(paramClass.getName());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.ClassSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */