package com.j256.ormlite.stmt;

import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.support.DatabaseResults;

class StatementExecutor$ObjectArrayRowMapper
  implements GenericRowMapper<Object[]>
{
  private final DataType[] columnTypes;
  
  public StatementExecutor$ObjectArrayRowMapper(DataType[] paramArrayOfDataType)
  {
    columnTypes = paramArrayOfDataType;
  }
  
  public Object[] mapRow(DatabaseResults paramDatabaseResults)
  {
    int j = paramDatabaseResults.getColumnCount();
    Object[] arrayOfObject = new Object[j];
    int i = 0;
    if (i < j)
    {
      if (i >= columnTypes.length) {}
      for (DataType localDataType = DataType.STRING;; localDataType = columnTypes[i])
      {
        arrayOfObject[i] = localDataType.getDataPersister().resultToJava(null, paramDatabaseResults, i);
        i += 1;
        break;
      }
    }
    return arrayOfObject;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.StatementExecutor.ObjectArrayRowMapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */