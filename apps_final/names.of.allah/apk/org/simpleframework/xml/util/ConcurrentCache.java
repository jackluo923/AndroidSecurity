package org.simpleframework.xml.util;

import java.util.concurrent.ConcurrentHashMap;

public class ConcurrentCache<T>
  extends ConcurrentHashMap<Object, T>
  implements Cache<T>
{
  public void cache(Object paramObject, T paramT)
  {
    put(paramObject, paramT);
  }
  
  public boolean contains(Object paramObject)
  {
    return containsKey(paramObject);
  }
  
  public T fetch(Object paramObject)
  {
    return (T)get(paramObject);
  }
  
  public T take(Object paramObject)
  {
    return (T)remove(paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.ConcurrentCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */