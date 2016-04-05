package com.google.android.gms.tagmanager;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class cz<K, V>
  implements k<K, V>
{
  private final Map<K, V> ahU = new HashMap();
  private final int ahV;
  private final l.a<K, V> ahW;
  private int ahX;
  
  cz(int paramInt, l.a<K, V> parama)
  {
    ahV = paramInt;
    ahW = parama;
  }
  
  public void e(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      try
      {
        throw new NullPointerException("key == null || value == null");
      }
      finally {}
    }
    ahX += ahW.sizeOf(paramK, paramV);
    if (ahX > ahV)
    {
      Iterator localIterator = ahU.entrySet().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        ahX -= ahW.sizeOf(localEntry.getKey(), localEntry.getValue());
        localIterator.remove();
      } while (ahX > ahV);
    }
    ahU.put(paramK, paramV);
  }
  
  public V get(K paramK)
  {
    try
    {
      paramK = ahU.get(paramK);
      return paramK;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */