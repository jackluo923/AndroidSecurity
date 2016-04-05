package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.map.deser.std.StdDeserializer;

@Deprecated
public abstract class StdScalarDeserializer<T>
  extends StdDeserializer<T>
{
  protected StdScalarDeserializer(Class<?> paramClass)
  {
    super(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.StdScalarDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */