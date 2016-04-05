package com.appyet.data;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName="Module")
public class Module
{
  public static final String COLUMN_GROUP_NAME = "GroupName";
  public static final String COLUMN_GUID = "Guid";
  public static final String COLUMN_ICON = "Icon";
  public static final String COLUMN_IS_HIDDEN = "IsHidden";
  public static final String COLUMN_LAYOUT = "Layout";
  public static final String COLUMN_MODULE_ID = "ModuleId";
  public static final String COLUMN_NAME = "Name";
  public static final String COLUMN_SORT_ORDER = "SortOrder";
  public static final String COLUMN_STATUS_LABEL = "StatusLabel";
  public static final String COLUMN_TYPE = "Type";
  @DatabaseField(columnName="GroupName", useGetSet=false)
  private String mGroupName;
  @DatabaseField(columnName="Guid", useGetSet=false)
  private String mGuid;
  @DatabaseField(columnName="Icon", useGetSet=false)
  private String mIcon;
  @DatabaseField(columnName="IsHidden", useGetSet=false)
  private boolean mIsHidden;
  private boolean mIsSelected;
  @DatabaseField(columnName="Layout", useGetSet=false)
  private String mLayout;
  @DatabaseField(columnName="ModuleId", generatedId=true, useGetSet=false)
  private Long mModuleId;
  @DatabaseField(columnName="Name", useGetSet=false)
  private String mName;
  @DatabaseField(columnName="SortOrder", useGetSet=false)
  private int mSortOrder;
  @DatabaseField(columnName="StatusLabel", useGetSet=false)
  private String mStatusLabel;
  @DatabaseField(columnName="Type", useGetSet=false)
  private String mType;
  
  public String getGroupName()
  {
    return mGroupName;
  }
  
  public String getGuid()
  {
    return mGuid;
  }
  
  public String getIcon()
  {
    return mIcon;
  }
  
  public boolean getIsHidden()
  {
    return mIsHidden;
  }
  
  public boolean getIsSelected()
  {
    return mIsSelected;
  }
  
  public String getLayout()
  {
    return mLayout;
  }
  
  public Long getModuleId()
  {
    return mModuleId;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public int getSortOrder()
  {
    return mSortOrder;
  }
  
  public String getStatusLabel()
  {
    return mStatusLabel;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public void setGroupName(String paramString)
  {
    mGroupName = paramString;
  }
  
  public void setGuid(String paramString)
  {
    mGuid = paramString;
  }
  
  public void setIcon(String paramString)
  {
    mIcon = paramString;
  }
  
  public void setIsHidden(boolean paramBoolean)
  {
    mIsHidden = paramBoolean;
  }
  
  public void setIsSelected(boolean paramBoolean)
  {
    mIsSelected = paramBoolean;
  }
  
  public void setLayout(String paramString)
  {
    mLayout = paramString;
  }
  
  public void setModuleId(Long paramLong)
  {
    mModuleId = paramLong;
  }
  
  public void setName(String paramString)
  {
    mName = paramString;
  }
  
  public void setSortOrder(int paramInt)
  {
    mSortOrder = paramInt;
  }
  
  public void setStatusLabel(String paramString)
  {
    mStatusLabel = paramString;
  }
  
  public void setType(String paramString)
  {
    mType = paramString;
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.Module
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */