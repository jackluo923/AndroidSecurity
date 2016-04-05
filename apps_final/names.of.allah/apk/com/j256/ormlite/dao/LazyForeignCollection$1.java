package com.j256.ormlite.dao;

class LazyForeignCollection$1
  implements CloseableIterable<T>
{
  LazyForeignCollection$1(LazyForeignCollection paramLazyForeignCollection, int paramInt) {}
  
  public CloseableIterator<T> closeableIterator()
  {
    try
    {
      CloseableIterator localCloseableIterator = LazyForeignCollection.access$000(this$0, val$flags);
      return localCloseableIterator;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException("Could not build lazy iterator for " + this$0.dao.getDataClass(), localException);
    }
  }
  
  public CloseableIterator<T> iterator()
  {
    return closeableIterator();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.LazyForeignCollection.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */