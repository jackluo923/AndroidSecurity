package com.millennialmedia.google.gson.internal;

import java.util.Map.Entry;

final class LinkedHashTreeMap$Node<K, V>
  implements Map.Entry<K, V>
{
  final int hash;
  int height;
  final K key;
  Node<K, V> left;
  Node<K, V> next;
  Node<K, V> parent;
  Node<K, V> prev;
  Node<K, V> right;
  V value;
  
  LinkedHashTreeMap$Node()
  {
    key = null;
    hash = -1;
    prev = this;
    next = this;
  }
  
  LinkedHashTreeMap$Node(Node<K, V> paramNode1, K paramK, int paramInt, Node<K, V> paramNode2, Node<K, V> paramNode3)
  {
    parent = paramNode1;
    key = paramK;
    hash = paramInt;
    height = 1;
    next = paramNode2;
    prev = paramNode3;
    next = this;
    prev = this;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      if (key != null) {
        break label56;
      }
      bool1 = bool2;
      if (((Map.Entry)paramObject).getKey() == null)
      {
        if (value != null) {
          break label77;
        }
        bool1 = bool2;
        if (((Map.Entry)paramObject).getValue() != null) {}
      }
    }
    for (;;)
    {
      bool1 = true;
      label56:
      label77:
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!key.equals(((Map.Entry)paramObject).getKey()));
        break;
        bool1 = bool2;
      } while (!value.equals(((Map.Entry)paramObject).getValue()));
    }
  }
  
  public final Node<K, V> first()
  {
    Object localObject1 = left;
    Object localObject2 = this;
    while (localObject1 != null)
    {
      Node localNode = left;
      localObject2 = localObject1;
      localObject1 = localNode;
    }
    return (Node<K, V>)localObject2;
  }
  
  public final K getKey()
  {
    return (K)key;
  }
  
  public final V getValue()
  {
    return (V)value;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int i;
    if (key == null)
    {
      i = 0;
      if (value != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = key.hashCode();
      break;
      label33:
      j = value.hashCode();
    }
  }
  
  public final Node<K, V> last()
  {
    Object localObject1 = right;
    Object localObject2 = this;
    while (localObject1 != null)
    {
      Node localNode = right;
      localObject2 = localObject1;
      localObject1 = localNode;
    }
    return (Node<K, V>)localObject2;
  }
  
  public final V setValue(V paramV)
  {
    Object localObject = value;
    value = paramV;
    return (V)localObject;
  }
  
  public final String toString()
  {
    return key + "=" + value;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.LinkedHashTreeMap.Node
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */