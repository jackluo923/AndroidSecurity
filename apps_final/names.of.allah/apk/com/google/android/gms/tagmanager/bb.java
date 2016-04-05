package com.google.android.gms.tagmanager;

import android.util.LruCache;

class bb<K, V>
  implements k<K, V>
{
  private LruCache<K, V> afZ;
  
  bb(int paramInt, l.a<K, V> parama)
  {
    afZ = new bb.1(this, paramInt, parama);
  }
  
  public void e(K paramK, V paramV)
  {
    afZ.put(paramK, paramV);
  }
  
  public V get(K paramK)
  {
    return (V)afZ.get(paramK);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */