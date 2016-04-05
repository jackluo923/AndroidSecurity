package org.simpleframework.xml.util;

public abstract interface Cache<T>
{
  public abstract void cache(Object paramObject, T paramT);
  
  public abstract boolean contains(Object paramObject);
  
  public abstract T fetch(Object paramObject);
  
  public abstract boolean isEmpty();
  
  public abstract T take(Object paramObject);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Cache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */