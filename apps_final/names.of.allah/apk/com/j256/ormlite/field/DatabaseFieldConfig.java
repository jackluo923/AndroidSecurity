package com.j256.ormlite.field;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.types.VoidType;
import com.j256.ormlite.misc.JavaxPersistence;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class DatabaseFieldConfig
{
  public static final boolean DEFAULT_CAN_BE_NULL = true;
  public static final DataType DEFAULT_DATA_TYPE = DataType.UNKNOWN;
  public static final boolean DEFAULT_FOREIGN_COLLECTION_ORDER_ASCENDING = true;
  private static final int DEFAULT_MAX_EAGER_FOREIGN_COLLECTION_LEVEL = 1;
  public static final Class<? extends DataPersister> DEFAULT_PERSISTER_CLASS = VoidType.class;
  private boolean allowGeneratedIdInsert;
  private boolean canBeNull = true;
  private String columnDefinition;
  private String columnName;
  private DataPersister dataPersister;
  private DataType dataType = DEFAULT_DATA_TYPE;
  private String defaultValue;
  private String fieldName;
  private boolean foreign;
  private boolean foreignAutoCreate;
  private boolean foreignAutoRefresh;
  private boolean foreignCollection;
  private String foreignCollectionColumnName;
  private boolean foreignCollectionEager;
  private String foreignCollectionForeignFieldName;
  private int foreignCollectionMaxEagerLevel = 1;
  private boolean foreignCollectionOrderAscending = true;
  private String foreignCollectionOrderColumnName;
  private String foreignColumnName;
  private DatabaseTableConfig<?> foreignTableConfig;
  private String format;
  private boolean generatedId;
  private String generatedIdSequence;
  private boolean id;
  private boolean index;
  private String indexName;
  private int maxForeignAutoRefreshLevel = -1;
  private boolean persisted = true;
  private Class<? extends DataPersister> persisterClass = DEFAULT_PERSISTER_CLASS;
  private boolean readOnly;
  private boolean throwIfNull;
  private boolean unique;
  private boolean uniqueCombo;
  private boolean uniqueIndex;
  private String uniqueIndexName;
  private Enum<?> unknownEnumValue;
  private boolean useGetSet;
  private boolean version;
  private int width;
  
  public DatabaseFieldConfig() {}
  
  public DatabaseFieldConfig(String paramString)
  {
    fieldName = paramString;
  }
  
  public DatabaseFieldConfig(String paramString1, String paramString2, DataType paramDataType, String paramString3, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString4, boolean paramBoolean4, DatabaseTableConfig<?> paramDatabaseTableConfig, boolean paramBoolean5, Enum<?> paramEnum, boolean paramBoolean6, String paramString5, boolean paramBoolean7, String paramString6, String paramString7, boolean paramBoolean8, int paramInt2, int paramInt3)
  {
    fieldName = paramString1;
    columnName = paramString2;
    dataType = DataType.UNKNOWN;
    defaultValue = paramString3;
    width = paramInt1;
    canBeNull = paramBoolean1;
    id = paramBoolean2;
    generatedId = paramBoolean3;
    generatedIdSequence = paramString4;
    foreign = paramBoolean4;
    foreignTableConfig = paramDatabaseTableConfig;
    useGetSet = paramBoolean5;
    unknownEnumValue = paramEnum;
    throwIfNull = paramBoolean6;
    format = paramString5;
    unique = paramBoolean7;
    indexName = paramString6;
    uniqueIndexName = paramString7;
    foreignAutoRefresh = paramBoolean8;
    maxForeignAutoRefreshLevel = paramInt2;
    foreignCollectionMaxEagerLevel = paramInt3;
  }
  
  public static Method findGetMethod(Field paramField, boolean paramBoolean)
  {
    Object localObject = null;
    String str = methodFromField(paramField, "get");
    try
    {
      Method localMethod = paramField.getDeclaringClass().getMethod(str, new Class[0]);
      if (localMethod.getReturnType() != paramField.getType())
      {
        if (!paramBoolean) {
          return localObject;
        }
        throw new IllegalArgumentException("Return type of get method " + str + " does not return " + paramField.getType());
      }
    }
    catch (Exception localException)
    {
      if (paramBoolean)
      {
        throw new IllegalArgumentException("Could not find appropriate get method for " + paramField);
        localObject = localException;
      }
    }
    return (Method)localObject;
  }
  
  private String findIndexName(String paramString)
  {
    if (columnName == null) {
      return paramString + "_" + fieldName + "_idx";
    }
    return paramString + "_" + columnName + "_idx";
  }
  
  public static Enum<?> findMatchingEnumVal(Field paramField, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return null;
    }
    Enum[] arrayOfEnum = (Enum[])paramField.getType().getEnumConstants();
    int j = arrayOfEnum.length;
    int i = 0;
    while (i < j)
    {
      Enum localEnum = arrayOfEnum[i];
      if (localEnum.name().equals(paramString)) {
        return localEnum;
      }
      i += 1;
    }
    throw new IllegalArgumentException("Unknwown enum unknown name " + paramString + " for field " + paramField);
  }
  
  public static Method findSetMethod(Field paramField, boolean paramBoolean)
  {
    Object localObject = null;
    String str = methodFromField(paramField, "set");
    try
    {
      Method localMethod = paramField.getDeclaringClass().getMethod(str, new Class[] { paramField.getType() });
      if (localMethod.getReturnType() != Void.TYPE)
      {
        if (!paramBoolean) {
          return localObject;
        }
        throw new IllegalArgumentException("Return type of set method " + str + " returns " + localMethod.getReturnType() + " instead of void");
      }
    }
    catch (Exception localException)
    {
      if (paramBoolean)
      {
        throw new IllegalArgumentException("Could not find appropriate set method for " + paramField);
        localObject = localException;
      }
    }
    return (Method)localObject;
  }
  
  public static DatabaseFieldConfig fromDatabaseField(DatabaseType paramDatabaseType, String paramString, Field paramField, DatabaseField paramDatabaseField)
  {
    paramString = new DatabaseFieldConfig();
    fieldName = paramField.getName();
    if (paramDatabaseType.isEntityNamesMustBeUpCase()) {
      fieldName = fieldName.toUpperCase();
    }
    columnName = valueIfNotBlank(paramDatabaseField.columnName());
    dataType = paramDatabaseField.dataType();
    paramDatabaseType = paramDatabaseField.defaultValue();
    if (!paramDatabaseType.equals("__ormlite__ no default value string was specified")) {
      defaultValue = paramDatabaseType;
    }
    width = paramDatabaseField.width();
    canBeNull = paramDatabaseField.canBeNull();
    id = paramDatabaseField.id();
    generatedId = paramDatabaseField.generatedId();
    generatedIdSequence = valueIfNotBlank(paramDatabaseField.generatedIdSequence());
    foreign = paramDatabaseField.foreign();
    useGetSet = paramDatabaseField.useGetSet();
    unknownEnumValue = findMatchingEnumVal(paramField, paramDatabaseField.unknownEnumName());
    throwIfNull = paramDatabaseField.throwIfNull();
    format = valueIfNotBlank(paramDatabaseField.format());
    unique = paramDatabaseField.unique();
    uniqueCombo = paramDatabaseField.uniqueCombo();
    index = paramDatabaseField.index();
    indexName = valueIfNotBlank(paramDatabaseField.indexName());
    uniqueIndex = paramDatabaseField.uniqueIndex();
    uniqueIndexName = valueIfNotBlank(paramDatabaseField.uniqueIndexName());
    foreignAutoRefresh = paramDatabaseField.foreignAutoRefresh();
    maxForeignAutoRefreshLevel = paramDatabaseField.maxForeignAutoRefreshLevel();
    persisterClass = paramDatabaseField.persisterClass();
    allowGeneratedIdInsert = paramDatabaseField.allowGeneratedIdInsert();
    columnDefinition = valueIfNotBlank(paramDatabaseField.columnDefinition());
    foreignAutoCreate = paramDatabaseField.foreignAutoCreate();
    version = paramDatabaseField.version();
    foreignColumnName = valueIfNotBlank(paramDatabaseField.foreignColumnName());
    readOnly = paramDatabaseField.readOnly();
    return paramString;
  }
  
  public static DatabaseFieldConfig fromField(DatabaseType paramDatabaseType, String paramString, Field paramField)
  {
    DatabaseField localDatabaseField = (DatabaseField)paramField.getAnnotation(DatabaseField.class);
    if (localDatabaseField != null)
    {
      if (localDatabaseField.persisted()) {
        return fromDatabaseField(paramDatabaseType, paramString, paramField, localDatabaseField);
      }
      return null;
    }
    paramString = (ForeignCollectionField)paramField.getAnnotation(ForeignCollectionField.class);
    if (paramString != null) {
      return fromForeignCollection(paramDatabaseType, paramField, paramString);
    }
    return JavaxPersistence.createFieldConfig(paramDatabaseType, paramField);
  }
  
  private static DatabaseFieldConfig fromForeignCollection(DatabaseType paramDatabaseType, Field paramField, ForeignCollectionField paramForeignCollectionField)
  {
    paramDatabaseType = new DatabaseFieldConfig();
    fieldName = paramField.getName();
    if (paramForeignCollectionField.columnName().length() > 0) {
      columnName = paramForeignCollectionField.columnName();
    }
    foreignCollection = true;
    foreignCollectionEager = paramForeignCollectionField.eager();
    int i = paramForeignCollectionField.maxEagerForeignCollectionLevel();
    if (i != 1) {}
    for (foreignCollectionMaxEagerLevel = i;; foreignCollectionMaxEagerLevel = paramForeignCollectionField.maxEagerLevel())
    {
      foreignCollectionOrderColumnName = valueIfNotBlank(paramForeignCollectionField.orderColumnName());
      foreignCollectionOrderAscending = paramForeignCollectionField.orderAscending();
      foreignCollectionColumnName = valueIfNotBlank(paramForeignCollectionField.columnName());
      paramField = valueIfNotBlank(paramForeignCollectionField.foreignFieldName());
      if (paramField != null) {
        break;
      }
      foreignCollectionForeignFieldName = valueIfNotBlank(valueIfNotBlank(paramForeignCollectionField.foreignColumnName()));
      return paramDatabaseType;
    }
    foreignCollectionForeignFieldName = paramField;
    return paramDatabaseType;
  }
  
  private static String methodFromField(Field paramField, String paramString)
  {
    return paramString + paramField.getName().substring(0, 1).toUpperCase() + paramField.getName().substring(1);
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
  
  public String getColumnDefinition()
  {
    return columnDefinition;
  }
  
  public String getColumnName()
  {
    return columnName;
  }
  
  public DataPersister getDataPersister()
  {
    if (dataPersister == null) {
      return dataType.getDataPersister();
    }
    return dataPersister;
  }
  
  public DataType getDataType()
  {
    return dataType;
  }
  
  public String getDefaultValue()
  {
    return defaultValue;
  }
  
  public String getFieldName()
  {
    return fieldName;
  }
  
  public String getForeignCollectionColumnName()
  {
    return foreignCollectionColumnName;
  }
  
  public String getForeignCollectionForeignFieldName()
  {
    return foreignCollectionForeignFieldName;
  }
  
  public int getForeignCollectionMaxEagerLevel()
  {
    return foreignCollectionMaxEagerLevel;
  }
  
  public String getForeignCollectionOrderColumnName()
  {
    return foreignCollectionOrderColumnName;
  }
  
  public String getForeignColumnName()
  {
    return foreignColumnName;
  }
  
  public DatabaseTableConfig<?> getForeignTableConfig()
  {
    return foreignTableConfig;
  }
  
  public String getFormat()
  {
    return format;
  }
  
  public String getGeneratedIdSequence()
  {
    return generatedIdSequence;
  }
  
  public String getIndexName(String paramString)
  {
    if ((index) && (indexName == null)) {
      indexName = findIndexName(paramString);
    }
    return indexName;
  }
  
  public int getMaxForeignAutoRefreshLevel()
  {
    return maxForeignAutoRefreshLevel;
  }
  
  public Class<? extends DataPersister> getPersisterClass()
  {
    return persisterClass;
  }
  
  public String getUniqueIndexName(String paramString)
  {
    if ((uniqueIndex) && (uniqueIndexName == null)) {
      uniqueIndexName = findIndexName(paramString);
    }
    return uniqueIndexName;
  }
  
  public Enum<?> getUnknownEnumValue()
  {
    return unknownEnumValue;
  }
  
  public int getWidth()
  {
    return width;
  }
  
  public boolean isAllowGeneratedIdInsert()
  {
    return allowGeneratedIdInsert;
  }
  
  public boolean isCanBeNull()
  {
    return canBeNull;
  }
  
  public boolean isForeign()
  {
    return foreign;
  }
  
  public boolean isForeignAutoCreate()
  {
    return foreignAutoCreate;
  }
  
  public boolean isForeignAutoRefresh()
  {
    return foreignAutoRefresh;
  }
  
  public boolean isForeignCollection()
  {
    return foreignCollection;
  }
  
  public boolean isForeignCollectionEager()
  {
    return foreignCollectionEager;
  }
  
  public boolean isForeignCollectionOrderAscending()
  {
    return foreignCollectionOrderAscending;
  }
  
  public boolean isGeneratedId()
  {
    return generatedId;
  }
  
  public boolean isId()
  {
    return id;
  }
  
  public boolean isIndex()
  {
    return index;
  }
  
  public boolean isPersisted()
  {
    return persisted;
  }
  
  public boolean isReadOnly()
  {
    return readOnly;
  }
  
  public boolean isThrowIfNull()
  {
    return throwIfNull;
  }
  
  public boolean isUnique()
  {
    return unique;
  }
  
  public boolean isUniqueCombo()
  {
    return uniqueCombo;
  }
  
  public boolean isUniqueIndex()
  {
    return uniqueIndex;
  }
  
  public boolean isUseGetSet()
  {
    return useGetSet;
  }
  
  public boolean isVersion()
  {
    return version;
  }
  
  public void postProcess()
  {
    if (foreignColumnName != null) {
      foreignAutoRefresh = true;
    }
    if ((foreignAutoRefresh) && (maxForeignAutoRefreshLevel == -1)) {
      maxForeignAutoRefreshLevel = 2;
    }
  }
  
  public void setAllowGeneratedIdInsert(boolean paramBoolean)
  {
    allowGeneratedIdInsert = paramBoolean;
  }
  
  public void setCanBeNull(boolean paramBoolean)
  {
    canBeNull = paramBoolean;
  }
  
  public void setColumnDefinition(String paramString)
  {
    columnDefinition = paramString;
  }
  
  public void setColumnName(String paramString)
  {
    columnName = paramString;
  }
  
  public void setDataPersister(DataPersister paramDataPersister)
  {
    dataPersister = paramDataPersister;
  }
  
  public void setDataType(DataType paramDataType)
  {
    dataType = paramDataType;
  }
  
  public void setDefaultValue(String paramString)
  {
    defaultValue = paramString;
  }
  
  public void setFieldName(String paramString)
  {
    fieldName = paramString;
  }
  
  public void setForeign(boolean paramBoolean)
  {
    foreign = paramBoolean;
  }
  
  public void setForeignAutoCreate(boolean paramBoolean)
  {
    foreignAutoCreate = paramBoolean;
  }
  
  public void setForeignAutoRefresh(boolean paramBoolean)
  {
    foreignAutoRefresh = paramBoolean;
  }
  
  public void setForeignCollection(boolean paramBoolean)
  {
    foreignCollection = paramBoolean;
  }
  
  public void setForeignCollectionColumnName(String paramString)
  {
    foreignCollectionColumnName = paramString;
  }
  
  public void setForeignCollectionEager(boolean paramBoolean)
  {
    foreignCollectionEager = paramBoolean;
  }
  
  @Deprecated
  public void setForeignCollectionForeignColumnName(String paramString)
  {
    foreignCollectionForeignFieldName = paramString;
  }
  
  public void setForeignCollectionForeignFieldName(String paramString)
  {
    foreignCollectionForeignFieldName = paramString;
  }
  
  @Deprecated
  public void setForeignCollectionMaxEagerForeignCollectionLevel(int paramInt)
  {
    foreignCollectionMaxEagerLevel = paramInt;
  }
  
  public void setForeignCollectionMaxEagerLevel(int paramInt)
  {
    foreignCollectionMaxEagerLevel = paramInt;
  }
  
  public void setForeignCollectionOrderAscending(boolean paramBoolean)
  {
    foreignCollectionOrderAscending = paramBoolean;
  }
  
  @Deprecated
  public void setForeignCollectionOrderColumn(String paramString)
  {
    foreignCollectionOrderColumnName = paramString;
  }
  
  public void setForeignCollectionOrderColumnName(String paramString)
  {
    foreignCollectionOrderColumnName = paramString;
  }
  
  public void setForeignColumnName(String paramString)
  {
    foreignColumnName = paramString;
  }
  
  public void setForeignTableConfig(DatabaseTableConfig<?> paramDatabaseTableConfig)
  {
    foreignTableConfig = paramDatabaseTableConfig;
  }
  
  public void setFormat(String paramString)
  {
    format = paramString;
  }
  
  public void setGeneratedId(boolean paramBoolean)
  {
    generatedId = paramBoolean;
  }
  
  public void setGeneratedIdSequence(String paramString)
  {
    generatedIdSequence = paramString;
  }
  
  public void setId(boolean paramBoolean)
  {
    id = paramBoolean;
  }
  
  public void setIndex(boolean paramBoolean)
  {
    index = paramBoolean;
  }
  
  public void setIndexName(String paramString)
  {
    indexName = paramString;
  }
  
  @Deprecated
  public void setMaxEagerForeignCollectionLevel(int paramInt)
  {
    foreignCollectionMaxEagerLevel = paramInt;
  }
  
  public void setMaxForeignAutoRefreshLevel(int paramInt)
  {
    maxForeignAutoRefreshLevel = paramInt;
  }
  
  public void setPersisted(boolean paramBoolean)
  {
    persisted = paramBoolean;
  }
  
  public void setPersisterClass(Class<? extends DataPersister> paramClass)
  {
    persisterClass = paramClass;
  }
  
  public void setReadOnly(boolean paramBoolean)
  {
    readOnly = paramBoolean;
  }
  
  public void setThrowIfNull(boolean paramBoolean)
  {
    throwIfNull = paramBoolean;
  }
  
  public void setUnique(boolean paramBoolean)
  {
    unique = paramBoolean;
  }
  
  public void setUniqueCombo(boolean paramBoolean)
  {
    uniqueCombo = paramBoolean;
  }
  
  public void setUniqueIndex(boolean paramBoolean)
  {
    uniqueIndex = paramBoolean;
  }
  
  public void setUniqueIndexName(String paramString)
  {
    uniqueIndexName = paramString;
  }
  
  public void setUnknownEnumValue(Enum<?> paramEnum)
  {
    unknownEnumValue = paramEnum;
  }
  
  public void setUseGetSet(boolean paramBoolean)
  {
    useGetSet = paramBoolean;
  }
  
  public void setVersion(boolean paramBoolean)
  {
    version = paramBoolean;
  }
  
  public void setWidth(int paramInt)
  {
    width = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.DatabaseFieldConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */