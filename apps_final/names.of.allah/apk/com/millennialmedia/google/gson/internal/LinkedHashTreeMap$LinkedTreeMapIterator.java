package com.millennialmedia.google.gson.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class LinkedHashTreeMap$LinkedTreeMapIterator<T>
  implements Iterator<T>
{
  int expectedModCount = this$0.modCount;
  LinkedHashTreeMap.Node<K, V> lastReturned = null;
  LinkedHashTreeMap.Node<K, V> next = this$0.header.next;
  
  private LinkedHashTreeMap$LinkedTreeMapIterator(LinkedHashTreeMap paramLinkedHashTreeMap) {}
  
  public final boolean hasNext()
  {
    return next != this$0.header;
  }
  
  final LinkedHashTreeMap.Node<K, V> nextNode()
  {
    LinkedHashTreeMap.Node localNode = next;
    if (localNode == this$0.header) {
      throw new NoSuchElementException();
    }
    if (this$0.modCount != expectedModCount) {
      throw new ConcurrentModificationException();
    }
    next = next;
    lastReturned = localNode;
    return localNode;
  }
  
  public final void remove()
  {
    if (lastReturned == null) {
      throw new IllegalStateException();
    }
    this$0.removeInternal(lastReturned, true);
    lastReturned = null;
    expectedModCount = this$0.modCount;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.LinkedHashTreeMap.LinkedTreeMapIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */