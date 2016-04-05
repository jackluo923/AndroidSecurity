package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

final class Session
  implements Map
{
  private final Map map = new HashMap();
  private final boolean strict;
  
  public Session()
  {
    this(true);
  }
  
  public Session(boolean paramBoolean)
  {
    strict = paramBoolean;
  }
  
  public final void clear()
  {
    map.clear();
  }
  
  public final boolean containsKey(Object paramObject)
  {
    return map.containsKey(paramObject);
  }
  
  public final boolean containsValue(Object paramObject)
  {
    return map.containsValue(paramObject);
  }
  
  public final Set entrySet()
  {
    return map.entrySet();
  }
  
  public final Object get(Object paramObject)
  {
    return map.get(paramObject);
  }
  
  public final Map getMap()
  {
    return map;
  }
  
  public final boolean isEmpty()
  {
    return map.isEmpty();
  }
  
  public final boolean isStrict()
  {
    return strict;
  }
  
  public final Set keySet()
  {
    return map.keySet();
  }
  
  public final Object put(Object paramObject1, Object paramObject2)
  {
    return map.put(paramObject1, paramObject2);
  }
  
  public final void putAll(Map paramMap)
  {
    map.putAll(paramMap);
  }
  
  public final Object remove(Object paramObject)
  {
    return map.remove(paramObject);
  }
  
  public final int size()
  {
    return map.size();
  }
  
  public final Collection values()
  {
    return map.values();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Session
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */