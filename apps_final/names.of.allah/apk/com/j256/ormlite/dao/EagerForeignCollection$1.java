package com.j256.ormlite.dao;

import com.j256.ormlite.support.DatabaseResults;
import java.sql.SQLException;
import java.util.List;

class EagerForeignCollection$1
  implements CloseableIterator<T>
{
  private int offset = -1;
  
  EagerForeignCollection$1(EagerForeignCollection paramEagerForeignCollection) {}
  
  public void close() {}
  
  public void closeQuietly() {}
  
  public T current()
  {
    if (offset < 0) {
      offset = 0;
    }
    if (offset >= EagerForeignCollection.access$000(this$0).size()) {
      return null;
    }
    return (T)EagerForeignCollection.access$000(this$0).get(offset);
  }
  
  public T first()
  {
    offset = 0;
    if (offset >= EagerForeignCollection.access$000(this$0).size()) {
      return null;
    }
    return (T)EagerForeignCollection.access$000(this$0).get(0);
  }
  
  public DatabaseResults getRawResults()
  {
    return null;
  }
  
  public boolean hasNext()
  {
    return offset + 1 < EagerForeignCollection.access$000(this$0).size();
  }
  
  public T moveRelative(int paramInt)
  {
    offset += paramInt;
    if ((offset < 0) || (offset >= EagerForeignCollection.access$000(this$0).size())) {
      return null;
    }
    return (T)EagerForeignCollection.access$000(this$0).get(offset);
  }
  
  public void moveToNext()
  {
    offset += 1;
  }
  
  public T next()
  {
    offset += 1;
    return (T)EagerForeignCollection.access$000(this$0).get(offset);
  }
  
  public T nextThrow()
  {
    offset += 1;
    if (offset >= EagerForeignCollection.access$000(this$0).size()) {
      return null;
    }
    return (T)EagerForeignCollection.access$000(this$0).get(offset);
  }
  
  public T previous()
  {
    offset -= 1;
    if ((offset < 0) || (offset >= EagerForeignCollection.access$000(this$0).size())) {
      return null;
    }
    return (T)EagerForeignCollection.access$000(this$0).get(offset);
  }
  
  public void remove()
  {
    if (offset < 0) {
      throw new IllegalStateException("next() must be called before remove()");
    }
    if (offset >= EagerForeignCollection.access$000(this$0).size()) {
      throw new IllegalStateException("current results position (" + offset + ") is out of bounds");
    }
    Object localObject = EagerForeignCollection.access$000(this$0).remove(offset);
    offset -= 1;
    if (this$0.dao != null) {}
    try
    {
      this$0.dao.delete(localObject);
      return;
    }
    catch (SQLException localSQLException)
    {
      throw new RuntimeException(localSQLException);
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.EagerForeignCollection.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */