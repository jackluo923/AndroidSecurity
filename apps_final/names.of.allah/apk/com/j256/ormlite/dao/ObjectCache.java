package com.j256.ormlite.dao;

public abstract interface ObjectCache
{
  public abstract <T> void clear(Class<T> paramClass);
  
  public abstract void clearAll();
  
  public abstract <T, ID> T get(Class<T> paramClass, ID paramID);
  
  public abstract <T, ID> void put(Class<T> paramClass, ID paramID, T paramT);
  
  public abstract <T> void registerClass(Class<T> paramClass);
  
  public abstract <T, ID> void remove(Class<T> paramClass, ID paramID);
  
  public abstract <T> int size(Class<T> paramClass);
  
  public abstract int sizeAll();
  
  public abstract <T, ID> T updateId(Class<T> paramClass, ID paramID1, ID paramID2);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.ObjectCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */