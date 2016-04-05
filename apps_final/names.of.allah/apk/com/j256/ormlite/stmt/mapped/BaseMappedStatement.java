package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.table.TableInfo;
import java.util.List;

public abstract class BaseMappedStatement<T, ID>
{
  protected static Logger logger = LoggerFactory.getLogger(BaseMappedStatement.class);
  protected final FieldType[] argFieldTypes;
  protected final Class<T> clazz;
  protected final FieldType idField;
  protected final String statement;
  protected final TableInfo<T, ID> tableInfo;
  
  protected BaseMappedStatement(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType)
  {
    tableInfo = paramTableInfo;
    clazz = paramTableInfo.getDataClass();
    idField = paramTableInfo.getIdField();
    statement = paramString;
    argFieldTypes = paramArrayOfFieldType;
  }
  
  static void appendFieldColumnName(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, FieldType paramFieldType, List<FieldType> paramList)
  {
    paramDatabaseType.appendEscapedEntityName(paramStringBuilder, paramFieldType.getColumnName());
    if (paramList != null) {
      paramList.add(paramFieldType);
    }
    paramStringBuilder.append(' ');
  }
  
  static void appendTableName(DatabaseType paramDatabaseType, StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    if (paramString1 != null) {
      paramStringBuilder.append(paramString1);
    }
    paramDatabaseType.appendEscapedEntityName(paramStringBuilder, paramString2);
    paramStringBuilder.append(' ');
  }
  
  static void appendWhereFieldEq(DatabaseType paramDatabaseType, FieldType paramFieldType, StringBuilder paramStringBuilder, List<FieldType> paramList)
  {
    paramStringBuilder.append("WHERE ");
    appendFieldColumnName(paramDatabaseType, paramStringBuilder, paramFieldType, paramList);
    paramStringBuilder.append("= ?");
  }
  
  protected Object convertIdToFieldObject(ID paramID)
  {
    return idField.convertJavaFieldToSqlArgValue(paramID);
  }
  
  protected Object[] getFieldObjects(Object paramObject)
  {
    Object[] arrayOfObject = new Object[argFieldTypes.length];
    int i = 0;
    if (i < argFieldTypes.length)
    {
      FieldType localFieldType = argFieldTypes[i];
      if (localFieldType.isAllowGeneratedIdInsert()) {
        arrayOfObject[i] = localFieldType.getFieldValueIfNotDefault(paramObject);
      }
      for (;;)
      {
        if ((arrayOfObject[i] == null) && (localFieldType.getDefaultValue() != null)) {
          arrayOfObject[i] = localFieldType.getDefaultValue();
        }
        i += 1;
        break;
        arrayOfObject[i] = localFieldType.extractJavaFieldToSqlArgValue(paramObject);
      }
    }
    return arrayOfObject;
  }
  
  public String toString()
  {
    return "MappedStatement: " + statement;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.mapped.BaseMappedStatement
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */