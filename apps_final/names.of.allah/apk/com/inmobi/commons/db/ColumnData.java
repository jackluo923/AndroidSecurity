package com.inmobi.commons.db;

public class ColumnData
{
  private boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private ColumnData.ColumnType d;
  
  public ColumnData.ColumnType getDataType()
  {
    return d;
  }
  
  public boolean isAutoIncrement()
  {
    return b;
  }
  
  public boolean isMandatory()
  {
    return c;
  }
  
  public boolean isPrimaryKey()
  {
    return a;
  }
  
  public void setAutoIncrement(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setDataType(ColumnData.ColumnType paramColumnType)
  {
    d = paramColumnType;
  }
  
  public void setMandatory(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void setPrimaryKey(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.db.ColumnData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */