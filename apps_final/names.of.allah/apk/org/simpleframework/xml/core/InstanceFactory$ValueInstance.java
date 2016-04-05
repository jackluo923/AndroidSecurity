package org.simpleframework.xml.core;

import org.simpleframework.xml.strategy.Value;

class InstanceFactory$ValueInstance
  implements Instance
{
  private final Class type;
  private final Value value;
  
  public InstanceFactory$ValueInstance(InstanceFactory paramInstanceFactory, Value paramValue)
  {
    type = paramValue.getType();
    value = paramValue;
  }
  
  public Object getInstance()
  {
    Object localObject1;
    if (value.isReference()) {
      localObject1 = value.getValue();
    }
    Object localObject2;
    do
    {
      return localObject1;
      localObject2 = this$0.getObject(type);
      localObject1 = localObject2;
    } while (value == null);
    value.setValue(localObject2);
    return localObject2;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isReference()
  {
    return value.isReference();
  }
  
  public Object setInstance(Object paramObject)
  {
    if (value != null) {
      value.setValue(paramObject);
    }
    return paramObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.InstanceFactory.ValueInstance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */