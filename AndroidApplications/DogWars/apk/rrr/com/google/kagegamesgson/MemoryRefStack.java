package com.google.kagegamesgson;

import java.util.Iterator;
import java.util.Stack;

final class MemoryRefStack
{
  private final Stack stack;
  
  MemoryRefStack()
  {
    Stack localStack = new java/util/Stack;
    localStack.<init>();
    stack = localStack;
  }
  
  public boolean contains(ObjectTypePair paramObjectTypePair)
  {
    boolean bool4 = false;
    boolean bool1;
    if (paramObjectTypePair == null) {
      bool1 = bool4;
    }
    for (;;)
    {
      return bool1;
      Stack localStack = stack;
      Iterator localIterator = localStack.iterator();
      do
      {
        Object localObject1;
        do
        {
          boolean bool2 = localIterator.hasNext();
          if (!bool2) {
            break;
          }
          localObject1 = localIterator.next();
          localObject1 = (ObjectTypePair)localObject1;
          localObject2 = ((ObjectTypePair)localObject1).getObject();
          localObject3 = paramObjectTypePair.getObject();
        } while (localObject2 != localObject3);
        Object localObject2 = type;
        Object localObject3 = type;
        bool3 = localObject2.equals(localObject3);
      } while (!bool3);
      boolean bool3 = true;
      continue;
      bool3 = bool4;
    }
  }
  
  public boolean isEmpty()
  {
    Stack localStack = stack;
    boolean bool = localStack.isEmpty();
    return bool;
  }
  
  public ObjectTypePair peek()
  {
    Stack localStack = stack;
    this = localStack.peek();
    this = (ObjectTypePair)this;
    return this;
  }
  
  public ObjectTypePair pop()
  {
    Stack localStack = stack;
    this = localStack.pop();
    this = (ObjectTypePair)this;
    return this;
  }
  
  public ObjectTypePair push(ObjectTypePair paramObjectTypePair)
  {
    Preconditions.checkNotNull(paramObjectTypePair);
    Stack localStack = stack;
    this = localStack.push(paramObjectTypePair);
    this = (ObjectTypePair)this;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.MemoryRefStack
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */