package com.appyet.data;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable(tableName="FileCache")
public class FileCache
  implements Serializable
{
  public static final String COLUMN_CACHE_GUID = "CacheGuid";
  public static final String COLUMN_DOWNLOAD_ATTEMPT = "DownloadAttempt";
  public static final String COLUMN_DOWNLOAD_STATUS = "DownloadStatus";
  public static final String COLUMN_FILE_CACHE_ID = "FileCacheId";
  public static final String COLUMN_FILE_CACHE_NAME = "FileCacheName";
  public static final String COLUMN_FILE_LINK = "FileLink";
  public static final String COLUMN_FILE_TYPE = "FileType";
  private static final long serialVersionUID = -7875923823597497357L;
  @DatabaseField(columnName="CacheGuid", useGetSet=false)
  private String mCacheGuid;
  @DatabaseField(canBeNull=false, columnName="DownloadAttempt", defaultValue="0", useGetSet=false)
  private Integer mDownloadAttempt;
  @DatabaseField(canBeNull=false, columnName="DownloadStatus", useGetSet=false)
  private FileCache.DownloadStatusEnum mDownloadStatus;
  @DatabaseField(canBeNull=false, columnName="FileCacheId", generatedId=true, useGetSet=false)
  private Long mFileCacheId;
  @DatabaseField(canBeNull=false, columnName="FileCacheName", useGetSet=false)
  private String mFileCacheName;
  @DatabaseField(canBeNull=false, columnName="FileLink", useGetSet=false)
  private String mFileLink;
  @DatabaseField(canBeNull=false, columnName="FileType", useGetSet=false)
  private FileCache.FileTypeEnum mFileType;
  
  public String getCacheGuid()
  {
    return mCacheGuid;
  }
  
  public Integer getDownloadAttempt()
  {
    return mDownloadAttempt;
  }
  
  public FileCache.DownloadStatusEnum getDownloadStatus()
  {
    return mDownloadStatus;
  }
  
  public Long getFileCacheId()
  {
    return mFileCacheId;
  }
  
  public String getFileCacheName()
  {
    return mFileCacheName;
  }
  
  public String getFileLink()
  {
    return mFileLink;
  }
  
  public FileCache.FileTypeEnum getFileType()
  {
    return mFileType;
  }
  
  public void setCacheGuid(String paramString)
  {
    mCacheGuid = paramString;
  }
  
  public void setDownloadAttempt(Integer paramInteger)
  {
    mDownloadAttempt = paramInteger;
  }
  
  public void setDownloadStatus(FileCache.DownloadStatusEnum paramDownloadStatusEnum)
  {
    mDownloadStatus = paramDownloadStatusEnum;
  }
  
  public void setDownloadStatus(String paramString)
  {
    if (paramString.equals("Pending"))
    {
      mDownloadStatus = FileCache.DownloadStatusEnum.Pending;
      return;
    }
    if (paramString.equals("Failed"))
    {
      mDownloadStatus = FileCache.DownloadStatusEnum.Failed;
      return;
    }
    if (paramString.equals("Success"))
    {
      mDownloadStatus = FileCache.DownloadStatusEnum.Success;
      return;
    }
    paramString.equals("Ignore");
    mDownloadStatus = FileCache.DownloadStatusEnum.Ignore;
  }
  
  public void setFileCacheId(Long paramLong)
  {
    mFileCacheId = paramLong;
  }
  
  public void setFileCacheName(String paramString)
  {
    mFileCacheName = paramString;
  }
  
  public void setFileLink(String paramString)
  {
    mFileLink = paramString;
  }
  
  public void setFileType(FileCache.FileTypeEnum paramFileTypeEnum)
  {
    mFileType = paramFileTypeEnum;
  }
  
  public void setFileType(String paramString)
  {
    if (paramString.equals("Image")) {
      mFileType = FileCache.FileTypeEnum.Image;
    }
    do
    {
      return;
      if (paramString.equals("Podcast"))
      {
        mFileType = FileCache.FileTypeEnum.Podcast;
        return;
      }
      if (paramString.equals("FavIcon"))
      {
        mFileType = FileCache.FileTypeEnum.FavIcon;
        return;
      }
    } while (!paramString.equals("Thumbnail"));
    mFileType = FileCache.FileTypeEnum.Thumbnail;
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.FileCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */