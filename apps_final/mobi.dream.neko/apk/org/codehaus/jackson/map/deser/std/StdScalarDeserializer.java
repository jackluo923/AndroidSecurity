package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.type.JavaType;

public abstract class StdScalarDeserializer<T>
  extends StdDeserializer<T>
{
  protected StdScalarDeserializer(Class<?> paramClass)
  {
    super(paramClass);
  }
  
  protected StdScalarDeserializer(JavaType paramJavaType)
  {
    super(paramJavaType);
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
    throws IOException, JsonProcessingException
  {
    return paramTypeDeserializer.deserializeTypedFromScalar(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdScalarDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */