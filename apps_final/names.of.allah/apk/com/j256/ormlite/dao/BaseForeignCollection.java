package com.j256.ormlite.dao;

import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.stmt.PreparedQuery;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.SelectArg;
import com.j256.ormlite.stmt.Where;
import com.j256.ormlite.stmt.mapped.MappedPreparedStmt;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Iterator;

public abstract class BaseForeignCollection<T, ID>
  implements ForeignCollection<T>, Serializable
{
  private static final long serialVersionUID = -5158840898186237589L;
  protected final transient Dao<T, ID> dao;
  private final transient FieldType foreignFieldType;
  private final transient boolean orderAscending;
  private final transient String orderColumn;
  private final transient Object parent;
  private final transient Object parentId;
  private transient PreparedQuery<T> preparedQuery;
  
  protected BaseForeignCollection(Dao<T, ID> paramDao, Object paramObject1, Object paramObject2, FieldType paramFieldType, String paramString, boolean paramBoolean)
  {
    dao = paramDao;
    foreignFieldType = paramFieldType;
    parentId = paramObject2;
    orderColumn = paramString;
    orderAscending = paramBoolean;
    parent = paramObject1;
  }
  
  private boolean addElement(T paramT)
  {
    if (dao == null) {
      return false;
    }
    if ((parent != null) && (foreignFieldType.getFieldValueIfNotDefault(paramT) == null)) {
      foreignFieldType.assignField(paramT, parent, true, null);
    }
    dao.create(paramT);
    return true;
  }
  
  public boolean add(T paramT)
  {
    try
    {
      boolean bool = addElement(paramT);
      return bool;
    }
    catch (SQLException paramT)
    {
      throw new IllegalStateException("Could not create data element in dao", paramT);
    }
  }
  
  public boolean addAll(Collection<? extends T> paramCollection)
  {
    boolean bool1 = false;
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = paramCollection.next();
      try
      {
        boolean bool2 = addElement(localObject);
        if (bool2) {
          bool1 = true;
        }
      }
      catch (SQLException paramCollection)
      {
        throw new IllegalStateException("Could not create data elements in dao", paramCollection);
      }
    }
    return bool1;
  }
  
  /* Error */
  public void clear()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 35	com/j256/ormlite/dao/BaseForeignCollection:dao	Lcom/j256/ormlite/dao/Dao;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: invokevirtual 105	com/j256/ormlite/dao/BaseForeignCollection:closeableIterator	()Lcom/j256/ormlite/dao/CloseableIterator;
    //   12: astore_2
    //   13: aload_2
    //   14: invokeinterface 108 1 0
    //   19: ifeq +28 -> 47
    //   22: aload_2
    //   23: invokeinterface 109 1 0
    //   28: pop
    //   29: aload_2
    //   30: invokeinterface 112 1 0
    //   35: goto -22 -> 13
    //   38: astore_1
    //   39: aload_2
    //   40: invokeinterface 115 1 0
    //   45: aload_1
    //   46: athrow
    //   47: aload_2
    //   48: invokeinterface 115 1 0
    //   53: return
    //   54: astore_1
    //   55: return
    //   56: astore_2
    //   57: goto -12 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	BaseForeignCollection
    //   38	8	1	localObject	Object
    //   54	1	1	localSQLException1	SQLException
    //   12	36	2	localCloseableIterator	CloseableIterator
    //   56	1	2	localSQLException2	SQLException
    // Exception table:
    //   from	to	target	type
    //   13	35	38	finally
    //   47	53	54	java/sql/SQLException
    //   39	45	56	java/sql/SQLException
  }
  
  protected PreparedQuery<T> getPreparedQuery()
  {
    if (dao == null) {
      return null;
    }
    if (preparedQuery == null)
    {
      SelectArg localSelectArg = new SelectArg();
      localSelectArg.setValue(parentId);
      QueryBuilder localQueryBuilder = dao.queryBuilder();
      if (orderColumn != null) {
        localQueryBuilder.orderBy(orderColumn, orderAscending);
      }
      preparedQuery = localQueryBuilder.where().eq(foreignFieldType.getColumnName(), localSelectArg).prepare();
      if ((preparedQuery instanceof MappedPreparedStmt)) {
        ((MappedPreparedStmt)preparedQuery).setParentInformation(parent, parentId);
      }
    }
    return preparedQuery;
  }
  
  public int refresh(T paramT)
  {
    if (dao == null) {
      return 0;
    }
    return dao.refresh(paramT);
  }
  
  public abstract boolean remove(Object paramObject);
  
  public abstract boolean removeAll(Collection<?> paramCollection);
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    boolean bool = false;
    if (dao == null) {
      return false;
    }
    localCloseableIterator = closeableIterator();
    try
    {
      while (localCloseableIterator.hasNext()) {
        if (!paramCollection.contains(localCloseableIterator.next()))
        {
          localCloseableIterator.remove();
          bool = true;
        }
      }
      try
      {
        localCloseableIterator.close();
        return bool;
      }
      catch (SQLException paramCollection)
      {
        return bool;
      }
      try
      {
        localCloseableIterator.close();
        throw paramCollection;
      }
      catch (SQLException localSQLException)
      {
        for (;;) {}
      }
    }
    finally {}
  }
  
  public int update(T paramT)
  {
    if (dao == null) {
      return 0;
    }
    return dao.update(paramT);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.BaseForeignCollection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */