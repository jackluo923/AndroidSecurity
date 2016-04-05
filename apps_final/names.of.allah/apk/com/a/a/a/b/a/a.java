package com.a.a.a.b.a;

import com.a.a.a.b.c;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

public final class a<K, V>
  implements c<K, V>
{
  private final c<K, V> a;
  private final Comparator<K> b;
  
  public a(c<K, V> paramc, Comparator<K> paramComparator)
  {
    a = paramc;
    b = paramComparator;
  }
  
  public final V a(K paramK)
  {
    return (V)a.a(paramK);
  }
  
  public final Collection<K> a()
  {
    return a.a();
  }
  
  public final boolean a(K paramK, V paramV)
  {
    for (;;)
    {
      synchronized (a)
      {
        Iterator localIterator = a.a().iterator();
        if (localIterator.hasNext())
        {
          localObject = localIterator.next();
          if (b.compare(paramK, localObject) != 0) {
            continue;
          }
          if (localObject != null) {
            a.b(localObject);
          }
          return a.a(paramK, paramV);
        }
      }
      Object localObject = null;
    }
  }
  
  public final void b()
  {
    a.b();
  }
  
  public final void b(K paramK)
  {
    a.b(paramK);
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */