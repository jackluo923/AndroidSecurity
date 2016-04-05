package com.j256.ormlite.android;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.lang.reflect.Field;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

public class DatabaseTableConfigUtil
{
  private static final int ALLOW_GENERATED_ID_INSERT = 24;
  private static final int CAN_BE_NULL = 5;
  private static final int COLUMN_DEFINITON = 25;
  private static final int COLUMN_NAME = 1;
  private static final int DATA_TYPE = 2;
  private static final int DEFAULT_VALUE = 3;
  private static final int FOREIGN = 9;
  private static final int FOREIGN_AUTO_CREATE = 26;
  private static final int FOREIGN_AUTO_REFRESH = 21;
  private static final int FOREIGN_COLUMN_NAME = 28;
  private static final int FORMAT = 14;
  private static final int GENERATED_ID = 7;
  private static final int GENERATED_ID_SEQUENCE = 8;
  private static final int ID = 6;
  private static final int INDEX = 17;
  private static final int INDEX_NAME = 19;
  private static final int MAX_FOREIGN_AUTO_REFRESH_LEVEL = 22;
  private static final int PERSISTED = 13;
  private static final int PERSISTER_CLASS = 23;
  private static final int READ_ONLY = 29;
  private static final int THROW_IF_NULL = 12;
  private static final int UNIQUE = 15;
  private static final int UNIQUE_COMBO = 16;
  private static final int UNIQUE_INDEX = 18;
  private static final int UNIQUE_INDEX_NAME = 20;
  private static final int UNKNOWN_ENUM_NAME = 11;
  private static final int USE_GET_SET = 10;
  private static final int VERSION = 27;
  private static final int WIDTH = 4;
  private static Class<?> annotationFactoryClazz;
  private static Class<?> annotationMemberClazz;
  private static final int[] configFieldNums = lookupClasses();
  private static Field elementsField;
  private static Field nameField;
  private static Field valueField;
  private static int workedC = 0;
  
  private static void assignConfigField(int paramInt, DatabaseFieldConfig paramDatabaseFieldConfig, Field paramField, Object paramObject)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalStateException("Could not find support for DatabaseField number " + paramInt);
    case 1: 
      paramDatabaseFieldConfig.setColumnName(valueIfNotBlank((String)paramObject));
    case 2: 
    case 3: 
      do
      {
        return;
        paramDatabaseFieldConfig.setDataType((DataType)paramObject);
        return;
        paramField = (String)paramObject;
      } while ((paramField == null) || (paramField.equals("__ormlite__ no default value string was specified")));
      paramDatabaseFieldConfig.setDefaultValue(paramField);
      return;
    case 4: 
      paramDatabaseFieldConfig.setWidth(((Integer)paramObject).intValue());
      return;
    case 5: 
      paramDatabaseFieldConfig.setCanBeNull(((Boolean)paramObject).booleanValue());
      return;
    case 6: 
      paramDatabaseFieldConfig.setId(((Boolean)paramObject).booleanValue());
      return;
    case 7: 
      paramDatabaseFieldConfig.setGeneratedId(((Boolean)paramObject).booleanValue());
      return;
    case 8: 
      paramDatabaseFieldConfig.setGeneratedIdSequence(valueIfNotBlank((String)paramObject));
      return;
    case 9: 
      paramDatabaseFieldConfig.setForeign(((Boolean)paramObject).booleanValue());
      return;
    case 10: 
      paramDatabaseFieldConfig.setUseGetSet(((Boolean)paramObject).booleanValue());
      return;
    case 11: 
      paramDatabaseFieldConfig.setUnknownEnumValue(DatabaseFieldConfig.findMatchingEnumVal(paramField, (String)paramObject));
      return;
    case 12: 
      paramDatabaseFieldConfig.setThrowIfNull(((Boolean)paramObject).booleanValue());
      return;
    case 13: 
      paramDatabaseFieldConfig.setPersisted(((Boolean)paramObject).booleanValue());
      return;
    case 14: 
      paramDatabaseFieldConfig.setFormat(valueIfNotBlank((String)paramObject));
      return;
    case 15: 
      paramDatabaseFieldConfig.setUnique(((Boolean)paramObject).booleanValue());
      return;
    case 16: 
      paramDatabaseFieldConfig.setUniqueCombo(((Boolean)paramObject).booleanValue());
      return;
    case 17: 
      paramDatabaseFieldConfig.setIndex(((Boolean)paramObject).booleanValue());
      return;
    case 18: 
      paramDatabaseFieldConfig.setUniqueIndex(((Boolean)paramObject).booleanValue());
      return;
    case 19: 
      paramDatabaseFieldConfig.setIndexName(valueIfNotBlank((String)paramObject));
      return;
    case 20: 
      paramDatabaseFieldConfig.setUniqueIndexName(valueIfNotBlank((String)paramObject));
      return;
    case 21: 
      paramDatabaseFieldConfig.setForeignAutoRefresh(((Boolean)paramObject).booleanValue());
      return;
    case 22: 
      paramDatabaseFieldConfig.setMaxForeignAutoRefreshLevel(((Integer)paramObject).intValue());
      return;
    case 23: 
      paramDatabaseFieldConfig.setPersisterClass((Class)paramObject);
      return;
    case 24: 
      paramDatabaseFieldConfig.setAllowGeneratedIdInsert(((Boolean)paramObject).booleanValue());
      return;
    case 25: 
      paramDatabaseFieldConfig.setColumnDefinition(valueIfNotBlank((String)paramObject));
      return;
    case 26: 
      paramDatabaseFieldConfig.setForeignAutoCreate(((Boolean)paramObject).booleanValue());
      return;
    case 27: 
      paramDatabaseFieldConfig.setVersion(((Boolean)paramObject).booleanValue());
      return;
    case 28: 
      paramDatabaseFieldConfig.setForeignColumnName(valueIfNotBlank((String)paramObject));
      return;
    }
    paramDatabaseFieldConfig.setReadOnly(((Boolean)paramObject).booleanValue());
  }
  
  private static DatabaseFieldConfig buildConfig(DatabaseField paramDatabaseField, String paramString, Field paramField)
  {
    paramDatabaseField = Proxy.getInvocationHandler(paramDatabaseField);
    if (paramDatabaseField.getClass() != annotationFactoryClazz) {
      return null;
    }
    paramString = elementsField.get(paramDatabaseField);
    if (paramString == null) {
      return null;
    }
    paramDatabaseField = new DatabaseFieldConfig(paramField.getName());
    paramString = (Object[])paramString;
    int i = 0;
    while (i < configFieldNums.length)
    {
      Object localObject = valueField.get(paramString[i]);
      if (localObject != null) {
        assignConfigField(configFieldNums[i], paramDatabaseField, paramField, localObject);
      }
      i += 1;
    }
    return paramDatabaseField;
  }
  
  private static int configFieldNameToNum(String paramString)
  {
    if (paramString.equals("columnName")) {
      return 1;
    }
    if (paramString.equals("dataType")) {
      return 2;
    }
    if (paramString.equals("defaultValue")) {
      return 3;
    }
    if (paramString.equals("width")) {
      return 4;
    }
    if (paramString.equals("canBeNull")) {
      return 5;
    }
    if (paramString.equals("id")) {
      return 6;
    }
    if (paramString.equals("generatedId")) {
      return 7;
    }
    if (paramString.equals("generatedIdSequence")) {
      return 8;
    }
    if (paramString.equals("foreign")) {
      return 9;
    }
    if (paramString.equals("useGetSet")) {
      return 10;
    }
    if (paramString.equals("unknownEnumName")) {
      return 11;
    }
    if (paramString.equals("throwIfNull")) {
      return 12;
    }
    if (paramString.equals("persisted")) {
      return 13;
    }
    if (paramString.equals("format")) {
      return 14;
    }
    if (paramString.equals("unique")) {
      return 15;
    }
    if (paramString.equals("uniqueCombo")) {
      return 16;
    }
    if (paramString.equals("index")) {
      return 17;
    }
    if (paramString.equals("uniqueIndex")) {
      return 18;
    }
    if (paramString.equals("indexName")) {
      return 19;
    }
    if (paramString.equals("uniqueIndexName")) {
      return 20;
    }
    if (paramString.equals("foreignAutoRefresh")) {
      return 21;
    }
    if (paramString.equals("maxForeignAutoRefreshLevel")) {
      return 22;
    }
    if (paramString.equals("persisterClass")) {
      return 23;
    }
    if (paramString.equals("allowGeneratedIdInsert")) {
      return 24;
    }
    if (paramString.equals("columnDefinition")) {
      return 25;
    }
    if (paramString.equals("foreignAutoCreate")) {
      return 26;
    }
    if (paramString.equals("version")) {
      return 27;
    }
    if (paramString.equals("foreignColumnName")) {
      return 28;
    }
    if (paramString.equals("readOnly")) {
      return 29;
    }
    throw new IllegalStateException("Could not find support for DatabaseField " + paramString);
  }
  
  private static DatabaseFieldConfig configFromField(DatabaseType paramDatabaseType, String paramString, Field paramField)
  {
    if (configFieldNums == null) {
      return DatabaseFieldConfig.fromField(paramDatabaseType, paramString, paramField);
    }
    Object localObject = (DatabaseField)paramField.getAnnotation(DatabaseField.class);
    if (localObject != null) {}
    DatabaseFieldConfig localDatabaseFieldConfig;
    for (;;)
    {
      try
      {
        localObject = buildConfig((DatabaseField)localObject, paramString, paramField);
        if (localObject != null) {
          break;
        }
        return DatabaseFieldConfig.fromField(paramDatabaseType, paramString, paramField);
      }
      catch (Exception localException) {}
      localDatabaseFieldConfig = null;
    }
    workedC += 1;
    return localDatabaseFieldConfig;
  }
  
  public static <T> DatabaseTableConfig<T> fromClass(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    DatabaseType localDatabaseType = paramConnectionSource.getDatabaseType();
    String str = DatabaseTableConfig.extractTableName(paramClass);
    ArrayList localArrayList = new ArrayList();
    for (paramConnectionSource = paramClass; paramConnectionSource != null; paramConnectionSource = paramConnectionSource.getSuperclass())
    {
      Field[] arrayOfField = paramConnectionSource.getDeclaredFields();
      int j = arrayOfField.length;
      int i = 0;
      while (i < j)
      {
        DatabaseFieldConfig localDatabaseFieldConfig = configFromField(localDatabaseType, str, arrayOfField[i]);
        if ((localDatabaseFieldConfig != null) && (localDatabaseFieldConfig.isPersisted())) {
          localArrayList.add(localDatabaseFieldConfig);
        }
        i += 1;
      }
    }
    if (localArrayList.size() == 0) {
      return null;
    }
    return new DatabaseTableConfig(paramClass, str, localArrayList);
  }
  
  public static int getWorkedC()
  {
    return workedC;
  }
  
  /* Error */
  private static int[] lookupClasses()
  {
    // Byte code:
    //   0: ldc_w 399
    //   3: invokestatic 403	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   6: putstatic 248	com/j256/ormlite/android/DatabaseTableConfigUtil:annotationFactoryClazz	Ljava/lang/Class;
    //   9: ldc_w 405
    //   12: invokestatic 403	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   15: putstatic 407	com/j256/ormlite/android/DatabaseTableConfigUtil:annotationMemberClazz	Ljava/lang/Class;
    //   18: ldc_w 409
    //   21: invokestatic 403	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   24: astore_0
    //   25: getstatic 248	com/j256/ormlite/android/DatabaseTableConfigUtil:annotationFactoryClazz	Ljava/lang/Class;
    //   28: ldc_w 411
    //   31: invokevirtual 415	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   34: astore_1
    //   35: aload_1
    //   36: putstatic 250	com/j256/ormlite/android/DatabaseTableConfigUtil:elementsField	Ljava/lang/reflect/Field;
    //   39: aload_1
    //   40: iconst_1
    //   41: invokevirtual 418	java/lang/reflect/Field:setAccessible	(Z)V
    //   44: getstatic 407	com/j256/ormlite/android/DatabaseTableConfigUtil:annotationMemberClazz	Ljava/lang/Class;
    //   47: ldc_w 420
    //   50: invokevirtual 415	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   53: astore_1
    //   54: aload_1
    //   55: putstatic 422	com/j256/ormlite/android/DatabaseTableConfigUtil:nameField	Ljava/lang/reflect/Field;
    //   58: aload_1
    //   59: iconst_1
    //   60: invokevirtual 418	java/lang/reflect/Field:setAccessible	(Z)V
    //   63: getstatic 407	com/j256/ormlite/android/DatabaseTableConfigUtil:annotationMemberClazz	Ljava/lang/Class;
    //   66: ldc_w 424
    //   69: invokevirtual 415	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   72: astore_1
    //   73: aload_1
    //   74: putstatic 264	com/j256/ormlite/android/DatabaseTableConfigUtil:valueField	Ljava/lang/reflect/Field;
    //   77: aload_1
    //   78: iconst_1
    //   79: invokevirtual 418	java/lang/reflect/Field:setAccessible	(Z)V
    //   82: ldc_w 426
    //   85: ldc_w 428
    //   88: invokevirtual 415	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   91: astore_1
    //   92: aload_1
    //   93: ldc_w 340
    //   96: invokevirtual 344	java/lang/reflect/Field:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   99: checkcast 340	com/j256/ormlite/field/DatabaseField
    //   102: invokestatic 242	java/lang/reflect/Proxy:getInvocationHandler	(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    //   105: astore_1
    //   106: aload_1
    //   107: invokevirtual 246	java/lang/Object:getClass	()Ljava/lang/Class;
    //   110: getstatic 248	com/j256/ormlite/android/DatabaseTableConfigUtil:annotationFactoryClazz	Ljava/lang/Class;
    //   113: if_acmpeq +14 -> 127
    //   116: aconst_null
    //   117: areturn
    //   118: astore_0
    //   119: aconst_null
    //   120: areturn
    //   121: astore_0
    //   122: aconst_null
    //   123: areturn
    //   124: astore_0
    //   125: aconst_null
    //   126: areturn
    //   127: getstatic 250	com/j256/ormlite/android/DatabaseTableConfigUtil:elementsField	Ljava/lang/reflect/Field;
    //   130: aload_1
    //   131: invokevirtual 256	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   134: astore_1
    //   135: aload_1
    //   136: ifnull +65 -> 201
    //   139: aload_1
    //   140: invokevirtual 246	java/lang/Object:getClass	()Ljava/lang/Class;
    //   143: aload_0
    //   144: if_acmpeq +6 -> 150
    //   147: goto +54 -> 201
    //   150: aload_1
    //   151: checkcast 262	[Ljava/lang/Object;
    //   154: checkcast 262	[Ljava/lang/Object;
    //   157: astore_0
    //   158: aload_0
    //   159: arraylength
    //   160: newarray <illegal type>
    //   162: astore_1
    //   163: iconst_0
    //   164: istore_2
    //   165: iload_2
    //   166: aload_0
    //   167: arraylength
    //   168: if_icmpge +28 -> 196
    //   171: aload_1
    //   172: iload_2
    //   173: getstatic 422	com/j256/ormlite/android/DatabaseTableConfigUtil:nameField	Ljava/lang/reflect/Field;
    //   176: aload_0
    //   177: iload_2
    //   178: aaload
    //   179: invokevirtual 256	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   182: checkcast 110	java/lang/String
    //   185: invokestatic 430	com/j256/ormlite/android/DatabaseTableConfigUtil:configFieldNameToNum	(Ljava/lang/String;)I
    //   188: iastore
    //   189: iload_2
    //   190: iconst_1
    //   191: iadd
    //   192: istore_2
    //   193: goto -28 -> 165
    //   196: aload_1
    //   197: areturn
    //   198: astore_0
    //   199: aconst_null
    //   200: areturn
    //   201: aconst_null
    //   202: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   24	1	0	localClass	Class
    //   118	1	0	localClassNotFoundException	ClassNotFoundException
    //   121	1	0	localSecurityException	SecurityException
    //   124	20	0	localNoSuchFieldException	NoSuchFieldException
    //   157	20	0	arrayOfObject	Object[]
    //   198	1	0	localIllegalAccessException	IllegalAccessException
    //   34	163	1	localObject	Object
    //   164	29	2	i	int
    // Exception table:
    //   from	to	target	type
    //   0	25	118	java/lang/ClassNotFoundException
    //   25	92	121	java/lang/SecurityException
    //   25	92	124	java/lang/NoSuchFieldException
    //   127	135	198	java/lang/IllegalAccessException
    //   139	147	198	java/lang/IllegalAccessException
    //   150	163	198	java/lang/IllegalAccessException
    //   165	189	198	java/lang/IllegalAccessException
  }
  
  private static String valueIfNotBlank(String paramString)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() != 0) {}
    }
    else
    {
      str = null;
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.DatabaseTableConfigUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */