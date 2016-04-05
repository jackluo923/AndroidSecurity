package org.codehaus.jackson.map.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ArrayBuilders$ArrayIterator<T>
  implements Iterator<T>, Iterable<T>
{
  private final T[] _array;
  private int _index;
  
  public ArrayBuilders$ArrayIterator(T[] paramArrayOfT)
  {
    _array = paramArrayOfT;
    _index = 0;
  }
  
  public boolean hasNext()
  {
    return _index < _array.length;
  }
  
  public Iterator<T> iterator()
  {
    return this;
  }
  
  public T next()
  {
    if (_index >= _array.length) {
      throw new NoSuchElementException();
    }
    Object[] arrayOfObject = _array;
    int i = _index;
    _index = (i + 1);
    return (T)arrayOfObject[i];
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.ArrayBuilders.ArrayIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */