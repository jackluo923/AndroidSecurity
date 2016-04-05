package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;

class l<K, V>
{
  final l.a<K, V> aeo = new l.1(this);
  
  public k<K, V> a(int paramInt, l.a<K, V> parama)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (le() < 12) {
      return new cz(paramInt, parama);
    }
    return new bb(paramInt, parama);
  }
  
  int le()
  {
    return Build.VERSION.SDK_INT;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */