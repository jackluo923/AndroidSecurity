package org.simpleframework.xml.util;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

public class LimitedCache<T>
  extends LinkedHashMap<Object, T>
  implements Cache<T>
{
  private final int capacity;
  
  public LimitedCache()
  {
    this(50000);
  }
  
  public LimitedCache(int paramInt)
  {
    capacity = paramInt;
  }
  
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
  
  protected boolean removeEldestEntry(Map.Entry<Object, T> paramEntry)
  {
    return size() > capacity;
  }
  
  public T take(Object paramObject)
  {
    return (T)remove(paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.LimitedCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */