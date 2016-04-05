package com.appyet.data;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName="Widget")
public class Widget
{
  public static final String COLUMN_MODULE_ID = "ModuleId";
  public static final String COLUMN_POSITION = "Position";
  public static final String COLUMN_WIDGET_ID = "WidgetId";
  @DatabaseField(columnName="ModuleId", useGetSet=false)
  private Long mModuleId;
  @DatabaseField(columnName="Position", useGetSet=false)
  private Long mPosition;
  @DatabaseField(allowGeneratedIdInsert=true, columnName="WidgetId", generatedId=true, useGetSet=false)
  private Long mWidgetId;
  
  public Long getModuleId()
  {
    return mModuleId;
  }
  
  public Long getPosition()
  {
    return mPosition;
  }
  
  public Long getWidgetId()
  {
    return mWidgetId;
  }
  
  public void setModuleId(Long paramLong)
  {
    mModuleId = paramLong;
  }
  
  public void setPosition(Long paramLong)
  {
    mPosition = paramLong;
  }
  
  public void setWidgetId(Long paramLong)
  {
    mWidgetId = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.Widget
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */