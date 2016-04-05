package com.millennialmedia.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;

class LinkedHashTreeMap$KeySet
  extends AbstractSet<K>
{
  LinkedHashTreeMap$KeySet(LinkedHashTreeMap paramLinkedHashTreeMap) {}
  
  public void clear()
  {
    this$0.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return this$0.containsKey(paramObject);
  }
  
  public Iterator<K> iterator()
  {
    return new LinkedHashTreeMap.KeySet.1(this);
  }
  
  public boolean remove(Object paramObject)
  {
    return this$0.removeInternalByKey(paramObject) != null;
  }
  
  public int size()
  {
    return this$0.size;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.LinkedHashTreeMap.KeySet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */