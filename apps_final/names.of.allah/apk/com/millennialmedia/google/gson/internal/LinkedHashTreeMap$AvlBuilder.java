package com.millennialmedia.google.gson.internal;

final class LinkedHashTreeMap$AvlBuilder<K, V>
{
  private int leavesSkipped;
  private int leavesToSkip;
  private int size;
  private LinkedHashTreeMap.Node<K, V> stack;
  
  final void add(LinkedHashTreeMap.Node<K, V> paramNode)
  {
    right = null;
    parent = null;
    left = null;
    height = 1;
    if ((leavesToSkip > 0) && ((size & 0x1) == 0))
    {
      size += 1;
      leavesToSkip -= 1;
      leavesSkipped += 1;
    }
    parent = stack;
    stack = paramNode;
    size += 1;
    if ((leavesToSkip > 0) && ((size & 0x1) == 0))
    {
      size += 1;
      leavesToSkip -= 1;
      leavesSkipped += 1;
    }
    int i = 4;
    if ((size & i - 1) == i - 1)
    {
      LinkedHashTreeMap.Node localNode1;
      if (leavesSkipped == 0)
      {
        paramNode = stack;
        localNode1 = parent;
        LinkedHashTreeMap.Node localNode2 = parent;
        parent = parent;
        stack = localNode1;
        left = localNode2;
        right = paramNode;
        height += 1;
        parent = localNode1;
        parent = localNode1;
      }
      for (;;)
      {
        i *= 2;
        break;
        if (leavesSkipped == 1)
        {
          paramNode = stack;
          localNode1 = parent;
          stack = localNode1;
          right = paramNode;
          height += 1;
          parent = localNode1;
          leavesSkipped = 0;
        }
        else if (leavesSkipped == 2)
        {
          leavesSkipped = 0;
        }
      }
    }
  }
  
  final void reset(int paramInt)
  {
    leavesToSkip = (Integer.highestOneBit(paramInt) * 2 - 1 - paramInt);
    size = 0;
    leavesSkipped = 0;
    stack = null;
  }
  
  final LinkedHashTreeMap.Node<K, V> root()
  {
    LinkedHashTreeMap.Node localNode = stack;
    if (parent != null) {
      throw new IllegalStateException();
    }
    return localNode;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.LinkedHashTreeMap.AvlBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */