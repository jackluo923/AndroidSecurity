package com.j256.ormlite.support;

class BaseConnectionSource$NestedConnection
{
  public final DatabaseConnection connection;
  private int nestedC;
  
  public BaseConnectionSource$NestedConnection(DatabaseConnection paramDatabaseConnection)
  {
    connection = paramDatabaseConnection;
    nestedC = 1;
  }
  
  public int decrementAndGet()
  {
    nestedC -= 1;
    return nestedC;
  }
  
  public void increment()
  {
    nestedC += 1;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.support.BaseConnectionSource.NestedConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */