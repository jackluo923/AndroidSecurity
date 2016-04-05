package com.j256.ormlite.support;

import com.j256.ormlite.misc.SqlExceptionUtil;
import java.lang.reflect.Constructor;

public class ReflectionDatabaseConnectionProxyFactory
  implements DatabaseConnectionProxyFactory
{
  private final Constructor<? extends DatabaseConnection> constructor;
  private final Class<? extends DatabaseConnection> proxyClass;
  
  public ReflectionDatabaseConnectionProxyFactory(Class<? extends DatabaseConnection> paramClass)
  {
    proxyClass = paramClass;
    try
    {
      constructor = paramClass.getConstructor(new Class[] { DatabaseConnection.class });
      return;
    }
    catch (Exception localException)
    {
      throw new IllegalArgumentException("Could not find constructor with DatabaseConnection argument in " + paramClass);
    }
  }
  
  public DatabaseConnection createProxy(DatabaseConnection paramDatabaseConnection)
  {
    try
    {
      paramDatabaseConnection = (DatabaseConnection)constructor.newInstance(new Object[] { paramDatabaseConnection });
      return paramDatabaseConnection;
    }
    catch (Exception paramDatabaseConnection)
    {
      throw SqlExceptionUtil.create("Could not create a new instance of " + proxyClass, paramDatabaseConnection);
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.support.ReflectionDatabaseConnectionProxyFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */