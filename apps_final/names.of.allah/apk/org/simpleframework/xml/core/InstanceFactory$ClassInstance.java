package org.simpleframework.xml.core;

class InstanceFactory$ClassInstance
  implements Instance
{
  private Class type;
  private Object value;
  
  public InstanceFactory$ClassInstance(InstanceFactory paramInstanceFactory, Class paramClass)
  {
    type = paramClass;
  }
  
  public Object getInstance()
  {
    if (value == null) {
      value = this$0.getObject(type);
    }
    return value;
  }
  
  public Class getType()
  {
    return type;
  }
  
  public boolean isReference()
  {
    return false;
  }
  
  public Object setInstance(Object paramObject)
  {
    value = paramObject;
    return paramObject;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.InstanceFactory.ClassInstance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */