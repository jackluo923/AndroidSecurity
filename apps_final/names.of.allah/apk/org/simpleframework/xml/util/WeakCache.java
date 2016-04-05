package org.simpleframework.xml.util;

import java.util.Iterator;

public class WeakCache<T>
  implements Cache<T>
{
  private WeakCache<T>.SegmentList list;
  
  public WeakCache()
  {
    this(10);
  }
  
  public WeakCache(int paramInt)
  {
    list = new WeakCache.SegmentList(this, paramInt);
  }
  
  private WeakCache<T>.Segment map(Object paramObject)
  {
    return list.get(paramObject);
  }
  
  public void cache(Object paramObject, T paramT)
  {
    map(paramObject).cache(paramObject, paramT);
  }
  
  public boolean contains(Object paramObject)
  {
    return map(paramObject).contains(paramObject);
  }
  
  public T fetch(Object paramObject)
  {
    return (T)map(paramObject).fetch(paramObject);
  }
  
  public boolean isEmpty()
  {
    Iterator localIterator = list.iterator();
    while (localIterator.hasNext()) {
      if (!((WeakCache.Segment)localIterator.next()).isEmpty()) {
        return false;
      }
    }
    return true;
  }
  
  public T take(Object paramObject)
  {
    return (T)map(paramObject).take(paramObject);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.WeakCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */