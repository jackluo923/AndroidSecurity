package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class InstanceFactory
{
  private final Cache<Constructor> cache = new ConcurrentCache();
  
  public Instance getInstance(Class paramClass)
  {
    return new InstanceFactory.ClassInstance(this, paramClass);
  }
  
  public Instance getInstance(Value paramValue)
  {
    return new InstanceFactory.ValueInstance(this, paramValue);
  }
  
  protected Object getObject(Class paramClass)
  {
    Constructor localConstructor2 = (Constructor)cache.fetch(paramClass);
    Constructor localConstructor1 = localConstructor2;
    if (localConstructor2 == null)
    {
      localConstructor1 = paramClass.getDeclaredConstructor(new Class[0]);
      if (!localConstructor1.isAccessible()) {
        localConstructor1.setAccessible(true);
      }
      cache.cache(paramClass, localConstructor1);
    }
    return localConstructor1.newInstance(new Object[0]);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.InstanceFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */