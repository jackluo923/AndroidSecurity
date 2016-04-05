package com.j256.ormlite.table;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.misc.JavaxPersistence;
import com.j256.ormlite.support.ConnectionSource;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DatabaseTableConfig<T>
{
  private Constructor<T> constructor;
  private Class<T> dataClass;
  private List<DatabaseFieldConfig> fieldConfigs;
  private FieldType[] fieldTypes;
  private String tableName;
  
  public DatabaseTableConfig() {}
  
  public DatabaseTableConfig(Class<T> paramClass, String paramString, List<DatabaseFieldConfig> paramList)
  {
    dataClass = paramClass;
    tableName = paramString;
    fieldConfigs = paramList;
  }
  
  private DatabaseTableConfig(Class<T> paramClass, String paramString, FieldType[] paramArrayOfFieldType)
  {
    dataClass = paramClass;
    tableName = paramString;
    fieldTypes = paramArrayOfFieldType;
  }
  
  public DatabaseTableConfig(Class<T> paramClass, List<DatabaseFieldConfig> paramList)
  {
    this(paramClass, extractTableName(paramClass), paramList);
  }
  
  private FieldType[] convertFieldConfigs(ConnectionSource paramConnectionSource, String paramString, List<DatabaseFieldConfig> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      DatabaseFieldConfig localDatabaseFieldConfig = (DatabaseFieldConfig)localIterator.next();
      Object localObject2 = null;
      paramList = dataClass;
      for (;;)
      {
        Object localObject1 = localObject2;
        if (paramList != null) {}
        try
        {
          localObject1 = paramList.getDeclaredField(localDatabaseFieldConfig.getFieldName());
          if (localObject1 != null)
          {
            localObject1 = new FieldType(paramConnectionSource, paramString, (Field)localObject1, localDatabaseFieldConfig, dataClass);
            if (localObject1 != null) {
              break;
            }
            throw new SQLException("Could not find declared field with name '" + localDatabaseFieldConfig.getFieldName() + "' for " + dataClass);
          }
        }
        catch (NoSuchFieldException localNoSuchFieldException)
        {
          paramList = paramList.getSuperclass();
        }
      }
      localArrayList.add(localNoSuchFieldException);
    }
    if (localArrayList.isEmpty()) {
      throw new SQLException("No fields were configured for class " + dataClass);
    }
    return (FieldType[])localArrayList.toArray(new FieldType[localArrayList.size()]);
  }
  
  private static <T> FieldType[] extractFieldTypes(ConnectionSource paramConnectionSource, Class<T> paramClass, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (Object localObject = paramClass; localObject != null; localObject = ((Class)localObject).getSuperclass())
    {
      Field[] arrayOfField = ((Class)localObject).getDeclaredFields();
      int j = arrayOfField.length;
      int i = 0;
      while (i < j)
      {
        FieldType localFieldType = FieldType.createFieldType(paramConnectionSource, paramString, arrayOfField[i], paramClass);
        if (localFieldType != null) {
          localArrayList.add(localFieldType);
        }
        i += 1;
      }
    }
    if (localArrayList.isEmpty()) {
      throw new IllegalArgumentException("No fields have a " + DatabaseField.class.getSimpleName() + " annotation in " + paramClass);
    }
    return (FieldType[])localArrayList.toArray(new FieldType[localArrayList.size()]);
  }
  
  public static <T> String extractTableName(Class<T> paramClass)
  {
    Object localObject = (DatabaseTable)paramClass.getAnnotation(DatabaseTable.class);
    if ((localObject != null) && (((DatabaseTable)localObject).tableName() != null) && (((DatabaseTable)localObject).tableName().length() > 0)) {
      localObject = ((DatabaseTable)localObject).tableName();
    }
    String str;
    do
    {
      return (String)localObject;
      str = JavaxPersistence.getEntityName(paramClass);
      localObject = str;
    } while (str != null);
    return paramClass.getSimpleName().toLowerCase();
  }
  
  /* Error */
  public static <T> Constructor<T> findNoArgConstructor(Class<T> paramClass)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 184	java/lang/Class:getDeclaredConstructors	()[Ljava/lang/reflect/Constructor;
    //   4: checkcast 186	[Ljava/lang/reflect/Constructor;
    //   7: astore_1
    //   8: aload_1
    //   9: arraylength
    //   10: istore 4
    //   12: iconst_0
    //   13: istore_3
    //   14: iload_3
    //   15: iload 4
    //   17: if_icmpge +87 -> 104
    //   20: aload_1
    //   21: iload_3
    //   22: aaload
    //   23: astore_2
    //   24: aload_2
    //   25: invokevirtual 192	java/lang/reflect/Constructor:getParameterTypes	()[Ljava/lang/Class;
    //   28: arraylength
    //   29: ifne +68 -> 97
    //   32: aload_2
    //   33: invokevirtual 195	java/lang/reflect/Constructor:isAccessible	()Z
    //   36: ifne +8 -> 44
    //   39: aload_2
    //   40: iconst_1
    //   41: invokevirtual 199	java/lang/reflect/Constructor:setAccessible	(Z)V
    //   44: aload_2
    //   45: areturn
    //   46: astore_1
    //   47: new 141	java/lang/IllegalArgumentException
    //   50: dup
    //   51: new 88	java/lang/StringBuilder
    //   54: dup
    //   55: ldc -55
    //   57: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: aload_0
    //   61: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: aload_1
    //   68: invokespecial 204	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   71: athrow
    //   72: astore_1
    //   73: new 141	java/lang/IllegalArgumentException
    //   76: dup
    //   77: new 88	java/lang/StringBuilder
    //   80: dup
    //   81: ldc -50
    //   83: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: aload_0
    //   87: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokespecial 151	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   96: athrow
    //   97: iload_3
    //   98: iconst_1
    //   99: iadd
    //   100: istore_3
    //   101: goto -87 -> 14
    //   104: aload_0
    //   105: invokevirtual 209	java/lang/Class:getEnclosingClass	()Ljava/lang/Class;
    //   108: ifnonnull +27 -> 135
    //   111: new 141	java/lang/IllegalArgumentException
    //   114: dup
    //   115: new 88	java/lang/StringBuilder
    //   118: dup
    //   119: ldc -45
    //   121: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   124: aload_0
    //   125: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokespecial 151	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   134: athrow
    //   135: new 141	java/lang/IllegalArgumentException
    //   138: dup
    //   139: new 88	java/lang/StringBuilder
    //   142: dup
    //   143: ldc -45
    //   145: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   148: aload_0
    //   149: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   152: ldc -43
    //   154: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: invokespecial 151	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   163: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	paramClass	Class<T>
    //   7	14	1	arrayOfConstructor	Constructor[]
    //   46	22	1	localException	Exception
    //   72	1	1	localSecurityException	SecurityException
    //   23	22	2	localConstructor	Constructor
    //   13	88	3	i	int
    //   10	8	4	j	int
    // Exception table:
    //   from	to	target	type
    //   0	8	46	java/lang/Exception
    //   39	44	72	java/lang/SecurityException
  }
  
  public static <T> DatabaseTableConfig<T> fromClass(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    String str2 = extractTableName(paramClass);
    String str1 = str2;
    if (paramConnectionSource.getDatabaseType().isEntityNamesMustBeUpCase()) {
      str1 = str2.toUpperCase();
    }
    return new DatabaseTableConfig(paramClass, str1, extractFieldTypes(paramConnectionSource, paramClass, str1));
  }
  
  public void extractFieldTypes(ConnectionSource paramConnectionSource)
  {
    if (fieldTypes == null)
    {
      if (fieldConfigs == null) {
        fieldTypes = extractFieldTypes(paramConnectionSource, dataClass, tableName);
      }
    }
    else {
      return;
    }
    fieldTypes = convertFieldConfigs(paramConnectionSource, tableName, fieldConfigs);
  }
  
  public Constructor<T> getConstructor()
  {
    if (constructor == null) {
      constructor = findNoArgConstructor(dataClass);
    }
    return constructor;
  }
  
  public Class<T> getDataClass()
  {
    return dataClass;
  }
  
  public List<DatabaseFieldConfig> getFieldConfigs()
  {
    return fieldConfigs;
  }
  
  public FieldType[] getFieldTypes(DatabaseType paramDatabaseType)
  {
    if (fieldTypes == null) {
      throw new SQLException("Field types have not been extracted in table config");
    }
    return fieldTypes;
  }
  
  public String getTableName()
  {
    return tableName;
  }
  
  public void initialize()
  {
    if (dataClass == null) {
      throw new IllegalStateException("dataClass was never set on " + getClass().getSimpleName());
    }
    if (tableName == null) {
      tableName = extractTableName(dataClass);
    }
  }
  
  public void setConstructor(Constructor<T> paramConstructor)
  {
    constructor = paramConstructor;
  }
  
  public void setDataClass(Class<T> paramClass)
  {
    dataClass = paramClass;
  }
  
  public void setFieldConfigs(List<DatabaseFieldConfig> paramList)
  {
    fieldConfigs = paramList;
  }
  
  public void setTableName(String paramString)
  {
    tableName = paramString;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.table.DatabaseTableConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */