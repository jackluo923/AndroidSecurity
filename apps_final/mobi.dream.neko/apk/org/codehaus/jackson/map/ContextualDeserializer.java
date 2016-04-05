package org.codehaus.jackson.map;

public abstract interface ContextualDeserializer<T>
{
  public abstract JsonDeserializer<T> createContextual(DeserializationConfig paramDeserializationConfig, BeanProperty paramBeanProperty)
    throws JsonMappingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ContextualDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */