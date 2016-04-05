package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

public class MappedDelete<T, ID>
  extends BaseMappedStatement<T, ID>
{
  private MappedDelete(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType)
  {
    super(paramTableInfo, paramString, paramArrayOfFieldType);
  }
  
  public static <T, ID> MappedDelete<T, ID> build(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo)
  {
    FieldType localFieldType = paramTableInfo.getIdField();
    if (localFieldType == null) {
      throw new SQLException("Cannot delete from " + paramTableInfo.getDataClass() + " because it doesn't have an id field");
    }
    StringBuilder localStringBuilder = new StringBuilder(64);
    appendTableName(paramDatabaseType, localStringBuilder, "DELETE FROM ", paramTableInfo.getTableName());
    appendWhereFieldEq(paramDatabaseType, localFieldType, localStringBuilder, null);
    return new MappedDelete(paramTableInfo, localStringBuilder.toString(), new FieldType[] { localFieldType });
  }
  
  public int delete(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    try
    {
      Object[] arrayOfObject = getFieldObjects(paramT);
      int i = paramDatabaseConnection.delete(statement, arrayOfObject, argFieldTypes);
      logger.debug("delete data with statement '{}' and {} args, changed {} rows", statement, Integer.valueOf(arrayOfObject.length), Integer.valueOf(i));
      if (arrayOfObject.length > 0) {
        logger.trace("delete arguments: {}", arrayOfObject);
      }
      if ((i > 0) && (paramObjectCache != null))
      {
        paramDatabaseConnection = idField.extractJavaFieldToSqlArgValue(paramT);
        paramObjectCache.remove(clazz, paramDatabaseConnection);
      }
      return i;
    }
    catch (SQLException paramDatabaseConnection)
    {
      throw SqlExceptionUtil.create("Unable to run delete stmt on object " + paramT + ": " + statement, paramDatabaseConnection);
    }
  }
  
  public int deleteById(DatabaseConnection paramDatabaseConnection, ID paramID, ObjectCache paramObjectCache)
  {
    try
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = convertIdToFieldObject(paramID);
      int i = paramDatabaseConnection.delete(statement, arrayOfObject, argFieldTypes);
      logger.debug("delete data with statement '{}' and {} args, changed {} rows", statement, Integer.valueOf(arrayOfObject.length), Integer.valueOf(i));
      if (arrayOfObject.length > 0) {
        logger.trace("delete arguments: {}", arrayOfObject);
      }
      if ((i > 0) && (paramObjectCache != null)) {
        paramObjectCache.remove(clazz, paramID);
      }
      return i;
    }
    catch (SQLException paramDatabaseConnection)
    {
      throw SqlExceptionUtil.create("Unable to run deleteById stmt on id " + paramID + ": " + statement, paramDatabaseConnection);
    }
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedDelete
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */