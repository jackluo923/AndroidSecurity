package com.j256.ormlite.dao;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTable;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.lang.reflect.Constructor;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class DaoManager
{
  private static Map<DaoManager.ClassConnectionSource, Dao<?, ?>> classMap;
  private static Map<Class<?>, DatabaseTableConfig<?>> configMap = null;
  private static Logger logger = LoggerFactory.getLogger(DaoManager.class);
  private static Map<DaoManager.TableConfigConnectionSource, Dao<?, ?>> tableConfigMap;
  
  static
  {
    classMap = null;
    tableConfigMap = null;
  }
  
  public static void addCachedDatabaseConfigs(Collection<DatabaseTableConfig<?>> paramCollection)
  {
    HashMap localHashMap;
    for (;;)
    {
      try
      {
        if (configMap == null)
        {
          localHashMap = new HashMap();
          paramCollection = paramCollection.iterator();
          if (!paramCollection.hasNext()) {
            break;
          }
          DatabaseTableConfig localDatabaseTableConfig = (DatabaseTableConfig)paramCollection.next();
          localHashMap.put(localDatabaseTableConfig.getDataClass(), localDatabaseTableConfig);
          logger.info("Loaded configuration for {}", localDatabaseTableConfig.getDataClass());
          continue;
        }
        localHashMap = new HashMap(configMap);
      }
      finally {}
    }
    configMap = localHashMap;
  }
  
  private static void addDaoToClassMap(DaoManager.ClassConnectionSource paramClassConnectionSource, Dao<?, ?> paramDao)
  {
    if (classMap == null) {
      classMap = new HashMap();
    }
    classMap.put(paramClassConnectionSource, paramDao);
  }
  
  private static void addDaoToTableMap(DaoManager.TableConfigConnectionSource paramTableConfigConnectionSource, Dao<?, ?> paramDao)
  {
    if (tableConfigMap == null) {
      tableConfigMap = new HashMap();
    }
    tableConfigMap.put(paramTableConfigConnectionSource, paramDao);
  }
  
  public static void clearCache()
  {
    try
    {
      if (configMap != null)
      {
        configMap.clear();
        configMap = null;
      }
      clearDaoCache();
      return;
    }
    finally {}
  }
  
  public static void clearDaoCache()
  {
    try
    {
      if (classMap != null)
      {
        classMap.clear();
        classMap = null;
      }
      if (tableConfigMap != null)
      {
        tableConfigMap.clear();
        tableConfigMap = null;
      }
      return;
    }
    finally {}
  }
  
  public static <D extends Dao<T, ?>, T> D createDao(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    if (paramConnectionSource == null) {
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally {}
    }
    paramConnectionSource = doCreateDao(paramConnectionSource, paramDatabaseTableConfig);
    return paramConnectionSource;
  }
  
  public static <D extends Dao<T, ?>, T> D createDao(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    if (paramConnectionSource == null) {
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally {}
    }
    Object localObject1 = lookupDao(new DaoManager.ClassConnectionSource(paramConnectionSource, paramClass));
    if (localObject1 != null) {}
    Object localObject2;
    do
    {
      return (D)localObject1;
      localObject2 = (Dao)createDaoFromConfig(paramConnectionSource, paramClass);
      localObject1 = localObject2;
    } while (localObject2 != null);
    localObject1 = (DatabaseTable)paramClass.getAnnotation(DatabaseTable.class);
    if ((localObject1 == null) || (((DatabaseTable)localObject1).daoClass() == Void.class) || (((DatabaseTable)localObject1).daoClass() == BaseDaoImpl.class))
    {
      localObject1 = paramConnectionSource.getDatabaseType().extractDatabaseTableConfig(paramConnectionSource, paramClass);
      if (localObject1 == null)
      {
        localObject1 = BaseDaoImpl.createDao(paramConnectionSource, paramClass);
        label120:
        logger.debug("created dao for class {} with reflection", paramClass);
      }
    }
    for (;;)
    {
      registerDao(paramConnectionSource, (Dao)localObject1);
      break;
      localObject1 = BaseDaoImpl.createDao(paramConnectionSource, (DatabaseTableConfig)localObject1);
      break label120;
      Class localClass = ((DatabaseTable)localObject1).daoClass();
      localObject2 = new Object[2];
      localObject2[0] = paramConnectionSource;
      localObject2[1] = paramClass;
      Constructor localConstructor = findConstructor(localClass, (Object[])localObject2);
      localObject1 = localConstructor;
      if (localConstructor == null)
      {
        localObject2 = new Object[1];
        localObject2[0] = paramConnectionSource;
        localConstructor = findConstructor(localClass, (Object[])localObject2);
        localObject1 = localConstructor;
        if (localConstructor == null) {
          throw new SQLException("Could not find public constructor with ConnectionSource and optional Class parameters " + localClass + ".  Missing static on class?");
        }
      }
      try
      {
        localObject1 = (Dao)((Constructor)localObject1).newInstance((Object[])localObject2);
        logger.debug("created dao for class {} from constructor", paramClass);
      }
      catch (Exception paramConnectionSource)
      {
        throw SqlExceptionUtil.create("Could not call the constructor in class " + localClass, paramConnectionSource);
      }
    }
  }
  
  private static <D, T> D createDaoFromConfig(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    if (configMap == null) {
      return null;
    }
    paramClass = (DatabaseTableConfig)configMap.get(paramClass);
    if (paramClass == null) {
      return null;
    }
    return doCreateDao(paramConnectionSource, paramClass);
  }
  
  private static <D extends Dao<T, ?>, T> D doCreateDao(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    DaoManager.TableConfigConnectionSource localTableConfigConnectionSource = new DaoManager.TableConfigConnectionSource(paramConnectionSource, paramDatabaseTableConfig);
    Object localObject1 = lookupDao(localTableConfigConnectionSource);
    if (localObject1 != null)
    {
      paramDatabaseTableConfig = (DatabaseTableConfig<T>)localObject1;
      return paramDatabaseTableConfig;
    }
    Class localClass = paramDatabaseTableConfig.getDataClass();
    localObject1 = new DaoManager.ClassConnectionSource(paramConnectionSource, localClass);
    Object localObject2 = lookupDao((DaoManager.ClassConnectionSource)localObject1);
    if (localObject2 != null)
    {
      addDaoToTableMap(localTableConfigConnectionSource, (Dao)localObject2);
      return (D)localObject2;
    }
    localObject2 = (DatabaseTable)paramDatabaseTableConfig.getDataClass().getAnnotation(DatabaseTable.class);
    if ((localObject2 == null) || (((DatabaseTable)localObject2).daoClass() == Void.class) || (((DatabaseTable)localObject2).daoClass() == BaseDaoImpl.class)) {
      paramConnectionSource = BaseDaoImpl.createDao(paramConnectionSource, paramDatabaseTableConfig);
    }
    for (;;)
    {
      addDaoToTableMap(localTableConfigConnectionSource, paramConnectionSource);
      logger.debug("created dao for class {} from table config", localClass);
      paramDatabaseTableConfig = paramConnectionSource;
      if (lookupDao((DaoManager.ClassConnectionSource)localObject1) != null) {
        break;
      }
      addDaoToClassMap((DaoManager.ClassConnectionSource)localObject1, paramConnectionSource);
      return paramConnectionSource;
      localObject2 = ((DatabaseTable)localObject2).daoClass();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramConnectionSource;
      arrayOfObject[1] = paramDatabaseTableConfig;
      paramConnectionSource = findConstructor((Class)localObject2, arrayOfObject);
      if (paramConnectionSource == null) {
        throw new SQLException("Could not find public constructor with ConnectionSource, DatabaseTableConfig parameters in class " + localObject2);
      }
      try
      {
        paramConnectionSource = (Dao)paramConnectionSource.newInstance(arrayOfObject);
      }
      catch (Exception paramConnectionSource)
      {
        throw SqlExceptionUtil.create("Could not call the constructor in class " + localObject2, paramConnectionSource);
      }
    }
  }
  
  private static Constructor<?> findConstructor(Class<?> paramClass, Object[] paramArrayOfObject)
  {
    paramClass = paramClass.getConstructors();
    int k = paramClass.length;
    int i = 0;
    Constructor<?> localConstructor;
    if (i < k)
    {
      localConstructor = paramClass[i];
      Class[] arrayOfClass = localConstructor.getParameterTypes();
      if (arrayOfClass.length == paramArrayOfObject.length)
      {
        j = 0;
        label39:
        if (j >= arrayOfClass.length) {
          break label93;
        }
        if (arrayOfClass[j].isAssignableFrom(paramArrayOfObject[j].getClass())) {}
      }
    }
    label93:
    for (int j = 0;; j = 1)
    {
      if (j != 0)
      {
        return localConstructor;
        j += 1;
        break label39;
      }
      i += 1;
      break;
      return null;
    }
  }
  
  private static <T> Dao<?, ?> lookupDao(DaoManager.ClassConnectionSource paramClassConnectionSource)
  {
    if (classMap == null) {
      classMap = new HashMap();
    }
    Dao localDao = (Dao)classMap.get(paramClassConnectionSource);
    paramClassConnectionSource = localDao;
    if (localDao == null) {
      paramClassConnectionSource = null;
    }
    return paramClassConnectionSource;
  }
  
  private static <T> Dao<?, ?> lookupDao(DaoManager.TableConfigConnectionSource paramTableConfigConnectionSource)
  {
    if (tableConfigMap == null) {
      tableConfigMap = new HashMap();
    }
    Dao localDao = (Dao)tableConfigMap.get(paramTableConfigConnectionSource);
    paramTableConfigConnectionSource = localDao;
    if (localDao == null) {
      paramTableConfigConnectionSource = null;
    }
    return paramTableConfigConnectionSource;
  }
  
  public static <D extends Dao<T, ?>, T> D lookupDao(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    if (paramConnectionSource == null) {
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally {}
    }
    paramConnectionSource = lookupDao(new DaoManager.TableConfigConnectionSource(paramConnectionSource, paramDatabaseTableConfig));
    paramDatabaseTableConfig = paramConnectionSource;
    if (paramConnectionSource == null) {
      paramDatabaseTableConfig = null;
    }
    return paramDatabaseTableConfig;
  }
  
  public static <D extends Dao<T, ?>, T> D lookupDao(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    if (paramConnectionSource == null) {
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally {}
    }
    paramConnectionSource = lookupDao(new DaoManager.ClassConnectionSource(paramConnectionSource, paramClass));
    return paramConnectionSource;
  }
  
  public static void registerDao(ConnectionSource paramConnectionSource, Dao<?, ?> paramDao)
  {
    if (paramConnectionSource == null) {
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally {}
    }
    addDaoToClassMap(new DaoManager.ClassConnectionSource(paramConnectionSource, paramDao.getDataClass()), paramDao);
  }
  
  public static void registerDaoWithTableConfig(ConnectionSource paramConnectionSource, Dao<?, ?> paramDao)
  {
    if (paramConnectionSource == null) {
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally {}
    }
    if ((paramDao instanceof BaseDaoImpl))
    {
      DatabaseTableConfig localDatabaseTableConfig = ((BaseDaoImpl)paramDao).getTableConfig();
      if (localDatabaseTableConfig != null) {
        addDaoToTableMap(new DaoManager.TableConfigConnectionSource(paramConnectionSource, localDatabaseTableConfig), paramDao);
      }
    }
    for (;;)
    {
      return;
      addDaoToClassMap(new DaoManager.ClassConnectionSource(paramConnectionSource, paramDao.getDataClass()), paramDao);
    }
  }
  
  private static void removeDaoToClassMap(DaoManager.ClassConnectionSource paramClassConnectionSource, Dao<?, ?> paramDao)
  {
    if (classMap != null) {
      classMap.remove(paramClassConnectionSource);
    }
  }
  
  public static void unregisterDao(ConnectionSource paramConnectionSource, Dao<?, ?> paramDao)
  {
    if (paramConnectionSource == null) {
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally {}
    }
    removeDaoToClassMap(new DaoManager.ClassConnectionSource(paramConnectionSource, paramDao.getDataClass()), paramDao);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.dao.DaoManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */