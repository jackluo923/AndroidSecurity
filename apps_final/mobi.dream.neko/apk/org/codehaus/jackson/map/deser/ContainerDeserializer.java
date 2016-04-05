package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.map.deser.std.ContainerDeserializerBase;

@Deprecated
public abstract class ContainerDeserializer<T>
  extends ContainerDeserializerBase<T>
{
  protected ContainerDeserializer(Class<?> paramClass)
  {
    super(paramClass);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.ContainerDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */