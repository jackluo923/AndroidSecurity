package com.j256.ormlite.stmt;

import com.j256.ormlite.dao.RawRowObjectMapper;
import com.j256.ormlite.field.DataPersister;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.support.DatabaseResults;

class StatementExecutor$UserRawRowObjectMapper<UO>
  implements GenericRowMapper<UO>
{
  private String[] columnNames;
  private final DataType[] columnTypes;
  private final RawRowObjectMapper<UO> mapper;
  
  public StatementExecutor$UserRawRowObjectMapper(RawRowObjectMapper<UO> paramRawRowObjectMapper, DataType[] paramArrayOfDataType)
  {
    mapper = paramRawRowObjectMapper;
    columnTypes = paramArrayOfDataType;
  }
  
  private String[] getColumnNames(DatabaseResults paramDatabaseResults)
  {
    if (columnNames != null) {
      return columnNames;
    }
    columnNames = paramDatabaseResults.getColumnNames();
    return columnNames;
  }
  
  public UO mapRow(DatabaseResults paramDatabaseResults)
  {
    int j = paramDatabaseResults.getColumnCount();
    Object[] arrayOfObject = new Object[j];
    int i = 0;
    if (i < j)
    {
      if (i >= columnTypes.length) {
        arrayOfObject[i] = null;
      }
      for (;;)
      {
        i += 1;
        break;
        arrayOfObject[i] = columnTypes[i].getDataPersister().resultToJava(null, paramDatabaseResults, i);
      }
    }
    return (UO)mapper.mapRow(getColumnNames(paramDatabaseResults), columnTypes, arrayOfObject);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.StatementExecutor.UserRawRowObjectMapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */