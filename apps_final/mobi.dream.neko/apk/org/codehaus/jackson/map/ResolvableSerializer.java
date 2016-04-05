package org.codehaus.jackson.map;

public abstract interface ResolvableSerializer
{
  public abstract void resolve(SerializerProvider paramSerializerProvider)
    throws JsonMappingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ResolvableSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */