package com.millennialmedia.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class LinkedHashTreeMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable
{
  private static final Comparator<Comparable> NATURAL_ORDER;
  Comparator<? super K> comparator;
  private LinkedHashTreeMap<K, V>.EntrySet entrySet;
  final LinkedHashTreeMap.Node<K, V> header;
  private LinkedHashTreeMap<K, V>.KeySet keySet;
  int modCount = 0;
  int size = 0;
  LinkedHashTreeMap.Node<K, V>[] table;
  int threshold;
  
  static
  {
    if (!LinkedHashTreeMap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      NATURAL_ORDER = new LinkedHashTreeMap.1();
      return;
    }
  }
  
  public LinkedHashTreeMap()
  {
    this(NATURAL_ORDER);
  }
  
  public LinkedHashTreeMap(Comparator<? super K> paramComparator)
  {
    if (paramComparator != null) {}
    for (;;)
    {
      comparator = paramComparator;
      header = new LinkedHashTreeMap.Node();
      table = new LinkedHashTreeMap.Node[16];
      threshold = (table.length / 2 + table.length / 4);
      return;
      paramComparator = NATURAL_ORDER;
    }
  }
  
  private void doubleCapacity()
  {
    table = doubleCapacity(table);
    threshold = (table.length / 2 + table.length / 4);
  }
  
  static <K, V> LinkedHashTreeMap.Node<K, V>[] doubleCapacity(LinkedHashTreeMap.Node<K, V>[] paramArrayOfNode)
  {
    int m = paramArrayOfNode.length;
    LinkedHashTreeMap.Node[] arrayOfNode = new LinkedHashTreeMap.Node[m * 2];
    LinkedHashTreeMap.AvlIterator localAvlIterator = new LinkedHashTreeMap.AvlIterator();
    LinkedHashTreeMap.AvlBuilder localAvlBuilder1 = new LinkedHashTreeMap.AvlBuilder();
    LinkedHashTreeMap.AvlBuilder localAvlBuilder2 = new LinkedHashTreeMap.AvlBuilder();
    int i = 0;
    if (i < m)
    {
      Object localObject2 = paramArrayOfNode[i];
      int j;
      Object localObject1;
      if (localObject2 != null)
      {
        localAvlIterator.reset((LinkedHashTreeMap.Node)localObject2);
        int k = 0;
        j = 0;
        for (;;)
        {
          localObject1 = localAvlIterator.next();
          if (localObject1 == null) {
            break;
          }
          if ((hash & m) == 0) {
            j += 1;
          } else {
            k += 1;
          }
        }
        if ((j <= 0) || (k <= 0)) {
          break label210;
        }
        localAvlBuilder1.reset(j);
        localAvlBuilder2.reset(k);
        localAvlIterator.reset((LinkedHashTreeMap.Node)localObject2);
        for (;;)
        {
          localObject1 = localAvlIterator.next();
          if (localObject1 == null) {
            break;
          }
          if ((hash & m) == 0) {
            localAvlBuilder1.add((LinkedHashTreeMap.Node)localObject1);
          } else {
            localAvlBuilder2.add((LinkedHashTreeMap.Node)localObject1);
          }
        }
        localObject2 = localAvlBuilder1.root();
        localObject1 = localAvlBuilder2.root();
      }
      for (;;)
      {
        arrayOfNode[i] = localObject2;
        arrayOfNode[(i + m)] = localObject1;
        i += 1;
        break;
        label210:
        if (j > 0)
        {
          localObject1 = null;
        }
        else
        {
          localObject1 = localObject2;
          localObject2 = null;
        }
      }
    }
    return arrayOfNode;
  }
  
  private boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  private void rebalance(LinkedHashTreeMap.Node<K, V> paramNode, boolean paramBoolean)
  {
    LinkedHashTreeMap.Node localNode1;
    LinkedHashTreeMap.Node localNode2;
    int i;
    label25:
    int j;
    label37:
    int k;
    LinkedHashTreeMap.Node localNode3;
    if (paramNode != null)
    {
      localNode1 = left;
      localNode2 = right;
      if (localNode1 != null)
      {
        i = height;
        if (localNode2 == null) {
          break label131;
        }
        j = height;
        k = i - j;
        if (k != -2) {
          break label183;
        }
        localNode1 = left;
        localNode3 = right;
        if (localNode3 == null) {
          break label137;
        }
        i = height;
        label76:
        if (localNode1 == null) {
          break label143;
        }
        j = height;
        label86:
        i = j - i;
        if ((i != -1) && ((i != 0) || (paramBoolean))) {
          break label149;
        }
        rotateLeft(paramNode);
        label113:
        if (paramBoolean) {
          break label256;
        }
      }
    }
    for (;;)
    {
      paramNode = parent;
      break;
      i = 0;
      break label25;
      label131:
      j = 0;
      break label37;
      label137:
      i = 0;
      break label76;
      label143:
      j = 0;
      break label86;
      label149:
      assert (i == 1);
      rotateRight(localNode2);
      rotateLeft(paramNode);
      break label113;
      label183:
      if (k == 2)
      {
        localNode2 = left;
        localNode3 = right;
        if (localNode3 != null)
        {
          i = height;
          label213:
          if (localNode2 == null) {
            break label263;
          }
          j = height;
          label225:
          i = j - i;
          if ((i != 1) && ((i != 0) || (paramBoolean))) {
            break label269;
          }
          rotateRight(paramNode);
          label252:
          if (!paramBoolean) {
            break label300;
          }
        }
      }
      label256:
      label263:
      label269:
      label300:
      do
      {
        return;
        i = 0;
        break label213;
        j = 0;
        break label225;
        assert (i == -1);
        rotateLeft(localNode1);
        rotateRight(paramNode);
        break label252;
        break;
        if (k == 0)
        {
          height = (i + 1);
          if (!paramBoolean) {
            break;
          }
          return;
        }
        assert ((k == -1) || (k == 1));
        height = (Math.max(i, j) + 1);
      } while (!paramBoolean);
    }
  }
  
  private void replaceInParent(LinkedHashTreeMap.Node<K, V> paramNode1, LinkedHashTreeMap.Node<K, V> paramNode2)
  {
    LinkedHashTreeMap.Node localNode = parent;
    parent = null;
    if (paramNode2 != null) {
      parent = localNode;
    }
    if (localNode != null)
    {
      if (left == paramNode1)
      {
        left = paramNode2;
        return;
      }
      assert (right == paramNode1);
      right = paramNode2;
      return;
    }
    int i = hash;
    int j = table.length;
    table[(i & j - 1)] = paramNode2;
  }
  
  private void rotateLeft(LinkedHashTreeMap.Node<K, V> paramNode)
  {
    int k = 0;
    LinkedHashTreeMap.Node localNode1 = left;
    LinkedHashTreeMap.Node localNode2 = right;
    LinkedHashTreeMap.Node localNode3 = left;
    LinkedHashTreeMap.Node localNode4 = right;
    right = localNode3;
    if (localNode3 != null) {
      parent = paramNode;
    }
    replaceInParent(paramNode, localNode2);
    left = paramNode;
    parent = localNode2;
    int i;
    if (localNode1 != null)
    {
      i = height;
      if (localNode3 == null) {
        break label135;
      }
    }
    label135:
    for (int j = height;; j = 0)
    {
      height = (Math.max(i, j) + 1);
      j = height;
      i = k;
      if (localNode4 != null) {
        i = height;
      }
      height = (Math.max(j, i) + 1);
      return;
      i = 0;
      break;
    }
  }
  
  private void rotateRight(LinkedHashTreeMap.Node<K, V> paramNode)
  {
    int k = 0;
    LinkedHashTreeMap.Node localNode1 = left;
    LinkedHashTreeMap.Node localNode2 = right;
    LinkedHashTreeMap.Node localNode3 = left;
    LinkedHashTreeMap.Node localNode4 = right;
    left = localNode4;
    if (localNode4 != null) {
      parent = paramNode;
    }
    replaceInParent(paramNode, localNode1);
    right = paramNode;
    parent = localNode1;
    int i;
    if (localNode2 != null)
    {
      i = height;
      if (localNode4 == null) {
        break label135;
      }
    }
    label135:
    for (int j = height;; j = 0)
    {
      height = (Math.max(i, j) + 1);
      j = height;
      i = k;
      if (localNode3 != null) {
        i = height;
      }
      height = (Math.max(j, i) + 1);
      return;
      i = 0;
      break;
    }
  }
  
  private static int secondaryHash(int paramInt)
  {
    paramInt = paramInt >>> 20 ^ paramInt >>> 12 ^ paramInt;
    return paramInt >>> 4 ^ paramInt >>> 7 ^ paramInt;
  }
  
  private Object writeReplace()
  {
    return new LinkedHashMap(this);
  }
  
  public final void clear()
  {
    Arrays.fill(table, null);
    size = 0;
    modCount += 1;
    LinkedHashTreeMap.Node localNode2 = header;
    LinkedHashTreeMap.Node localNode1;
    for (Object localObject = next; localObject != localNode2; localObject = localNode1)
    {
      localNode1 = next;
      prev = null;
      next = null;
    }
    prev = localNode2;
    next = localNode2;
  }
  
  public final boolean containsKey(Object paramObject)
  {
    return findByObject(paramObject) != null;
  }
  
  public final Set<Map.Entry<K, V>> entrySet()
  {
    LinkedHashTreeMap.EntrySet localEntrySet = entrySet;
    if (localEntrySet != null) {
      return localEntrySet;
    }
    localEntrySet = new LinkedHashTreeMap.EntrySet(this);
    entrySet = localEntrySet;
    return localEntrySet;
  }
  
  final LinkedHashTreeMap.Node<K, V> find(K paramK, boolean paramBoolean)
  {
    Object localObject3 = null;
    Comparator localComparator = comparator;
    LinkedHashTreeMap.Node[] arrayOfNode = table;
    int j = secondaryHash(paramK.hashCode());
    int k = j & arrayOfNode.length - 1;
    Object localObject1 = arrayOfNode[k];
    int i;
    Object localObject2;
    if (localObject1 != null)
    {
      Comparable localComparable;
      if (localComparator == NATURAL_ORDER)
      {
        localComparable = (Comparable)paramK;
        if (localComparable == null) {
          break label93;
        }
      }
      label93:
      for (i = localComparable.compareTo(key);; i = localComparator.compare(paramK, key))
      {
        if (i != 0) {
          break label110;
        }
        localObject2 = localObject1;
        return (LinkedHashTreeMap.Node<K, V>)localObject2;
        localComparable = null;
        break;
      }
      label110:
      if (i < 0) {}
      for (localObject2 = left;; localObject2 = right)
      {
        if (localObject2 == null) {
          break label141;
        }
        localObject1 = localObject2;
        break;
      }
    }
    for (;;)
    {
      label141:
      localObject2 = localObject3;
      if (!paramBoolean) {
        break;
      }
      localObject2 = header;
      if (localObject1 == null)
      {
        if ((localComparator == NATURAL_ORDER) && (!(paramK instanceof Comparable))) {
          throw new ClassCastException(paramK.getClass().getName() + " is not Comparable");
        }
        paramK = new LinkedHashTreeMap.Node((LinkedHashTreeMap.Node)localObject1, paramK, j, (LinkedHashTreeMap.Node)localObject2, prev);
        arrayOfNode[k] = paramK;
        i = size;
        size = (i + 1);
        if (i > threshold) {
          doubleCapacity();
        }
        modCount += 1;
        return paramK;
      }
      paramK = new LinkedHashTreeMap.Node((LinkedHashTreeMap.Node)localObject1, paramK, j, (LinkedHashTreeMap.Node)localObject2, prev);
      if (i < 0) {
        left = paramK;
      }
      for (;;)
      {
        rebalance((LinkedHashTreeMap.Node)localObject1, true);
        break;
        right = paramK;
      }
      i = 0;
    }
  }
  
  final LinkedHashTreeMap.Node<K, V> findByEntry(Map.Entry<?, ?> paramEntry)
  {
    LinkedHashTreeMap.Node localNode = findByObject(paramEntry.getKey());
    if ((localNode != null) && (equal(value, paramEntry.getValue()))) {}
    for (int i = 1; i != 0; i = 0) {
      return localNode;
    }
    return null;
  }
  
  final LinkedHashTreeMap.Node<K, V> findByObject(Object paramObject)
  {
    LinkedHashTreeMap.Node localNode = null;
    if (paramObject != null) {}
    try
    {
      localNode = find(paramObject, false);
      return localNode;
    }
    catch (ClassCastException paramObject) {}
    return null;
  }
  
  public final V get(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      return (V)value;
    }
    return null;
  }
  
  public final Set<K> keySet()
  {
    LinkedHashTreeMap.KeySet localKeySet = keySet;
    if (localKeySet != null) {
      return localKeySet;
    }
    localKeySet = new LinkedHashTreeMap.KeySet(this);
    keySet = localKeySet;
    return localKeySet;
  }
  
  public final V put(K paramK, V paramV)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    paramK = find(paramK, true);
    Object localObject = value;
    value = paramV;
    return (V)localObject;
  }
  
  public final V remove(Object paramObject)
  {
    paramObject = removeInternalByKey(paramObject);
    if (paramObject != null) {
      return (V)value;
    }
    return null;
  }
  
  final void removeInternal(LinkedHashTreeMap.Node<K, V> paramNode, boolean paramBoolean)
  {
    int j = 0;
    if (paramBoolean)
    {
      prev.next = next;
      next.prev = prev;
      prev = null;
      next = null;
    }
    LinkedHashTreeMap.Node localNode1 = left;
    LinkedHashTreeMap.Node localNode2 = right;
    LinkedHashTreeMap.Node localNode3 = parent;
    int i;
    if ((localNode1 != null) && (localNode2 != null)) {
      if (height > height)
      {
        localNode1 = localNode1.last();
        removeInternal(localNode1, false);
        localNode2 = left;
        if (localNode2 == null) {
          break label259;
        }
        i = height;
        left = localNode2;
        parent = localNode1;
        left = null;
      }
    }
    for (;;)
    {
      localNode2 = right;
      if (localNode2 != null)
      {
        j = height;
        right = localNode2;
        parent = localNode1;
        right = null;
      }
      height = (Math.max(i, j) + 1);
      replaceInParent(paramNode, localNode1);
      return;
      localNode1 = localNode2.first();
      break;
      if (localNode1 != null)
      {
        replaceInParent(paramNode, localNode1);
        left = null;
      }
      for (;;)
      {
        rebalance(localNode3, false);
        size -= 1;
        modCount += 1;
        return;
        if (localNode2 != null)
        {
          replaceInParent(paramNode, localNode2);
          right = null;
        }
        else
        {
          replaceInParent(paramNode, null);
        }
      }
      label259:
      i = 0;
    }
  }
  
  final LinkedHashTreeMap.Node<K, V> removeInternalByKey(Object paramObject)
  {
    paramObject = findByObject(paramObject);
    if (paramObject != null) {
      removeInternal((LinkedHashTreeMap.Node)paramObject, true);
    }
    return (LinkedHashTreeMap.Node<K, V>)paramObject;
  }
  
  public final int size()
  {
    return size;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.LinkedHashTreeMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */