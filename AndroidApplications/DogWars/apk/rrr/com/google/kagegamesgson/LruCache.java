package com.google.kagegamesgson;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class LruCache<K, V>
  extends LinkedHashMap<K, V>
  implements Cache<K, V>
{
  private static final long serialVersionUID = 1L;
  private final int maxCapacity;
  
  LruCache(int paramInt)
  {
    super(paramInt, f, bool);
    maxCapacity = paramInt;
  }
  
  public void addElement(K paramK, V paramV)
  {
    put(paramK, paramV);
  }
  
  public void clear()
  {
    super.clear();
  }
  
  public V getElement(K paramK)
  {
    Object localObject = get(paramK);
    return (V)localObject;
  }
  
  protected boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    int i = size();
    int k = maxCapacity;
    if (i > k) {}
    int j;
    for (i = 1;; j = 0) {
      return i;
    }
  }
  
  public V removeElement(K paramK)
  {
    Object localObject = remove(paramK);
    return (V)localObject;
  }
  
  public int size()
  {
    int i = super.size();
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.LruCache
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */