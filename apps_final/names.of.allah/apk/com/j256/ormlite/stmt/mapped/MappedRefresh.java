package com.j256.ormlite.stmt.mapped;

import com.j256.ormlite.dao.ObjectCache;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.field.FieldType;
import com.j256.ormlite.support.DatabaseConnection;
import com.j256.ormlite.table.TableInfo;
import java.sql.SQLException;

public class MappedRefresh<T, ID>
  extends MappedQueryForId<T, ID>
{
  private MappedRefresh(TableInfo<T, ID> paramTableInfo, String paramString, FieldType[] paramArrayOfFieldType1, FieldType[] paramArrayOfFieldType2)
  {
    super(paramTableInfo, paramString, paramArrayOfFieldType1, paramArrayOfFieldType2, "refresh");
  }
  
  public static <T, ID> MappedRefresh<T, ID> build(DatabaseType paramDatabaseType, TableInfo<T, ID> paramTableInfo)
  {
    FieldType localFieldType = paramTableInfo.getIdField();
    if (localFieldType == null) {
      throw new SQLException("Cannot refresh " + paramTableInfo.getDataClass() + " because it doesn't have an id field");
    }
    paramDatabaseType = buildStatement(paramDatabaseType, paramTableInfo, localFieldType);
    localFieldType = paramTableInfo.getIdField();
    FieldType[] arrayOfFieldType = paramTableInfo.getFieldTypes();
    return new MappedRefresh(paramTableInfo, paramDatabaseType, new FieldType[] { localFieldType }, arrayOfFieldType);
  }
  
  public int executeRefresh(DatabaseConnection paramDatabaseConnection, T paramT, ObjectCache paramObjectCache)
  {
    paramDatabaseConnection = super.execute(paramDatabaseConnection, idField.extractJavaFieldValue(paramT), null);
    if (paramDatabaseConnection == null) {
      return 0;
    }
    FieldType[] arrayOfFieldType = resultsFieldTypes;
    int j = arrayOfFieldType.length;
    int i = 0;
    while (i < j)
    {
      FieldType localFieldType = arrayOfFieldType[i];
      if (localFieldType != idField) {
        localFieldType.assignField(paramT, localFieldType.extractJavaFieldValue(paramDatabaseConnection), false, paramObjectCache);
      }
      i += 1;
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.mapped.MappedRefresh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */