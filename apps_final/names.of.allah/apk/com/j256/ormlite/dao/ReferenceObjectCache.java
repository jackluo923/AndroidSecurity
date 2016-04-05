package com.j256.ormlite.dao;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class ReferenceObjectCache
  implements ObjectCache
{
  private final ConcurrentHashMap<Class<?>, Map<Object, Reference<Object>>> classMaps = new ConcurrentHashMap();
  private final boolean useWeak;
  
  public ReferenceObjectCache(boolean paramBoolean)
  {
    useWeak = paramBoolean;
  }
  
  private void cleanMap(Map<Object, Reference<Object>> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext()) {
      if (((Reference)((Map.Entry)paramMap.next()).getValue()).get() == null) {
        paramMap.remove();
      }
    }
  }
  
  private Map<Object, Reference<Object>> getMapForClass(Class<?> paramClass)
  {
    Map localMap = (Map)classMaps.get(paramClass);
    paramClass = localMap;
    if (localMap == null) {
      paramClass = null;
    }
    return paramClass;
  }
  
  public static ReferenceObjectCache makeSoftCache()
  {
    return new ReferenceObjectCache(false);
  }
  
  public static ReferenceObjectCache makeWeakCache()
  {
    return new ReferenceObjectCache(true);
  }
  
  public <T> void cleanNullReferences(Class<T> paramClass)
  {
    paramClass = getMapForClass(paramClass);
    if (paramClass != null) {
      cleanMap(paramClass);
    }
  }
  
  public <T> void cleanNullReferencesAll()
  {
    Iterator localIterator = classMaps.values().iterator();
    while (localIterator.hasNext()) {
      cleanMap((Map)localIterator.next());
    }
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
    Map localMap = getMapForClass(paramClass);
    if (localMap == null) {
      paramClass = null;
    }
    Object localObject;
    do
    {
      return paramClass;
      paramClass = (Reference)localMap.get(paramID);
      if (paramClass == null) {
        return null;
      }
      localObject = paramClass.get();
      paramClass = (Class<T>)localObject;
    } while (localObject != null);
    localMap.remove(paramID);
    return null;
  }
  
  public <T, ID> void put(Class<T> paramClass, ID paramID, T paramT)
  {
    paramClass = getMapForClass(paramClass);
    if (paramClass != null)
    {
      if (useWeak) {
        paramClass.put(paramID, new WeakReference(paramT));
      }
    }
    else {
      return;
    }
    paramClass.put(paramID, new SoftReference(paramT));
  }
  
  public <T> void registerClass(Class<T> paramClass)
  {
    try
    {
      if ((Map)classMaps.get(paramClass) == null)
      {
        ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
        classMaps.put(paramClass, localConcurrentHashMap);
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
    if (paramClass == null) {
      return null;
    }
    paramID1 = (Reference)paramClass.remove(paramID1);
    if (paramID1 == null) {
      return null;
    }
    paramClass.put(paramID2, paramID1);
    return (T)paramID1.get();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.ReferenceObjectCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */