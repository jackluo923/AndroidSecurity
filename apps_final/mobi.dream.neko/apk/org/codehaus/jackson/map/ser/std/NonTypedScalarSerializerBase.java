package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;

public abstract class NonTypedScalarSerializerBase<T>
  extends ScalarSerializerBase<T>
{
  protected NonTypedScalarSerializerBase(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  public final void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    throws IOException, JsonGenerationException
  {
    serialize(paramT, paramJsonGenerator, paramSerializerProvider);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ser.std.NonTypedScalarSerializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */