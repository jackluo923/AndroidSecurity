package com.google.a.b;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.Set;

public final class w<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> g;
  Comparator<? super K> a;
  ad<K, V> b;
  int c = 0;
  int d = 0;
  final ad<K, V> e = new ad();
  private w<K, V>.y h;
  private w<K, V>.aa i;
  
  static
  {
    if (!w.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      g = new x();
      return;
    }
  }
  
  public w()
  {
    this(g);
  }
  
  private w(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null) {}
    for (;;)
    {
      a = paramComparator;
      return;
      paramComparator = g;
    }
  }
  
  private ad<K, V> a(K paramK, boolean paramBoolean)
  {
    Object localObject3 = null;
    Comparator localComparator = a;
    Object localObject1 = b;
    int j;
    Object localObject2;
    if (localObject1 != null)
    {
      Comparable localComparable;
      if (localComparator == g)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null) {
          break label67;
        }
      }
      label67:
      for (j = localComparable.compareTo(f);; j = localComparator.compare(paramK, f))
      {
        if (j != 0) {
          break label84;
        }
        localObject2 = localObject1;
        return (ad<K, V>)localObject2;
        localComparable = null;
        break;
      }
      label84:
      if (j < 0) {}
      for (localObject2 = b;; localObject2 = c)
      {
        if (localObject2 == null) {
          break label115;
        }
        localObject1 = localObject2;
        break;
      }
    }
    for (;;)
    {
      label115:
      localObject2 = localObject3;
      if (!paramBoolean) {
        break;
      }
      localObject2 = e;
      if (localObject1 == null)
      {
        if ((localComparator == g) && (!(paramK instanceof Comparable))) {
          throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
        }
        paramK = new ad((ad)localObject1, paramK, (ad)localObject2, e);
        b = paramK;
        c += 1;
        d += 1;
        return paramK;
      }
      paramK = new ad((ad)localObject1, paramK, (ad)localObject2, e);
      if (j < 0) {
        b = paramK;
      }
      for (;;)
      {
        b((ad)localObject1, true);
        break;
        c = paramK;
      }
      j = 0;
    }
  }
  
  private void a(ad<K, V> paramad)
  {
    int m = 0;
    ad localad1 = b;
    ad localad2 = c;
    ad localad3 = b;
    ad localad4 = c;
    c = localad3;
    if (localad3 != null) {
      a = paramad;
    }
    a(paramad, localad2);
    b = paramad;
    a = localad2;
    int j;
    if (localad1 != null)
    {
      j = h;
      if (localad3 == null) {
        break label135;
      }
    }
    label135:
    for (int k = h;; k = 0)
    {
      h = (Math.max(j, k) + 1);
      k = h;
      j = m;
      if (localad4 != null) {
        j = h;
      }
      h = (Math.max(k, j) + 1);
      return;
      j = 0;
      break;
    }
  }
  
  private void a(ad<K, V> paramad1, ad<K, V> paramad2)
  {
    ad localad = a;
    a = null;
    if (paramad2 != null) {
      a = localad;
    }
    if (localad != null)
    {
      if (b == paramad1)
      {
        b = paramad2;
        return;
      }
      if ((!f) && (c != paramad1)) {
        throw new AssertionError();
      }
      c = paramad2;
      return;
    }
    b = paramad2;
  }
  
  private ad<K, V> b(Object paramObject)
  {
    ad localad = null;
    if (paramObject != null) {}
    try
    {
      localad = a(paramObject, false);
      return localad;
    }
    catch (ClassCastException paramObject) {}
    return null;
  }
  
  private void b(ad<K, V> paramad)
  {
    int m = 0;
    ad localad1 = b;
    ad localad2 = c;
    ad localad3 = b;
    ad localad4 = c;
    b = localad4;
    if (localad4 != null) {
      a = paramad;
    }
    a(paramad, localad1);
    c = paramad;
    a = localad1;
    int j;
    if (localad2 != null)
    {
      j = h;
      if (localad4 == null) {
        break label135;
      }
    }
    label135:
    for (int k = h;; k = 0)
    {
      h = (Math.max(j, k) + 1);
      k = h;
      j = m;
      if (localad3 != null) {
        j = h;
      }
      h = (Math.max(k, j) + 1);
      return;
      j = 0;
      break;
    }
  }
  
  private void b(ad<K, V> paramad, boolean paramBoolean)
  {
    ad localad1;
    ad localad2;
    int j;
    label25:
    int k;
    label37:
    int m;
    ad localad3;
    if (paramad != null)
    {
      localad1 = b;
      localad2 = c;
      if (localad1 != null)
      {
        j = h;
        if (localad2 == null) {
          break label131;
        }
        k = h;
        m = j - k;
        if (m != -2) {
          break label183;
        }
        localad1 = b;
        localad3 = c;
        if (localad3 == null) {
          break label137;
        }
        j = h;
        label76:
        if (localad1 == null) {
          break label143;
        }
        k = h;
        label86:
        j = k - j;
        if ((j != -1) && ((j != 0) || (paramBoolean))) {
          break label149;
        }
        a(paramad);
        label113:
        if (paramBoolean) {
          break label256;
        }
      }
    }
    for (;;)
    {
      paramad = a;
      break;
      j = 0;
      break label25;
      label131:
      k = 0;
      break label37;
      label137:
      j = 0;
      break label76;
      label143:
      k = 0;
      break label86;
      label149:
      if ((!f) && (j != 1)) {
        throw new AssertionError();
      }
      b(localad2);
      a(paramad);
      break label113;
      label183:
      if (m == 2)
      {
        localad2 = b;
        localad3 = c;
        if (localad3 != null)
        {
          j = h;
          label213:
          if (localad2 == null) {
            break label263;
          }
          k = h;
          label225:
          j = k - j;
          if ((j != 1) && ((j != 0) || (paramBoolean))) {
            break label269;
          }
          b(paramad);
          label252:
          if (!paramBoolean) {
            break label300;
          }
        }
      }
      label256:
      label263:
      label269:
      label300:
      do
      {
        return;
        j = 0;
        break label213;
        k = 0;
        break label225;
        if ((!f) && (j != -1)) {
          throw new AssertionError();
        }
        a(localad1);
        b(paramad);
        break label252;
        break;
        if (m == 0)
        {
          h = (j + 1);
          if (!paramBoolean) {
            break;
          }
          return;
        }
        if ((!f) && (m != -1) && (m != 1)) {
          throw new AssertionError();
        }
        h = (Math.max(j, k) + 1);
      } while (!paramBoolean);
    }
  }
  
  final ad<K, V> a(Object paramObject)
  {
    paramObject = b(paramObject);
    if (paramObject != null) {
      a((ad)paramObject, true);
    }
    return (ad<K, V>)paramObject;
  }
  
  final ad<K, V> a(Map.Entry<?, ?> paramEntry)
  {
    int k = 1;
    ad localad = b(paramEntry.getKey());
    if (localad != null)
    {
      Object localObject = g;
      paramEntry = paramEntry.getValue();
      if ((localObject == paramEntry) || ((localObject != null) && (localObject.equals(paramEntry))))
      {
        j = 1;
        if (j == 0) {
          break label72;
        }
      }
    }
    label72:
    for (int j = k;; j = 0)
    {
      if (j == 0) {
        break label78;
      }
      return localad;
      j = 0;
      break;
    }
    label78:
    return null;
  }
  
  final void a(ad<K, V> paramad, boolean paramBoolean)
  {
    int k = 0;
    if (paramBoolean)
    {
      e.d = d;
      d.e = e;
    }
    ad localad1 = b;
    ad localad2 = c;
    ad localad3 = a;
    int j;
    if ((localad1 != null) && (localad2 != null)) {
      if (h > h)
      {
        localad1 = localad1.b();
        a(localad1, false);
        localad2 = b;
        if (localad2 == null) {
          break label249;
        }
        j = h;
        b = localad2;
        a = localad1;
        b = null;
      }
    }
    for (;;)
    {
      localad2 = c;
      if (localad2 != null)
      {
        k = h;
        c = localad2;
        a = localad1;
        c = null;
      }
      h = (Math.max(j, k) + 1);
      a(paramad, localad1);
      return;
      localad1 = localad2.a();
      break;
      if (localad1 != null)
      {
        a(paramad, localad1);
        b = null;
      }
      for (;;)
      {
        b(localad3, false);
        c -= 1;
        d += 1;
        return;
        if (localad2 != null)
        {
          a(paramad, localad2);
          c = null;
        }
        else
        {
          a(paramad, null);
        }
      }
      label249:
      j = 0;
    }
  }
  
  public final void clear()
  {
    b = null;
    c = 0;
    d += 1;
    ad localad = e;
    e = localad;
    d = localad;
  }
  
  public final boolean containsKey(Object paramObject)
  {
    return b(paramObject) != null;
  }
  
  public final Set<Map.Entry<K, V>> entrySet()
  {
    y localy = h;
    if (localy != null) {
      return localy;
    }
    localy = new y(this);
    h = localy;
    return localy;
  }
  
  public final V get(Object paramObject)
  {
    paramObject = b(paramObject);
    if (paramObject != null) {
      return (V)g;
    }
    return null;
  }
  
  public final Set<K> keySet()
  {
    aa localaa = i;
    if (localaa != null) {
      return localaa;
    }
    localaa = new aa(this);
    i = localaa;
    return localaa;
  }
  
  public final V put(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    paramK = a(paramK, true);
    Object localObject = g;
    g = paramV;
    return (V)localObject;
  }
  
  public final V remove(Object paramObject)
  {
    paramObject = a(paramObject);
    if (paramObject != null) {
      return (V)g;
    }
    return null;
  }
  
  public final int size()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */