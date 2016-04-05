package com.google.a.b;

import java.util.Map.Entry;

final class ad<K, V>
  implements Map.Entry<K, V>
{
  ad<K, V> a;
  ad<K, V> b;
  ad<K, V> c;
  ad<K, V> d;
  ad<K, V> e;
  final K f;
  V g;
  int h;
  
  ad()
  {
    f = null;
    e = this;
    d = this;
  }
  
  ad(ad<K, V> paramad1, K paramK, ad<K, V> paramad2, ad<K, V> paramad3)
  {
    a = paramad1;
    f = paramK;
    h = 1;
    d = paramad2;
    e = paramad3;
    d = this;
    e = this;
  }
  
  public final ad<K, V> a()
  {
    Object localObject1 = b;
    Object localObject2 = this;
    while (localObject1 != null)
    {
      ad localad = b;
      localObject2 = localObject1;
      localObject1 = localad;
    }
    return (ad<K, V>)localObject2;
  }
  
  public final ad<K, V> b()
  {
    Object localObject1 = c;
    Object localObject2 = this;
    while (localObject1 != null)
    {
      ad localad = c;
      localObject2 = localObject1;
      localObject1 = localad;
    }
    return (ad<K, V>)localObject2;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      if (f != null) {
        break label56;
      }
      bool1 = bool2;
      if (((Map.Entry)paramObject).getKey() == null)
      {
        if (g != null) {
          break label77;
        }
        bool1 = bool2;
        if (((Map.Entry)paramObject).getValue() != null) {}
      }
    }
    for (;;)
    {
      bool1 = true;
      label56:
      label77:
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!f.equals(((Map.Entry)paramObject).getKey()));
        break;
        bool1 = bool2;
      } while (!g.equals(((Map.Entry)paramObject).getValue()));
    }
  }
  
  public final K getKey()
  {
    return (K)f;
  }
  
  public final V getValue()
  {
    return (V)g;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int i;
    if (f == null)
    {
      i = 0;
      if (g != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = f.hashCode();
      break;
      label33:
      j = g.hashCode();
    }
  }
  
  public final V setValue(V paramV)
  {
    Object localObject = g;
    g = paramV;
    return (V)localObject;
  }
  
  public final String toString()
  {
    return f + "=" + g;
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */