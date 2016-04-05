package com.a.a.a.b;

import com.a.a.c.d;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class b<K, V>
  extends a<K, V>
{
  private final int a;
  private final AtomicInteger b;
  private final List<V> c = Collections.synchronizedList(new LinkedList());
  
  public b(int paramInt)
  {
    a = paramInt;
    b = new AtomicInteger();
    if (paramInt > 16777216) {
      d.c("You set too large memory cache size (more than %1$d Mb)", new Object[] { Integer.valueOf(16) });
    }
  }
  
  public boolean a(K paramK, V paramV)
  {
    boolean bool = false;
    int j = d(paramV);
    int k = a;
    int i = b.get();
    if (j < k)
    {
      while (i + j > k)
      {
        Object localObject = c();
        if (c.remove(localObject)) {
          i = b.addAndGet(-d(localObject));
        }
      }
      c.add(paramV);
      b.addAndGet(j);
      bool = true;
    }
    super.a(paramK, paramV);
    return bool;
  }
  
  public void b()
  {
    c.clear();
    b.set(0);
    super.b();
  }
  
  public void b(K paramK)
  {
    Object localObject = super.a(paramK);
    if ((localObject != null) && (c.remove(localObject))) {
      b.addAndGet(-d(localObject));
    }
    super.b(paramK);
  }
  
  protected abstract V c();
  
  protected abstract int d(V paramV);
}

/* Location:
 * Qualified Name:     com.a.a.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */