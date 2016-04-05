package org.simpleframework.xml.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class WeakCache$SegmentList
  implements Iterable<WeakCache<T>.Segment>
{
  private List<WeakCache<T>.Segment> list = new ArrayList();
  private int size;
  
  public WeakCache$SegmentList(WeakCache paramWeakCache, int paramInt)
  {
    size = paramInt;
    create(paramInt);
  }
  
  private void create(int paramInt)
  {
    while (paramInt > 0)
    {
      list.add(new WeakCache.Segment(this$0, null));
      paramInt -= 1;
    }
  }
  
  private int segment(Object paramObject)
  {
    return Math.abs(paramObject.hashCode() % size);
  }
  
  public WeakCache<T>.Segment get(Object paramObject)
  {
    int i = segment(paramObject);
    if (i < size) {
      return (WeakCache.Segment)list.get(i);
    }
    return null;
  }
  
  public Iterator<WeakCache<T>.Segment> iterator()
  {
    return list.iterator();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.WeakCache.SegmentList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */