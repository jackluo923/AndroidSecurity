package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.Type;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public abstract class ScalarSerializerBase<T>
  extends SerializerBase<T>
{
  protected ScalarSerializerBase(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  protected ScalarSerializerBase(Class<?> paramClass, boolean paramBoolean)
  {
    super(paramClass);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
    throws JsonMappingException
  {
    return createSchemaNode("string", true);
  }
  
  public void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonGenerationException
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramT, paramJsonGenerator);
    serialize(paramT, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(paramT, paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.ScalarSerializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */