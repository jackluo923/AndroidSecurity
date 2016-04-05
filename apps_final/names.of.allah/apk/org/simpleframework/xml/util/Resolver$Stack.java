package org.simpleframework.xml.util;

import java.util.Iterator;
import java.util.LinkedList;

class Resolver$Stack
  extends LinkedList<M>
{
  private Resolver$Stack(Resolver paramResolver) {}
  
  public void purge(int paramInt)
  {
    this$0.cache.clear();
    remove(paramInt);
  }
  
  public void push(M paramM)
  {
    this$0.cache.clear();
    addFirst(paramM);
  }
  
  public Iterator<M> sequence()
  {
    return new Resolver.Stack.Sequence(this);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Resolver.Stack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */