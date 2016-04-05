package com.inmobi.commons.db;

import java.util.LinkedHashMap;

public class TableData
{
  private String a;
  private LinkedHashMap<String, ColumnData> b;
  
  public LinkedHashMap<String, ColumnData> getmColumns()
  {
    return b;
  }
  
  public String getmTableName()
  {
    return a;
  }
  
  public void setmColumns(LinkedHashMap<String, ColumnData> paramLinkedHashMap)
  {
    b = paramLinkedHashMap;
  }
  
  public void setmTableName(String paramString)
  {
    a = paramString;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.db.TableData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */