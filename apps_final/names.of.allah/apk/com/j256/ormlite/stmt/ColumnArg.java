package com.j256.ormlite.stmt;

public class ColumnArg
{
  private final String columnName;
  private final String tableName;
  
  public ColumnArg(String paramString)
  {
    tableName = null;
    columnName = paramString;
  }
  
  public ColumnArg(String paramString1, String paramString2)
  {
    tableName = paramString1;
    columnName = paramString2;
  }
  
  public String getColumnName()
  {
    return columnName;
  }
  
  public String getTableName()
  {
    return tableName;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.ColumnArg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */