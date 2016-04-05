package com.j256.ormlite.dao;

import com.j256.ormlite.field.FieldType;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class LazyForeignCollection<T, ID>
  extends BaseForeignCollection<T, ID>
  implements ForeignCollection<T>, Serializable
{
  private static final long serialVersionUID = -5460708106909626233L;
  private transient CloseableIterator<T> lastIterator;
  
  public LazyForeignCollection(Dao<T, ID> paramDao, Object paramObject1, Object paramObject2, FieldType paramFieldType, String paramString, boolean paramBoolean)
  {
    super(paramDao, paramObject1, paramObject2, paramFieldType, paramString, paramBoolean);
  }
  
  private CloseableIterator<T> seperateIteratorThrow(int paramInt)
  {
    if (dao == null) {
      throw new IllegalStateException("Internal DAO object is null.  Lazy collections cannot be used if they have been deserialized.");
    }
    return dao.iterator(getPreparedQuery(), paramInt);
  }
  
  public void closeLastIterator()
  {
    if (lastIterator != null)
    {
      lastIterator.close();
      lastIterator = null;
    }
  }
  
  public CloseableIterator<T> closeableIterator()
  {
    return closeableIterator(-1);
  }
  
  public CloseableIterator<T> closeableIterator(int paramInt)
  {
    try
    {
      CloseableIterator localCloseableIterator = iteratorThrow(paramInt);
      return localCloseableIterator;
    }
    catch (SQLException localSQLException)
    {
      throw new IllegalStateException("Could not build lazy iterator for " + dao.getDataClass(), localSQLException);
    }
  }
  
  /* Error */
  public boolean contains(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 94	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   4: astore_2
    //   5: aload_2
    //   6: invokeinterface 98 1 0
    //   11: ifeq +26 -> 37
    //   14: aload_2
    //   15: invokeinterface 102 1 0
    //   20: aload_1
    //   21: invokevirtual 107	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   24: istore_3
    //   25: iload_3
    //   26: ifeq -21 -> 5
    //   29: aload_2
    //   30: invokeinterface 60 1 0
    //   35: iconst_1
    //   36: ireturn
    //   37: aload_2
    //   38: invokeinterface 60 1 0
    //   43: iconst_0
    //   44: ireturn
    //   45: astore_1
    //   46: aload_2
    //   47: invokeinterface 60 1 0
    //   52: aload_1
    //   53: athrow
    //   54: astore_1
    //   55: goto -20 -> 35
    //   58: astore_1
    //   59: goto -16 -> 43
    //   62: astore_2
    //   63: goto -11 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	LazyForeignCollection
    //   0	66	1	paramObject	Object
    //   4	43	2	localCloseableIterator	CloseableIterator
    //   62	1	2	localSQLException	SQLException
    //   24	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   5	25	45	finally
    //   29	35	54	java/sql/SQLException
    //   37	43	58	java/sql/SQLException
    //   46	52	62	java/sql/SQLException
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    HashSet localHashSet = new HashSet(paramCollection);
    paramCollection = iterator();
    try
    {
      while (paramCollection.hasNext()) {
        localHashSet.remove(paramCollection.next());
      }
      try
      {
        paramCollection.close();
        throw ((Throwable)localObject);
        boolean bool = ((Set)localObject).isEmpty();
        try
        {
          paramCollection.close();
          return bool;
        }
        catch (SQLException paramCollection)
        {
          return bool;
        }
      }
      catch (SQLException paramCollection)
      {
        for (;;) {}
      }
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  public CloseableWrappedIterable<T> getWrappedIterable()
  {
    return getWrappedIterable(-1);
  }
  
  public CloseableWrappedIterable<T> getWrappedIterable(int paramInt)
  {
    return new CloseableWrappedIterableImpl(new LazyForeignCollection.1(this, paramInt));
  }
  
  public int hashCode()
  {
    return super.hashCode();
  }
  
  public boolean isEager()
  {
    return false;
  }
  
  /* Error */
  public boolean isEmpty()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 94	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   4: astore_2
    //   5: aload_2
    //   6: invokeinterface 98 1 0
    //   11: istore_3
    //   12: iload_3
    //   13: ifne +13 -> 26
    //   16: iconst_1
    //   17: istore_3
    //   18: aload_2
    //   19: invokeinterface 60 1 0
    //   24: iload_3
    //   25: ireturn
    //   26: iconst_0
    //   27: istore_3
    //   28: goto -10 -> 18
    //   31: astore_1
    //   32: aload_2
    //   33: invokeinterface 60 1 0
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: iload_3
    //   42: ireturn
    //   43: astore_2
    //   44: goto -6 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	LazyForeignCollection
    //   31	8	1	localObject	Object
    //   40	1	1	localSQLException1	SQLException
    //   4	29	2	localCloseableIterator	CloseableIterator
    //   43	1	2	localSQLException2	SQLException
    //   11	31	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   5	12	31	finally
    //   18	24	40	java/sql/SQLException
    //   32	38	43	java/sql/SQLException
  }
  
  public CloseableIterator<T> iterator()
  {
    return closeableIterator(-1);
  }
  
  public CloseableIterator<T> iterator(int paramInt)
  {
    return closeableIterator(paramInt);
  }
  
  public CloseableIterator<T> iteratorThrow()
  {
    return iteratorThrow(-1);
  }
  
  public CloseableIterator<T> iteratorThrow(int paramInt)
  {
    lastIterator = seperateIteratorThrow(paramInt);
    return lastIterator;
  }
  
  public int refreshAll()
  {
    throw new UnsupportedOperationException("Cannot call updateAll() on a lazy collection.");
  }
  
  public int refreshCollection()
  {
    return 0;
  }
  
  /* Error */
  public boolean remove(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 94	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   4: astore_2
    //   5: aload_2
    //   6: invokeinterface 98 1 0
    //   11: ifeq +30 -> 41
    //   14: aload_2
    //   15: invokeinterface 102 1 0
    //   20: aload_1
    //   21: invokevirtual 107	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   24: ifeq -19 -> 5
    //   27: aload_2
    //   28: invokeinterface 155 1 0
    //   33: aload_2
    //   34: invokeinterface 60 1 0
    //   39: iconst_1
    //   40: ireturn
    //   41: aload_2
    //   42: invokeinterface 60 1 0
    //   47: iconst_0
    //   48: ireturn
    //   49: astore_1
    //   50: aload_2
    //   51: invokeinterface 60 1 0
    //   56: aload_1
    //   57: athrow
    //   58: astore_1
    //   59: goto -20 -> 39
    //   62: astore_1
    //   63: goto -16 -> 47
    //   66: astore_2
    //   67: goto -11 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	LazyForeignCollection
    //   0	70	1	paramObject	Object
    //   4	47	2	localCloseableIterator	CloseableIterator
    //   66	1	2	localSQLException	SQLException
    // Exception table:
    //   from	to	target	type
    //   5	33	49	finally
    //   33	39	58	java/sql/SQLException
    //   41	47	62	java/sql/SQLException
    //   50	56	66	java/sql/SQLException
  }
  
  /* Error */
  public boolean removeAll(Collection<?> paramCollection)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: invokevirtual 94	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   6: astore_2
    //   7: aload_2
    //   8: invokeinterface 98 1 0
    //   13: ifeq +29 -> 42
    //   16: aload_1
    //   17: aload_2
    //   18: invokeinterface 102 1 0
    //   23: invokeinterface 160 2 0
    //   28: ifeq -21 -> 7
    //   31: aload_2
    //   32: invokeinterface 155 1 0
    //   37: iconst_1
    //   38: istore_3
    //   39: goto -32 -> 7
    //   42: aload_2
    //   43: invokeinterface 60 1 0
    //   48: iload_3
    //   49: ireturn
    //   50: astore_1
    //   51: aload_2
    //   52: invokeinterface 60 1 0
    //   57: aload_1
    //   58: athrow
    //   59: astore_1
    //   60: iload_3
    //   61: ireturn
    //   62: astore_2
    //   63: goto -6 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	LazyForeignCollection
    //   0	66	1	paramCollection	Collection<?>
    //   6	46	2	localCloseableIterator	CloseableIterator
    //   62	1	2	localSQLException	SQLException
    //   1	60	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   7	37	50	finally
    //   42	48	59	java/sql/SQLException
    //   51	57	62	java/sql/SQLException
  }
  
  /* Error */
  public int size()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 94	com/j256/ormlite/dao/LazyForeignCollection:iterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   4: astore_2
    //   5: iconst_0
    //   6: istore_3
    //   7: aload_2
    //   8: invokeinterface 98 1 0
    //   13: ifeq +16 -> 29
    //   16: aload_2
    //   17: invokeinterface 164 1 0
    //   22: iload_3
    //   23: iconst_1
    //   24: iadd
    //   25: istore_3
    //   26: goto -19 -> 7
    //   29: aload_2
    //   30: invokeinterface 60 1 0
    //   35: iload_3
    //   36: ireturn
    //   37: astore_1
    //   38: aload_2
    //   39: invokeinterface 60 1 0
    //   44: aload_1
    //   45: athrow
    //   46: astore_1
    //   47: iload_3
    //   48: ireturn
    //   49: astore_2
    //   50: goto -6 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	LazyForeignCollection
    //   37	8	1	localObject	Object
    //   46	1	1	localSQLException1	SQLException
    //   4	35	2	localCloseableIterator	CloseableIterator
    //   49	1	2	localSQLException2	SQLException
    //   6	42	3	i	int
    // Exception table:
    //   from	to	target	type
    //   7	22	37	finally
    //   29	35	46	java/sql/SQLException
    //   38	44	49	java/sql/SQLException
  }
  
  public Object[] toArray()
  {
    ArrayList localArrayList = new ArrayList();
    localCloseableIterator = iterator();
    try
    {
      while (localCloseableIterator.hasNext()) {
        localArrayList.add(localCloseableIterator.next());
      }
      try
      {
        localCloseableIterator.close();
        throw ((Throwable)localObject);
        Object[] arrayOfObject = ((List)localObject).toArray();
        try
        {
          localCloseableIterator.close();
          return arrayOfObject;
        }
        catch (SQLException localSQLException1)
        {
          return arrayOfObject;
        }
      }
      catch (SQLException localSQLException2)
      {
        for (;;) {}
      }
    }
    finally {}
  }
  
  public <E> E[] toArray(E[] paramArrayOfE)
  {
    CloseableIterator localCloseableIterator = iterator();
    int i = 0;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        if (localCloseableIterator.hasNext())
        {
          Object localObject3 = localCloseableIterator.next();
          if (i >= paramArrayOfE.length)
          {
            Object localObject2 = localObject1;
            if (localObject1 == null)
            {
              localObject1 = new ArrayList();
              int k = paramArrayOfE.length;
              int j = 0;
              localObject2 = localObject1;
              if (j < k)
              {
                ((List)localObject1).add(paramArrayOfE[j]);
                j += 1;
                continue;
              }
            }
            ((List)localObject2).add(localObject3);
            localObject1 = localObject2;
            break label163;
          }
          paramArrayOfE[i] = localObject3;
          break label163;
        }
      }
      finally {}
      try
      {
        localCloseableIterator.close();
        throw paramArrayOfE;
        try
        {
          localCloseableIterator.close();
          if (localObject1 == null)
          {
            if (i < paramArrayOfE.length - 1) {
              paramArrayOfE[i] = null;
            }
            return paramArrayOfE;
          }
          return ((List)localObject1).toArray(paramArrayOfE);
        }
        catch (SQLException localSQLException2)
        {
          for (;;) {}
        }
      }
      catch (SQLException localSQLException1)
      {
        for (;;) {}
      }
      label163:
      i += 1;
    }
  }
  
  public int updateAll()
  {
    throw new UnsupportedOperationException("Cannot call updateAll() on a lazy collection.");
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.LazyForeignCollection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */