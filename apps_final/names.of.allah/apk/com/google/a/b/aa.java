package com.google.a.b;

import java.util.AbstractSet;
import java.util.Iterator;

final class aa
  extends AbstractSet<K>
{
  aa(w paramw) {}
  
  public final void clear()
  {
    a.clear();
  }
  
  public final boolean contains(Object paramObject)
  {
    return a.containsKey(paramObject);
  }
  
  public final Iterator<K> iterator()
  {
    return new ab(this);
  }
  
  public final boolean remove(Object paramObject)
  {
    return a.a(paramObject) != null;
  }
  
  public final int size()
  {
    return a.c;
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */