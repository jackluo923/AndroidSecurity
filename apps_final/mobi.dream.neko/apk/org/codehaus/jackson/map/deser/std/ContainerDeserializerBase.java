package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.type.JavaType;

public abstract class ContainerDeserializerBase<T>
  extends StdDeserializer<T>
{
  protected ContainerDeserializerBase(Class<?> paramClass)
  {
    super(paramClass);
  }
  
  public abstract JsonDeserializer<Object> getContentDeserializer();
  
  public abstract JavaType getContentType();
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.ContainerDeserializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */