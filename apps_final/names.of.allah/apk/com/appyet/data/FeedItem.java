package com.appyet.data;

import com.appyet.d.e;
import com.appyet.f.l;
import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;
import java.util.Date;

@DatabaseTable(tableName="FeedItem")
public class FeedItem
  implements Serializable
{
  public static final String COLUMN_ARTICLE = "Article";
  public static final String COLUMN_ARTICLE_STATUS = "ArticleStatus";
  public static final String COLUMN_AUTHOR = "Author";
  public static final String COLUMN_CACHE_GUID = "CacheGuid";
  public static final String COLUMN_COMMENTS_COUNT = "CommentsCount";
  public static final String COLUMN_COMMENTS_LINK = "CommentsLink";
  public static final String COLUMN_COMMENTS_WEBLINK = "CommentsWebLink";
  public static final String COLUMN_CREATED_DATE = "CreatedDate";
  public static final String COLUMN_DESCRIPTION = "Description";
  public static final String COLUMN_ENCLOSURE_CURRENT_POSITION = "EnclosureCurrentPosition";
  public static final String COLUMN_ENCLOSURE_DURATION = "EnclosureDuration";
  public static final String COLUMN_ENCLOSURE_LENGTH = "EnclosureLength";
  public static final String COLUMN_ENCLOSURE_LINK = "EnclosureLink";
  public static final String COLUMN_ENCLOSURE_STATUS = "EnclosureStatus";
  public static final String COLUMN_ENCLOSURE_TYPE = "EnclosureType";
  public static final String COLUMN_FEEDITEM_ID = "FeedItemId";
  public static final String COLUMN_FEED_ID = "FeedId";
  public static final String COLUMN_IS_DELETED = "IsDeleted";
  public static final String COLUMN_IS_QUEUED = "IsQueued";
  public static final String COLUMN_IS_READ = "IsRead";
  public static final String COLUMN_IS_STAR = "IsStar";
  public static final String COLUMN_LINK = "Link";
  public static final String COLUMN_PUB_DATE = "PubDate";
  public static final String COLUMN_QUEUE_ORDER = "QueueOrder";
  public static final String COLUMN_SNIPPET = "Snippet";
  public static final String COLUMN_THUMBNAIL = "Thumbnail";
  public static final String COLUMN_TITLE = "Title";
  public static final String COLUMN_UNIQUE_KEY = "UniqueKey";
  private static final long serialVersionUID = -1873823823597497357L;
  @DatabaseField(columnName="Article", useGetSet=false)
  private String mArticle;
  @DatabaseField(columnName="ArticleStatus", useGetSet=false)
  private FeedItem.ArticleStatusEnum mArticleStatus;
  @DatabaseField(columnName="Author", useGetSet=false)
  private String mAuthor;
  @DatabaseField(columnName="CacheGuid", useGetSet=false)
  private String mCacheGuid;
  @DatabaseField(columnName="CommentsCount", useGetSet=false)
  private String mCommentsCount;
  @DatabaseField(columnName="CommentsLink", useGetSet=false)
  private String mCommentsLink;
  @DatabaseField(columnName="CommentsWebLink", useGetSet=false)
  private String mCommentsWebLink;
  @DatabaseField(canBeNull=true, columnName="CreatedDate", dataType=DataType.DATE_LONG, useGetSet=false)
  private Date mCreatedDate;
  @DatabaseField(columnName="Description", useGetSet=false)
  private String mDescription;
  private FeedItem.DisplayModeEnum mDisplayMode = FeedItem.DisplayModeEnum.None;
  @DatabaseField(columnName="EnclosureCurrentPosition", useGetSet=false)
  private Integer mEnclosureCurrentPosition;
  @DatabaseField(columnName="EnclosureDuration", useGetSet=false)
  private Integer mEnclosureDuration;
  @DatabaseField(columnName="EnclosureLength", useGetSet=false)
  private Integer mEnclosureLength;
  @DatabaseField(columnName="EnclosureLink", useGetSet=false)
  private String mEnclosureLink;
  private String mEnclosureLinkMD5;
  @DatabaseField(columnName="EnclosureStatus", useGetSet=false)
  private FeedItem.EnclosureStatusEnum mEnclosureStatus;
  @DatabaseField(columnName="EnclosureType", useGetSet=false)
  private String mEnclosureType;
  @DatabaseField(columnName="FeedId", foreign=true, useGetSet=false)
  private Feed mFeed;
  @DatabaseField(columnName="FeedItemId", generatedId=true, useGetSet=false)
  private Long mFeedItemId;
  private FeedItem.FlagEnum mFlag;
  @DatabaseField(columnName="IsDeleted", useGetSet=false)
  private boolean mIsDeleted;
  @DatabaseField(columnName="IsQueued", useGetSet=false)
  private boolean mIsQueued;
  @DatabaseField(columnName="IsRead", useGetSet=false)
  private boolean mIsRead;
  @DatabaseField(columnName="IsStar", useGetSet=false)
  private boolean mIsStar;
  @DatabaseField(columnName="Link", useGetSet=false)
  private String mLink;
  @DatabaseField(canBeNull=false, columnName="PubDate", dataType=DataType.DATE_LONG, useGetSet=false)
  private Date mPubDate;
  private String mPubDateString;
  @DatabaseField(columnName="QueueOrder", useGetSet=false)
  private long mQueueOrder;
  @DatabaseField(columnName="Snippet", useGetSet=false)
  private String mSnippet;
  @DatabaseField(columnName="Thumbnail", useGetSet=false)
  private String mThumbnail;
  private String mThumbnailMD5;
  @DatabaseField(columnName="Title", useGetSet=false)
  private String mTitle;
  @DatabaseField(columnName="UniqueKey", useGetSet=false)
  private String mUniqueKey;
  
  public FeedItem()
  {
    mArticleStatus = FeedItem.ArticleStatusEnum.None;
    mEnclosureStatus = FeedItem.EnclosureStatusEnum.None;
  }
  
  public FeedItem(long paramLong)
  {
    mFeedItemId = Long.valueOf(paramLong);
  }
  
  public String buildUniqueKey()
  {
    if (mUniqueKey != null) {
      return mUniqueKey;
    }
    if ((mTitle != null) && (mLink != null)) {
      return mTitle + mLink;
    }
    if ((mTitle == null) && (mLink != null)) {
      return mLink;
    }
    if ((mTitle != null) && (mLink == null)) {
      return mTitle;
    }
    return "";
  }
  
  public String buildUniqueKeyLegacy()
  {
    if ((mTitle != null) && (mLink != null)) {
      return mTitle + mLink;
    }
    if ((mTitle == null) && (mLink != null)) {
      return mLink;
    }
    if ((mTitle != null) && (mLink == null)) {
      return mTitle;
    }
    return "";
  }
  
  public void clear()
  {
    mTitle = null;
    mLink = null;
    mDescription = null;
    mPubDate = null;
    mIsRead = false;
    mIsDeleted = false;
    mCommentsLink = null;
    mCommentsWebLink = null;
    mCommentsCount = null;
    mEnclosureType = null;
    mEnclosureLength = Integer.valueOf(-1);
    mEnclosureLink = null;
    mThumbnail = null;
    mSnippet = null;
    mEnclosureDuration = null;
    mEnclosureCurrentPosition = Integer.valueOf(0);
    mAuthor = null;
    mPubDateString = null;
    mIsQueued = false;
    mQueueOrder = 0L;
    mArticleStatus = FeedItem.ArticleStatusEnum.None;
    mEnclosureStatus = FeedItem.EnclosureStatusEnum.None;
    mArticle = null;
    mCacheGuid = null;
    mCreatedDate = null;
    mUniqueKey = null;
  }
  
  public FeedItem copy()
  {
    FeedItem localFeedItem = new FeedItem();
    mAuthor = mAuthor;
    mTitle = mTitle;
    mLink = mLink;
    mDescription = mDescription;
    mPubDate = mPubDate;
    mIsRead = mIsRead;
    mIsDeleted = mIsDeleted;
    mCommentsLink = mCommentsLink;
    mCommentsWebLink = mCommentsWebLink;
    mCommentsCount = mCommentsCount;
    mEnclosureType = mEnclosureType;
    mEnclosureLength = mEnclosureLength;
    mEnclosureLink = mEnclosureLink;
    mThumbnail = mThumbnail;
    mSnippet = mSnippet;
    mEnclosureDuration = mEnclosureDuration;
    mEnclosureCurrentPosition = mEnclosureCurrentPosition;
    mPubDateString = mPubDateString;
    mIsQueued = mIsQueued;
    mQueueOrder = mQueueOrder;
    mArticleStatus = mArticleStatus;
    mEnclosureStatus = mEnclosureStatus;
    mArticle = mArticle;
    mCacheGuid = mCacheGuid;
    mCreatedDate = mCreatedDate;
    mUniqueKey = mUniqueKey;
    return localFeedItem;
  }
  
  public String getArticle()
  {
    return mArticle;
  }
  
  public FeedItem.ArticleStatusEnum getArticleStatus()
  {
    if (mArticleStatus == null) {
      return FeedItem.ArticleStatusEnum.None;
    }
    return mArticleStatus;
  }
  
  public String getAuthor()
  {
    return mAuthor;
  }
  
  public String getCacheGuid()
  {
    return mCacheGuid;
  }
  
  public String getCommentsCount()
  {
    return mCommentsCount;
  }
  
  public String getCommentsLink()
  {
    return mCommentsLink;
  }
  
  public String getCommentsWebLink()
  {
    return mCommentsWebLink;
  }
  
  public Date getCreatedDate()
  {
    return mCreatedDate;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public FeedItem.DisplayModeEnum getDisplayMode()
  {
    if (mDisplayMode == null) {
      return FeedItem.DisplayModeEnum.None;
    }
    return mDisplayMode;
  }
  
  public Integer getEnclosureCurrentPosition()
  {
    if ((mEnclosureCurrentPosition == null) || (mEnclosureCurrentPosition.intValue() < 0)) {
      return Integer.valueOf(0);
    }
    return mEnclosureCurrentPosition;
  }
  
  public Integer getEnclosureDuration()
  {
    if (mEnclosureDuration == null) {
      return Integer.valueOf(0);
    }
    return mEnclosureDuration;
  }
  
  public Integer getEnclosureLength()
  {
    if ((mEnclosureLength == null) || (mEnclosureLength.intValue() < 0)) {
      return Integer.valueOf(0);
    }
    return mEnclosureLength;
  }
  
  public String getEnclosureLink()
  {
    return mEnclosureLink;
  }
  
  public String getEnclosureLinkMD5()
  {
    if (mEnclosureLinkMD5 == null)
    {
      String str = getEnclosureLink();
      if (str != null) {
        mEnclosureLinkMD5 = e.a(str);
      }
    }
    else
    {
      return mEnclosureLinkMD5;
    }
    return null;
  }
  
  public FeedItem.EnclosureStatusEnum getEnclosureStatus()
  {
    if (mEnclosureStatus == null) {
      return FeedItem.EnclosureStatusEnum.None;
    }
    return mEnclosureStatus;
  }
  
  public String getEnclosureType()
  {
    return mEnclosureType;
  }
  
  public Feed getFeed()
  {
    return mFeed;
  }
  
  public Long getFeedItemId()
  {
    return mFeedItemId;
  }
  
  public FeedItem.FlagEnum getFlag()
  {
    return mFlag;
  }
  
  public boolean getIsDeleted()
  {
    return mIsDeleted;
  }
  
  public boolean getIsQueued()
  {
    return mIsQueued;
  }
  
  public boolean getIsRead()
  {
    return mIsRead;
  }
  
  public boolean getIsStar()
  {
    return mIsStar;
  }
  
  public String getLink()
  {
    return mLink;
  }
  
  public Date getPubDate()
  {
    return mPubDate;
  }
  
  public String getPubDateString()
  {
    return mPubDateString;
  }
  
  public long getQueueOrder()
  {
    return mQueueOrder;
  }
  
  public String getSnippet()
  {
    return mSnippet;
  }
  
  public String getThumbnail()
  {
    return mThumbnail;
  }
  
  public String getThumbnailMD5()
  {
    if (mThumbnailMD5 == null)
    {
      String str = getThumbnail();
      if (str != null) {
        mThumbnailMD5 = e.a(str);
      }
    }
    else
    {
      return mThumbnailMD5;
    }
    return null;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public String getUniqueKey()
  {
    return mUniqueKey;
  }
  
  public void setArticle(String paramString)
  {
    mArticle = paramString;
  }
  
  public void setArticleStatus(FeedItem.ArticleStatusEnum paramArticleStatusEnum)
  {
    mArticleStatus = paramArticleStatusEnum;
  }
  
  public void setAuthor(String paramString)
  {
    mAuthor = paramString;
  }
  
  public void setCacheGuid(String paramString)
  {
    mCacheGuid = paramString;
  }
  
  public void setCommentsCount(String paramString)
  {
    mCommentsCount = paramString;
  }
  
  public void setCommentsLink(String paramString)
  {
    mCommentsLink = paramString;
  }
  
  public void setCommentsWebLink(String paramString)
  {
    mCommentsWebLink = paramString;
  }
  
  public void setCreatedDate(Date paramDate)
  {
    mCreatedDate = paramDate;
  }
  
  public void setDescription(String paramString)
  {
    mDescription = paramString;
  }
  
  public void setDisplayMode(FeedItem.DisplayModeEnum paramDisplayModeEnum)
  {
    mDisplayMode = paramDisplayModeEnum;
  }
  
  public void setEnclosureCurrentPosition(Integer paramInteger)
  {
    mEnclosureCurrentPosition = paramInteger;
  }
  
  public void setEnclosureDuration(Integer paramInteger)
  {
    mEnclosureDuration = paramInteger;
  }
  
  public void setEnclosureLength(Integer paramInteger)
  {
    mEnclosureLength = paramInteger;
  }
  
  public void setEnclosureLink(String paramString)
  {
    mEnclosureLink = paramString;
  }
  
  public void setEnclosureStatus(FeedItem.EnclosureStatusEnum paramEnclosureStatusEnum)
  {
    mEnclosureStatus = paramEnclosureStatusEnum;
  }
  
  public void setEnclosureType(String paramString)
  {
    mEnclosureType = paramString;
  }
  
  public void setFeed(Feed paramFeed)
  {
    mFeed = paramFeed;
  }
  
  public void setFeedItemId(Long paramLong)
  {
    mFeedItemId = paramLong;
  }
  
  public void setFlag(FeedItem.FlagEnum paramFlagEnum)
  {
    mFlag = paramFlagEnum;
  }
  
  public void setIsDeleted(boolean paramBoolean)
  {
    mIsDeleted = paramBoolean;
  }
  
  public void setIsQueued(boolean paramBoolean)
  {
    mIsQueued = paramBoolean;
  }
  
  public void setIsRead(boolean paramBoolean)
  {
    mIsRead = paramBoolean;
  }
  
  public void setIsStar(boolean paramBoolean)
  {
    mIsStar = paramBoolean;
  }
  
  public void setLink(String paramString)
  {
    mLink = paramString;
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
      mPubDate = new Date();
    }
  }
  
  public void setQueueOrder(long paramLong)
  {
    mQueueOrder = paramLong;
  }
  
  public void setSnippet(String paramString)
  {
    mSnippet = paramString;
  }
  
  public void setThumbnail(String paramString)
  {
    mThumbnail = paramString;
  }
  
  public void setTitle(String paramString)
  {
    mTitle = paramString;
  }
  
  public void setUniqueKey(String paramString)
  {
    mUniqueKey = paramString;
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.FeedItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */