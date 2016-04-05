package com.j256.ormlite.stmt.query;

public class OrderBy
{
  private final boolean ascending;
  private final String columnName;
  
  public OrderBy(String paramString, boolean paramBoolean)
  {
    columnName = paramString;
    ascending = paramBoolean;
  }
  
  public String getColumnName()
  {
    return columnName;
  }
  
  public boolean isAscending()
  {
    return ascending;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.stmt.query.OrderBy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */