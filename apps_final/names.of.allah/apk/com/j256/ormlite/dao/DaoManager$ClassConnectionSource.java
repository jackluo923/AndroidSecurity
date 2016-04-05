package com.j256.ormlite.dao;

import com.j256.ormlite.support.ConnectionSource;

class DaoManager$ClassConnectionSource
{
  Class<?> clazz;
  ConnectionSource connectionSource;
  
  public DaoManager$ClassConnectionSource(ConnectionSource paramConnectionSource, Class<?> paramClass)
  {
    connectionSource = paramConnectionSource;
    clazz = paramClass;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {}
    do
    {
      return false;
      paramObject = (ClassConnectionSource)paramObject;
    } while ((!clazz.equals(clazz)) || (!connectionSource.equals(connectionSource)));
    return true;
  }
  
  public int hashCode()
  {
    return (clazz.hashCode() + 31) * 31 + connectionSource.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.DaoManager.ClassConnectionSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */