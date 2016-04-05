package com.appyet.data;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

@DatabaseTable(tableName="Forum")
public class Forum
{
  public static final String COLUMN_FORUM_ID = "ForumId";
  public static final String COLUMN_GUID = "Guid";
  public static final String COLUMN_LINK = "Link";
  public static final String COLUMN_MODULE_ID = "ModuleId";
  private static final long serialVersionUID = 1L;
  @DatabaseField(columnName="ForumId", generatedId=true, useGetSet=false)
  private Long mForumId;
  @DatabaseField(columnName="Guid", useGetSet=false)
  private String mGuid;
  @DatabaseField(canBeNull=false, columnName="Link", uniqueIndex=true, useGetSet=false)
  private String mLink;
  @DatabaseField(columnName="ModuleId", useGetSet=false)
  private long mModuleId;
  
  public Long getForumId()
  {
    return mForumId;
  }
  
  public String getGuid()
  {
    return mGuid;
  }
  
  public String getLink()
  {
    return mLink;
  }
  
  public Long getModuleId()
  {
    return Long.valueOf(mModuleId);
  }
  
  public void setForumId(Long paramLong)
  {
    mForumId = paramLong;
  }
  
  public void setGuid(String paramString)
  {
    mGuid = paramString;
  }
  
  public void setLink(String paramString)
  {
    mLink = paramString;
  }
  
  public void setModuleId(Long paramLong)
  {
    mModuleId = paramLong.longValue();
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.Forum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */