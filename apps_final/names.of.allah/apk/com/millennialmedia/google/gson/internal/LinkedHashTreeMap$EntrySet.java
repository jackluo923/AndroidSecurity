package com.millennialmedia.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

class LinkedHashTreeMap$EntrySet
  extends AbstractSet<Map.Entry<K, V>>
{
  LinkedHashTreeMap$EntrySet(LinkedHashTreeMap paramLinkedHashTreeMap) {}
  
  public void clear()
  {
    this$0.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return ((paramObject instanceof Map.Entry)) && (this$0.findByEntry((Map.Entry)paramObject) != null);
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    return new LinkedHashTreeMap.EntrySet.1(this);
  }
  
  public boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {}
    do
    {
      return false;
      paramObject = this$0.findByEntry((Map.Entry)paramObject);
    } while (paramObject == null);
    this$0.removeInternal((LinkedHashTreeMap.Node)paramObject, true);
    return true;
  }
  
  public int size()
  {
    return this$0.size;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.LinkedHashTreeMap.EntrySet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */