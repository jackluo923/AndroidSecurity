package com.millennialmedia.google.gson.internal;

class LinkedHashTreeMap$AvlIterator<K, V>
{
  private LinkedHashTreeMap.Node<K, V> stackTop;
  
  public LinkedHashTreeMap.Node<K, V> next()
  {
    LinkedHashTreeMap.Node localNode2 = stackTop;
    if (localNode2 == null) {
      return null;
    }
    Object localObject2 = parent;
    parent = null;
    LinkedHashTreeMap.Node localNode1;
    for (Object localObject1 = right; localObject1 != null; localObject1 = localNode1)
    {
      parent = ((LinkedHashTreeMap.Node)localObject2);
      localNode1 = left;
      localObject2 = localObject1;
    }
    stackTop = ((LinkedHashTreeMap.Node)localObject2);
    return localNode2;
  }
  
  void reset(LinkedHashTreeMap.Node<K, V> paramNode)
  {
    LinkedHashTreeMap.Node<K, V> localNode = null;
    while (paramNode != null)
    {
      parent = localNode;
      LinkedHashTreeMap.Node localNode1 = left;
      localNode = paramNode;
      paramNode = localNode1;
    }
    stackTop = localNode;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.LinkedHashTreeMap.AvlIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */