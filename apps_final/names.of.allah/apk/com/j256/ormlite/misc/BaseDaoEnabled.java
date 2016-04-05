package com.j256.ormlite.misc;

import com.j256.ormlite.dao.Dao;
import java.sql.SQLException;

public abstract class BaseDaoEnabled<T, ID>
{
  protected transient Dao<T, ID> dao;
  
  private void checkForDao()
  {
    if (dao == null) {
      throw new SQLException("Dao has not been set on " + getClass() + " object: " + this);
    }
  }
  
  public int create()
  {
    checkForDao();
    return dao.create(this);
  }
  
  public int delete()
  {
    checkForDao();
    return dao.delete(this);
  }
  
  public ID extractId()
  {
    checkForDao();
    return (ID)dao.extractId(this);
  }
  
  public Dao<T, ID> getDao()
  {
    return dao;
  }
  
  public String objectToString()
  {
    try
    {
      checkForDao();
      return dao.objectToString(this);
    }
    catch (SQLException localSQLException)
    {
      throw new IllegalArgumentException(localSQLException);
    }
  }
  
  public boolean objectsEqual(T paramT)
  {
    checkForDao();
    return dao.objectsEqual(this, paramT);
  }
  
  public int refresh()
  {
    checkForDao();
    return dao.refresh(this);
  }
  
  public void setDao(Dao<T, ID> paramDao)
  {
    dao = paramDao;
  }
  
  public int update()
  {
    checkForDao();
    return dao.update(this);
  }
  
  public int updateId(ID paramID)
  {
    checkForDao();
    return dao.updateId(this, paramID);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.misc.BaseDaoEnabled
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */