package com.appyet.data;

import com.appyet.d.e;
import com.appyet.f.l;
import com.appyet.manager.bl;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@DatabaseTable(tableName="Feed")
public class Feed
  implements Serializable
{
  public static final String COLUMN_ARTICLE_NUMBER_LIMIT = "ArticleNumberLimit";
  public static final String COLUMN_CACHE_GUID = "CacheGuid";
  public static final String COLUMN_ENCODING = "Encoding";
  public static final String COLUMN_FAV_ICON = "FavIcon";
  public static final String COLUMN_FEED_ID = "FeedId";
  public static final String COLUMN_FEED_TYPE = "FeedType";
  public static final String COLUMN_GUID = "Guid";
  public static final String COLUMN_HTTPETag = "HTTPETag";
  public static final String COLUMN_HTTPLastModified = "HTTPLastModified";
  public static final String COLUMN_IMAGE_LINK = "ImageLink";
  public static final String COLUMN_IS_AUTO_MOBILIZE = "IsAutoMobilize";
  public static final String COLUMN_IS_DOWNLOAD_NEW_ENCLOSURE = "IsDownloadNewEnclosure";
  public static final String COLUMN_LINK = "Link";
  public static final String COLUMN_MOBILIZE_PROVIDER = "MobilizeProvider";
  public static final String COLUMN_MODULE_ID = "ModuleId";
  public static final String COLUMN_PUB_DATE = "PubDate";
  public static final String COLUMN_STREAM_HASH = "StreamHash";
  public static final String COLUMN_SYNC_DATE = "SyncDate";
  public static final String COLUMN_TITLE = "Title";
  public static final String COLUMN_TOTAL_COUNT = "TotalCount";
  public static final String COLUMN_UNREAD_COUNT = "UnreadCount";
  public static final String COLUMN_WEB_LINK = "WebLink";
  private static final long serialVersionUID = -6582623981712135028L;
  @DatabaseField(columnName="ArticleNumberLimit", useGetSet=false)
  private long mArticleNumberLimit;
  @DatabaseField(columnName="CacheGuid", useGetSet=false)
  private String mCacheGuid;
  @DatabaseField(columnName="Encoding", useGetSet=false)
  private String mEncoding;
  @DatabaseField(columnName="FavIcon", useGetSet=false)
  private String mFavIcon;
  private String mFavIconUrlMD5;
  @DatabaseField(columnName="FeedId", generatedId=true, useGetSet=false)
  private Long mFeedId;
  private List<FeedItem> mFeedItems;
  @DatabaseField(columnName="FeedType", useGetSet=false)
  private Feed.FeedTypeEnum mFeedType;
  @DatabaseField(columnName="Guid", useGetSet=false)
  private String mGuid;
  @DatabaseField(columnName="HTTPETag", useGetSet=false)
  private String mHTTPETag;
  @DatabaseField(columnName="HTTPLastModified", useGetSet=false)
  private String mHTTPLastModified;
  @DatabaseField(columnName="ImageLink", useGetSet=false)
  private String mImageLink;
  private String mImageLinkMD5;
  @DatabaseField(columnName="IsAutoMobilize", useGetSet=false)
  private boolean mIsAutoMobilize;
  @DatabaseField(columnName="IsDownloadNewEnclosure", useGetSet=false)
  private boolean mIsDownloadNewEnclosure;
  private boolean mIsSelected;
  @DatabaseField(canBeNull=false, columnName="Link", uniqueIndex=true, uniqueIndexName="IDX_Feed_Link", useGetSet=false)
  private String mLink;
  @DatabaseField(columnName="MobilizeProvider", useGetSet=false)
  private String mMobilizeProvider;
  @DatabaseField(columnName="ModuleId", useGetSet=false)
  private long mModuleId;
  @DatabaseField(columnName="PubDate", dataType=DataType.DATE_LONG, useGetSet=false)
  private Date mPubDate;
  private String mPubDateString;
  @DatabaseField(columnName="StreamHash", useGetSet=false)
  private String mStreamHash;
  @DatabaseField(columnName="SyncDate", dataType=DataType.DATE_LONG, useGetSet=false)
  private Date mSyncDate;
  @DatabaseField(columnName="Title", useGetSet=false)
  private String mTitle;
  @DatabaseField(columnName="TotalCount", defaultValue="0", useGetSet=false)
  private long mTotalCount;
  @DatabaseField(columnName="UnreadCount", defaultValue="0", useGetSet=false)
  private long mUnreadCount;
  @DatabaseField(columnName="WebLink", useGetSet=false)
  private String mWebLink;
  
  public void applyChange(Feed paramFeed)
  {
    setUnreadCount(paramFeed.getUnreadCount());
    setTotalCount(paramFeed.getTotalCount());
    setFeedId(paramFeed.getFeedId());
    setFeedType(paramFeed.getFeedType());
    setLink(paramFeed.getLink());
    setPubDate(paramFeed.getPubDate());
    setTitle(paramFeed.getTitle());
    setEncoding(paramFeed.getEncoding());
    setFavIcon(paramFeed.getFavIcon());
    setWebLink(paramFeed.getWebLink());
    setImageLink(paramFeed.getImageLink());
    setIsAutoMobilize(paramFeed.getIsAutoMobilize());
    setIsDownloadNewEnclosure(paramFeed.getIsDownloadNewEnclosure());
    setGuid(paramFeed.getGuid());
    setCacheGuid(paramFeed.getCacheGuid());
    setHTTPETag(paramFeed.getHTTPETag());
    setHTTPLastModified(paramFeed.getHTTPLastModified());
    setSyncDate(paramFeed.getSyncDate());
    setStreamHash(paramFeed.getStreamHash());
    setModuleId(paramFeed.getModuleId());
    setArticleNumberLimit(paramFeed.getArticleNumberLimit());
  }
  
  public long getArticleNumberLimit()
  {
    return mArticleNumberLimit;
  }
  
  public String getCacheGuid()
  {
    return mCacheGuid;
  }
  
  public String getEncoding()
  {
    return mEncoding;
  }
  
  public String getFavIcon()
  {
    return mFavIcon;
  }
  
  public String getFavIconUrl()
  {
    if (getFavIcon() != null) {
      return getFavIcon();
    }
    if (getWebLink() != null) {
      return "http://" + bl.a(getWebLink()) + "/favicon.ico";
    }
    return null;
  }
  
  public String getFavIconUrlMD5()
  {
    if (mFavIconUrlMD5 == null)
    {
      String str = getFavIconUrl();
      if (str != null) {
        mFavIconUrlMD5 = e.a(str);
      }
    }
    else
    {
      return mFavIconUrlMD5;
    }
    return null;
  }
  
  public Long getFeedId()
  {
    return mFeedId;
  }
  
  public List<FeedItem> getFeedItems()
  {
    return mFeedItems;
  }
  
  public Feed.FeedTypeEnum getFeedType()
  {
    return mFeedType;
  }
  
  public String getGuid()
  {
    return mGuid;
  }
  
  public String getHTTPETag()
  {
    return mHTTPETag;
  }
  
  public String getHTTPLastModified()
  {
    return mHTTPLastModified;
  }
  
  public String getImageLink()
  {
    return mImageLink;
  }
  
  public String getImageLinkMD5()
  {
    if (mImageLinkMD5 == null)
    {
      String str = getImageLink();
      if (str != null) {
        mImageLinkMD5 = e.a(str);
      }
    }
    else
    {
      return mImageLinkMD5;
    }
    return null;
  }
  
  public boolean getIsAutoMobilize()
  {
    return false;
  }
  
  public boolean getIsDownloadNewEnclosure()
  {
    return mIsDownloadNewEnclosure;
  }
  
  public boolean getIsSelected()
  {
    return mIsSelected;
  }
  
  public String getLink()
  {
    return mLink;
  }
  
  public String getMobilizeProvider()
  {
    return mMobilizeProvider;
  }
  
  public long getModuleId()
  {
    return mModuleId;
  }
  
  public Date getPubDate()
  {
    return mPubDate;
  }
  
  public String getPubDateString()
  {
    return mPubDateString;
  }
  
  public String getStreamHash()
  {
    return mStreamHash;
  }
  
  public Date getSyncDate()
  {
    return mSyncDate;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public long getTotalCount()
  {
    return mTotalCount;
  }
  
  public long getUnreadCount()
  {
    return mUnreadCount;
  }
  
  public String getWebLink()
  {
    return mWebLink;
  }
  
  public void setArticleNumberLimit(long paramLong)
  {
    mArticleNumberLimit = paramLong;
  }
  
  public void setCacheGuid(String paramString)
  {
    mCacheGuid = paramString;
  }
  
  public void setEncoding(String paramString)
  {
    mEncoding = paramString;
  }
  
  public void setFavIcon(String paramString)
  {
    mFavIcon = paramString;
  }
  
  public void setFeedId(Long paramLong)
  {
    mFeedId = paramLong;
  }
  
  public void setFeedItems(List<FeedItem> paramList)
  {
    mFeedItems = paramList;
  }
  
  public void setFeedType(Feed.FeedTypeEnum paramFeedTypeEnum)
  {
    mFeedType = paramFeedTypeEnum;
  }
  
  public void setGuid(String paramString)
  {
    mGuid = paramString;
  }
  
  public void setHTTPETag(String paramString)
  {
    mHTTPETag = paramString;
  }
  
  public void setHTTPLastModified(String paramString)
  {
    mHTTPLastModified = paramString;
  }
  
  public void setImageLink(String paramString)
  {
    mImageLink = paramString;
  }
  
  public void setIsAutoMobilize(boolean paramBoolean)
  {
    mIsAutoMobilize = paramBoolean;
  }
  
  public void setIsDownloadNewEnclosure(boolean paramBoolean)
  {
    mIsDownloadNewEnclosure = paramBoolean;
  }
  
  public void setIsSelected(boolean paramBoolean)
  {
    mIsSelected = paramBoolean;
  }
  
  public void setLink(String paramString)
  {
    mLink = paramString;
  }
  
  public void setMobilizeProvider(String paramString)
  {
    mMobilizeProvider = paramString;
  }
  
  public void setModuleId(long paramLong)
  {
    mModuleId = paramLong;
  }
  
  public void setPubDate(Date paramDate)
  {
    mPubDate = paramDate;
  }
  
  public void setPubDateString(String paramString)
  {
    mPubDateString = paramString;
    try
    {
      if (mPubDateString != null) {
        mPubDate = l.a(mPubDateString);
      }
      return;
    }
    catch (Exception paramString)
    {
      mPubDate = null;
    }
  }
  
  public void setStreamHash(String paramString)
  {
    mStreamHash = paramString;
  }
  
  public void setSyncDate(Date paramDate)
  {
    mSyncDate = paramDate;
  }
  
  public void setTitle(String paramString)
  {
    mTitle = paramString;
  }
  
  public void setTotalCount(long paramLong)
  {
    mTotalCount = paramLong;
  }
  
  public void setUnreadCount(long paramLong)
  {
    mUnreadCount = paramLong;
  }
  
  public void setWebLink(String paramString)
  {
    mWebLink = paramString;
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.Feed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */