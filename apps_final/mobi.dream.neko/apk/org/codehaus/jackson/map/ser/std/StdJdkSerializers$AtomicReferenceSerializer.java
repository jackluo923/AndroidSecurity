package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicReference;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$AtomicReferenceSerializer
  extends SerializerBase<AtomicReference<?>>
{
  public StdJdkSerializers$AtomicReferenceSerializer()
  {
    super(AtomicReference.class, false);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("any", true);
  }
  
  public void serialize(AtomicReference<?> paramAtomicReference, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonGenerationException
  {
    paramSerializerProvider.defaultSerializeValue(paramAtomicReference.get(), paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.AtomicReferenceSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */