package org.codehaus.jackson.map;

public abstract interface ContextualSerializer<T>
{
  public abstract JsonSerializer<T> createContextual(SerializationConfig paramSerializationConfig, BeanProperty paramBeanProperty)
    throws JsonMappingException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ContextualSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */