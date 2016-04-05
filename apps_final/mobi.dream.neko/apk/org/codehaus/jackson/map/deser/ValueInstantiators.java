package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.map.BeanDescription;
import org.codehaus.jackson.map.DeserializationConfig;

public abstract interface ValueInstantiators
{
  public abstract ValueInstantiator findValueInstantiator(DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, ValueInstantiator paramValueInstantiator);
  
  public static class Base
    implements ValueInstantiators
  {
    public ValueInstantiator findValueInstantiator(DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, ValueInstantiator paramValueInstantiator)
    {
      return paramValueInstantiator;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.ValueInstantiators
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */