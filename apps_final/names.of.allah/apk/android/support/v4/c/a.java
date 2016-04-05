package android.support.v4.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a<K, V>
  extends l<K, V>
  implements Map<K, V>
{
  f<K, V> a;
  
  private f<K, V> b()
  {
    if (a == null) {
      a = new b(this);
    }
    return a;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    f localf = b();
    if (b == null) {
      b = new h(localf);
    }
    return b;
  }
  
  public Set<K> keySet()
  {
    f localf = b();
    if (c == null) {
      c = new i(localf);
    }
    return c;
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    int i = h + paramMap.size();
    Object localObject;
    if (f.length < i)
    {
      localObject = f;
      Object[] arrayOfObject = g;
      super.a(i);
      if (h > 0)
      {
        System.arraycopy(localObject, 0, f, 0, h);
        System.arraycopy(arrayOfObject, 0, g, 0, h << 1);
      }
      l.a((int[])localObject, arrayOfObject, h);
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject = (Map.Entry)paramMap.next();
      put(((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
    }
  }
  
  public Collection<V> values()
  {
    f localf = b();
    if (d == null) {
      d = new k(localf);
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */