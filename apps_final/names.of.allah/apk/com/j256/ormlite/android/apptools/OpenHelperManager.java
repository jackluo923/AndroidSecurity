package com.j256.ormlite.android.apptools;

import android.content.Context;
import android.content.res.Resources;
import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class OpenHelperManager
{
  private static final String HELPER_CLASS_RESOURCE_NAME = "open_helper_classname";
  private static volatile OrmLiteSqliteOpenHelper helper;
  private static Class<? extends OrmLiteSqliteOpenHelper> helperClass;
  private static int instanceCount = 0;
  private static Logger logger = LoggerFactory.getLogger(OpenHelperManager.class);
  private static boolean wasClosed;
  
  static
  {
    helperClass = null;
    helper = null;
    wasClosed = false;
  }
  
  /* Error */
  private static OrmLiteSqliteOpenHelper constructHelper(Context paramContext, Class<? extends OrmLiteSqliteOpenHelper> paramClass)
  {
    // Byte code:
    //   0: aload_1
    //   1: iconst_1
    //   2: anewarray 47	java/lang/Class
    //   5: dup
    //   6: iconst_0
    //   7: ldc 49
    //   9: aastore
    //   10: invokevirtual 53	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   13: astore_2
    //   14: aload_2
    //   15: iconst_1
    //   16: anewarray 4	java/lang/Object
    //   19: dup
    //   20: iconst_0
    //   21: aload_0
    //   22: aastore
    //   23: invokevirtual 59	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   26: checkcast 61	com/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper
    //   29: astore_0
    //   30: aload_0
    //   31: areturn
    //   32: astore_0
    //   33: new 63	java/lang/IllegalStateException
    //   36: dup
    //   37: new 65	java/lang/StringBuilder
    //   40: dup
    //   41: ldc 67
    //   43: invokespecial 70	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   46: aload_1
    //   47: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: aload_0
    //   54: invokespecial 81	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   57: athrow
    //   58: astore_0
    //   59: new 63	java/lang/IllegalStateException
    //   62: dup
    //   63: new 65	java/lang/StringBuilder
    //   66: dup
    //   67: ldc 83
    //   69: invokespecial 70	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   72: aload_1
    //   73: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: aload_0
    //   80: invokespecial 81	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	paramContext	Context
    //   0	84	1	paramClass	Class<? extends OrmLiteSqliteOpenHelper>
    //   13	2	2	localConstructor	java.lang.reflect.Constructor
    // Exception table:
    //   from	to	target	type
    //   0	14	32	java/lang/Exception
    //   14	30	58	java/lang/Exception
  }
  
  @Deprecated
  public static OrmLiteSqliteOpenHelper getHelper(Context paramContext)
  {
    try
    {
      if (helperClass != null) {
        break label43;
      }
      if (paramContext == null) {
        throw new IllegalArgumentException("context argument is null");
      }
    }
    finally {}
    innerSetHelperClass(lookupHelperClass(paramContext.getApplicationContext(), paramContext.getClass()));
    label43:
    paramContext = loadHelper(paramContext, helperClass);
    return paramContext;
  }
  
  public static <T extends OrmLiteSqliteOpenHelper> T getHelper(Context paramContext, Class<T> paramClass)
  {
    if (paramClass == null) {
      try
      {
        throw new IllegalArgumentException("openHelperClass argument is null");
      }
      finally {}
    }
    innerSetHelperClass(paramClass);
    paramContext = loadHelper(paramContext, paramClass);
    return paramContext;
  }
  
  private static void innerSetHelperClass(Class<? extends OrmLiteSqliteOpenHelper> paramClass)
  {
    if (paramClass == null) {
      throw new IllegalStateException("Helper class was trying to be reset to null");
    }
    if (helperClass == null) {
      helperClass = paramClass;
    }
    while (helperClass == paramClass) {
      return;
    }
    throw new IllegalStateException("Helper class was " + helperClass + " but is trying to be reset to " + paramClass);
  }
  
  private static <T extends OrmLiteSqliteOpenHelper> T loadHelper(Context paramContext, Class<T> paramClass)
  {
    if (helper == null)
    {
      if (wasClosed) {
        logger.info("helper was already closed and is being re-opened");
      }
      if (paramContext == null) {
        throw new IllegalArgumentException("context argument is null");
      }
      helper = constructHelper(paramContext.getApplicationContext(), paramClass);
      logger.trace("zero instances, created helper {}", helper);
      BaseDaoImpl.clearAllInternalObjectCaches();
      DaoManager.clearDaoCache();
      instanceCount = 0;
    }
    instanceCount += 1;
    logger.trace("returning helper {}, instance count = {} ", helper, Integer.valueOf(instanceCount));
    return helper;
  }
  
  private static Class<? extends OrmLiteSqliteOpenHelper> lookupHelperClass(Context paramContext, Class<?> paramClass)
  {
    Object localObject = paramContext.getResources();
    int i = ((Resources)localObject).getIdentifier("open_helper_classname", "string", paramContext.getPackageName());
    if (i != 0)
    {
      paramContext = ((Resources)localObject).getString(i);
      try
      {
        localObject = Class.forName(paramContext);
        return (Class<? extends OrmLiteSqliteOpenHelper>)localObject;
      }
      catch (Exception paramClass)
      {
        throw new IllegalStateException("Could not create helper instance for class " + paramContext, paramClass);
      }
    }
    label161:
    for (paramContext = paramClass;; paramContext = paramContext.getSuperclass())
    {
      if (paramContext == null) {
        break label169;
      }
      localObject = paramContext.getGenericSuperclass();
      if ((localObject != null) && ((localObject instanceof ParameterizedType)))
      {
        Type[] arrayOfType = ((ParameterizedType)localObject).getActualTypeArguments();
        if ((arrayOfType != null) && (arrayOfType.length != 0))
        {
          int j = arrayOfType.length;
          i = 0;
          for (;;)
          {
            if (i >= j) {
              break label161;
            }
            localObject = arrayOfType[i];
            if ((localObject instanceof Class))
            {
              Class localClass = (Class)localObject;
              localObject = localClass;
              if (OrmLiteSqliteOpenHelper.class.isAssignableFrom(localClass)) {
                break;
              }
            }
            i += 1;
          }
        }
      }
    }
    label169:
    throw new IllegalStateException("Could not find OpenHelperClass because none of the generic parameters of class " + paramClass + " extends OrmLiteSqliteOpenHelper.  You should use getHelper(Context, Class) instead.");
  }
  
  @Deprecated
  public static void release() {}
  
  public static void releaseHelper()
  {
    try
    {
      instanceCount -= 1;
      logger.trace("releasing helper {}, instance count = {}", helper, Integer.valueOf(instanceCount));
      if (instanceCount <= 0)
      {
        if (helper != null)
        {
          logger.trace("zero instances, closing helper {}", helper);
          helper.close();
          helper = null;
          wasClosed = true;
        }
        if (instanceCount < 0) {
          logger.error("too many calls to release helper, instance count = {}", Integer.valueOf(instanceCount));
        }
      }
      return;
    }
    finally {}
  }
  
  public static void setHelper(OrmLiteSqliteOpenHelper paramOrmLiteSqliteOpenHelper)
  {
    try
    {
      helper = paramOrmLiteSqliteOpenHelper;
      return;
    }
    finally
    {
      paramOrmLiteSqliteOpenHelper = finally;
      throw paramOrmLiteSqliteOpenHelper;
    }
  }
  
  public static void setOpenHelperClass(Class<? extends OrmLiteSqliteOpenHelper> paramClass)
  {
    if (paramClass == null) {}
    for (;;)
    {
      try
      {
        helperClass = null;
        return;
      }
      finally {}
      innerSetHelperClass(paramClass);
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.apptools.OpenHelperManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */