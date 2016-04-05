package com.j256.ormlite.dao;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class LruObjectCache
  implements ObjectCache
{
  private final int capacity;
  private final ConcurrentHashMap<Class<?>, Map<Object, Object>> classMaps = new ConcurrentHashMap();
  
  public LruObjectCache(int paramInt)
  {
    capacity = paramInt;
  }
  
  private Map<Object, Object> getMapForClass(Class<?> paramClass)
  {
    Map localMap = (Map)classMaps.get(paramClass);
    paramClass = localMap;
    if (localMap == null) {
      paramClass = null;
    }
    return paramClass;
  }
  
  public <T> void clear(Class<T> paramClass)
  {
    paramClass = getMapForClass(paramClass);
    if (paramClass != null) {
      paramClass.clear();
    }
  }
  
  public void clearAll()
  {
    Iterator localIterator = classMaps.values().iterator();
    while (localIterator.hasNext()) {
      ((Map)localIterator.next()).clear();
    }
  }
  
  public <T, ID> T get(Class<T> paramClass, ID paramID)
  {
    paramClass = getMapForClass(paramClass);
    if (paramClass == null) {
      return null;
    }
    return (T)paramClass.get(paramID);
  }
  
  public <T, ID> void put(Class<T> paramClass, ID paramID, T paramT)
  {
    paramClass = getMapForClass(paramClass);
    if (paramClass != null) {
      paramClass.put(paramID, paramT);
    }
  }
  
  public <T> void registerClass(Class<T> paramClass)
  {
    try
    {
      if ((Map)classMaps.get(paramClass) == null)
      {
        Map localMap = Collections.synchronizedMap(new LruObjectCache.LimitedLinkedHashMap(capacity));
        classMaps.put(paramClass, localMap);
      }
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <T, ID> void remove(Class<T> paramClass, ID paramID)
  {
    paramClass = getMapForClass(paramClass);
    if (paramClass != null) {
      paramClass.remove(paramID);
    }
  }
  
  public <T> int size(Class<T> paramClass)
  {
    paramClass = getMapForClass(paramClass);
    if (paramClass == null) {
      return 0;
    }
    return paramClass.size();
  }
  
  public int sizeAll()
  {
    Iterator localIterator = classMaps.values().iterator();
    for (int i = 0; localIterator.hasNext(); i = ((Map)localIterator.next()).size() + i) {}
    return i;
  }
  
  public <T, ID> T updateId(Class<T> paramClass, ID paramID1, ID paramID2)
  {
    paramClass = getMapForClass(paramClass);
    if (paramClass == null) {}
    do
    {
      return null;
      paramID1 = paramClass.remove(paramID1);
    } while (paramID1 == null);
    paramClass.put(paramID2, paramID1);
    return paramID1;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.LruObjectCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */