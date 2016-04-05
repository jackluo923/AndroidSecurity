package com.google.a.b;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class ac<T>
  implements Iterator<T>
{
  ad<K, V> b = e.e.d;
  ad<K, V> c = null;
  int d = e.d;
  
  private ac(w paramw) {}
  
  final ad<K, V> a()
  {
    ad localad = b;
    if (localad == e.e) {
      throw new NoSuchElementException();
    }
    if (e.d != d) {
      throw new ConcurrentModificationException();
    }
    b = d;
    c = localad;
    return localad;
  }
  
  public final boolean hasNext()
  {
    return b != e.e;
  }
  
  public final void remove()
  {
    if (c == null) {
      throw new IllegalStateException();
    }
    e.a(c, true);
    c = null;
    d = e.d;
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */