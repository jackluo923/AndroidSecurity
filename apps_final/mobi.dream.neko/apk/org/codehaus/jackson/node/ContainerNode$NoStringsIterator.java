package org.codehaus.jackson.node;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class ContainerNode$NoStringsIterator
  implements Iterator<String>
{
  static final NoStringsIterator instance = new NoStringsIterator();
  
  public static NoStringsIterator instance()
  {
    return instance;
  }
  
  public boolean hasNext()
  {
    return false;
  }
  
  public String next()
  {
    throw new NoSuchElementException();
  }
  
  public void remove()
  {
    throw new IllegalStateException();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.node.ContainerNode.NoStringsIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */