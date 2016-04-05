package org.codehaus.jackson.map;

public abstract interface ResolvableDeserializer
{
  public abstract void resolve(DeserializationConfig paramDeserializationConfig, DeserializerProvider paramDeserializerProvider)
    throws JsonMappingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ResolvableDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */