package com.a.a.a.b;

import java.lang.ref.Reference;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public abstract class a<K, V>
  implements c<K, V>
{
  private final Map<K, Reference<V>> a = Collections.synchronizedMap(new HashMap());
  
  public V a(K paramK)
  {
    paramK = (Reference)a.get(paramK);
    if (paramK != null) {
      return (V)paramK.get();
    }
    return null;
  }
  
  public final Collection<K> a()
  {
    synchronized (a)
    {
      HashSet localHashSet = new HashSet(a.keySet());
      return localHashSet;
    }
  }
  
  public boolean a(K paramK, V paramV)
  {
    a.put(paramK, c(paramV));
    return true;
  }
  
  public void b()
  {
    a.clear();
  }
  
  public void b(K paramK)
  {
    a.remove(paramK);
  }
  
  protected abstract Reference<V> c(V paramV);
}

/* Location:
 * Qualified Name:     com.a.a.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */