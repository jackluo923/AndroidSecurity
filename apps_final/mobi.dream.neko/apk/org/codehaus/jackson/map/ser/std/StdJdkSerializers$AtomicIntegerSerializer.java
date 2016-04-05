package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicInteger;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$AtomicIntegerSerializer
  extends ScalarSerializerBase<AtomicInteger>
{
  public StdJdkSerializers$AtomicIntegerSerializer()
  {
    super(AtomicInteger.class, false);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("integer", true);
  }
  
  public void serialize(AtomicInteger paramAtomicInteger, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramJsonGenerator.writeNumber(paramAtomicInteger.get());
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.AtomicIntegerSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */