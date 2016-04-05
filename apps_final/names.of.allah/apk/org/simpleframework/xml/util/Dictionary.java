package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;

public class Dictionary<T extends Entry>
  extends AbstractSet<T>
{
  protected final Dictionary.Table<T> map = new Dictionary.Table();
  
  public boolean add(T paramT)
  {
    return map.put(paramT.getName(), paramT) != null;
  }
  
  public T get(String paramString)
  {
    return (Entry)map.get(paramString);
  }
  
  public Iterator<T> iterator()
  {
    return map.values().iterator();
  }
  
  public T remove(String paramString)
  {
    return (Entry)map.remove(paramString);
  }
  
  public int size()
  {
    return map.size();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Dictionary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */