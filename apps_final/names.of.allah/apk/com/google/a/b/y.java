package com.google.a.b;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class y
  extends AbstractSet<Map.Entry<K, V>>
{
  y(w paramw) {}
  
  public final void clear()
  {
    a.clear();
  }
  
  public final boolean contains(Object paramObject)
  {
    return ((paramObject instanceof Map.Entry)) && (a.a((Map.Entry)paramObject) != null);
  }
  
  public final Iterator<Map.Entry<K, V>> iterator()
  {
    return new z(this);
  }
  
  public final boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {}
    do
    {
      return false;
      paramObject = a.a((Map.Entry)paramObject);
    } while (paramObject == null);
    a.a((ad)paramObject, true);
    return true;
  }
  
  public final int size()
  {
    return a.c;
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */