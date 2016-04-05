package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class hr<K, V>
{
  private final LinkedHashMap<K, V> GJ;
  private int GK;
  private int GL;
  private int GM;
  private int GN;
  private int GO;
  private int GP;
  private int size;
  
  public hr(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    GK = paramInt;
    GJ = new LinkedHashMap(0, 0.75F, true);
  }
  
  private int c(K paramK, V paramV)
  {
    int i = sizeOf(paramK, paramV);
    if (i < 0) {
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    }
    return i;
  }
  
  protected V create(K paramK)
  {
    return null;
  }
  
  public void entryRemoved(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final void evictAll()
  {
    trimToSize(-1);
  }
  
  public final V get(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    Object localObject1;
    try
    {
      localObject1 = GJ.get(paramK);
      if (localObject1 != null)
      {
        GO += 1;
        return (V)localObject1;
      }
      GP += 1;
      localObject1 = create(paramK);
      if (localObject1 == null) {
        return null;
      }
    }
    finally {}
    try
    {
      GM += 1;
      Object localObject2 = GJ.put(paramK, localObject1);
      if (localObject2 != null) {
        GJ.put(paramK, localObject2);
      }
      for (;;)
      {
        if (localObject2 == null) {
          break;
        }
        entryRemoved(false, paramK, localObject1, localObject2);
        return (V)localObject2;
        size += c(paramK, localObject1);
      }
      trimToSize(GK);
    }
    finally {}
    return (V)localObject1;
  }
  
  public final V put(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      GL += 1;
      size += c(paramK, paramV);
      Object localObject = GJ.put(paramK, paramV);
      if (localObject != null) {
        size -= c(paramK, localObject);
      }
      if (localObject != null) {
        entryRemoved(false, paramK, localObject, paramV);
      }
      trimToSize(GK);
      return (V)localObject;
    }
    finally {}
  }
  
  public final int size()
  {
    try
    {
      int i = size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected int sizeOf(K paramK, V paramV)
  {
    return 1;
  }
  
  public final String toString()
  {
    int i = 0;
    try
    {
      int j = GO + GP;
      if (j != 0) {
        i = GO * 100 / j;
      }
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(GK), Integer.valueOf(GO), Integer.valueOf(GP), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
  
  public void trimToSize(int paramInt)
  {
    Object localObject3;
    Object localObject2;
    try
    {
      if ((size < 0) || ((GJ.isEmpty()) && (size != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw ((Throwable)localObject1);
      if ((size <= paramInt) || (GJ.isEmpty())) {
        return;
      }
      localObject3 = (Map.Entry)GJ.entrySet().iterator().next();
      localObject2 = ((Map.Entry)localObject3).getKey();
      localObject3 = ((Map.Entry)localObject3).getValue();
      GJ.remove(localObject2);
      size -= c(localObject2, localObject3);
      GN += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */