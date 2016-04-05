package com.j256.ormlite.dao;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

class LruObjectCache$LimitedLinkedHashMap<K, V>
  extends LinkedHashMap<K, V>
{
  private static final long serialVersionUID = -4566528080395573236L;
  private final int capacity;
  
  public LruObjectCache$LimitedLinkedHashMap(int paramInt)
  {
    super(paramInt, 0.75F, true);
    capacity = paramInt;
  }
  
  protected boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    return size() > capacity;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.LruObjectCache.LimitedLinkedHashMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */