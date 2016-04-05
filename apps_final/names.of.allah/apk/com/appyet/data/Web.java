package com.appyet.data;

import com.j256.ormlite.field.DatabaseField;

public class Web
{
  public static final String COLUMN_DATA = "Data";
  public static final String COLUMN_GUID = "Guid";
  public static final String COLUMN_MODULE_ID = "ModuleId";
  public static final String COLUMN_TYPE = "Type";
  public static final String COLUMN_WEB_ID = "WebId";
  @DatabaseField(columnName="Data", useGetSet=false)
  private String mData;
  @DatabaseField(columnName="Guid", useGetSet=false)
  private String mGuid;
  @DatabaseField(columnName="ModuleId", useGetSet=false)
  private Long mModuleId;
  @DatabaseField(columnName="Type", useGetSet=false)
  private String mType;
  @DatabaseField(columnName="WebId", generatedId=true, useGetSet=false)
  private Long mWebId;
  
  public String getData()
  {
    return mData;
  }
  
  public String getGuid()
  {
    return mGuid;
  }
  
  public Long getModuleId()
  {
    return mModuleId;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public Long getWebId()
  {
    return mWebId;
  }
  
  public void setData(String paramString)
  {
    mData = paramString;
  }
  
  public void setGuid(String paramString)
  {
    mGuid = paramString;
  }
  
  public void setModuleId(Long paramLong)
  {
    mModuleId = paramLong;
  }
  
  public void setType(String paramString)
  {
    mType = paramString;
  }
  
  public void setWebId(Long paramLong)
  {
    mWebId = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.Web
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */