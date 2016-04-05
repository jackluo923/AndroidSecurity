package org.simpleframework.xml.util;

import java.util.WeakHashMap;

class WeakCache$Segment
  extends WeakHashMap<Object, T>
{
  private WeakCache$Segment(WeakCache paramWeakCache) {}
  
  public void cache(Object paramObject, T paramT)
  {
    try
    {
      put(paramObject, paramT);
      return;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public boolean contains(Object paramObject)
  {
    try
    {
      boolean bool = containsKey(paramObject);
      return bool;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public T fetch(Object paramObject)
  {
    try
    {
      paramObject = get(paramObject);
      return (T)paramObject;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public T take(Object paramObject)
  {
    try
    {
      paramObject = remove(paramObject);
      return (T)paramObject;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.WeakCache.Segment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */