.class public Lcom/appyet/data/FeedItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "FeedItem"
.end annotation


# static fields
.field public static final COLUMN_ARTICLE:Ljava/lang/String; = "Article"

.field public static final COLUMN_ARTICLE_STATUS:Ljava/lang/String; = "ArticleStatus"

.field public static final COLUMN_AUTHOR:Ljava/lang/String; = "Author"

.field public static final COLUMN_CACHE_GUID:Ljava/lang/String; = "CacheGuid"

.field public static final COLUMN_COMMENTS_COUNT:Ljava/lang/String; = "CommentsCount"

.field public static final COLUMN_COMMENTS_LINK:Ljava/lang/String; = "CommentsLink"

.field public static final COLUMN_COMMENTS_WEBLINK:Ljava/lang/String; = "CommentsWebLink"

.field public static final COLUMN_CREATED_DATE:Ljava/lang/String; = "CreatedDate"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "Description"

.field public static final COLUMN_ENCLOSURE_CURRENT_POSITION:Ljava/lang/String; = "EnclosureCurrentPosition"

.field public static final COLUMN_ENCLOSURE_DURATION:Ljava/lang/String; = "EnclosureDuration"

.field public static final COLUMN_ENCLOSURE_LENGTH:Ljava/lang/String; = "EnclosureLength"

.field public static final COLUMN_ENCLOSURE_LINK:Ljava/lang/String; = "EnclosureLink"

.field public static final COLUMN_ENCLOSURE_STATUS:Ljava/lang/String; = "EnclosureStatus"

.field public static final COLUMN_ENCLOSURE_TYPE:Ljava/lang/String; = "EnclosureType"

.field public static final COLUMN_FEEDITEM_ID:Ljava/lang/String; = "FeedItemId"

.field public static final COLUMN_FEED_ID:Ljava/lang/String; = "FeedId"

.field public static final COLUMN_IS_DELETED:Ljava/lang/String; = "IsDeleted"

.field public static final COLUMN_IS_QUEUED:Ljava/lang/String; = "IsQueued"

.field public static final COLUMN_IS_READ:Ljava/lang/String; = "IsRead"

.field public static final COLUMN_IS_STAR:Ljava/lang/String; = "IsStar"

.field public static final COLUMN_LINK:Ljava/lang/String; = "Link"

.field public static final COLUMN_PUB_DATE:Ljava/lang/String; = "PubDate"

.field public static final COLUMN_QUEUE_ORDER:Ljava/lang/String; = "QueueOrder"

.field public static final COLUMN_SNIPPET:Ljava/lang/String; = "Snippet"

.field public static final COLUMN_THUMBNAIL:Ljava/lang/String; = "Thumbnail"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "Title"

.field public static final COLUMN_UNIQUE_KEY:Ljava/lang/String; = "UniqueKey"

.field private static final serialVersionUID:J = -0x1a0128d6f1316c0dL


# instance fields
.field private mArticle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Article"
        useGetSet = false
    .end annotation
.end field

.field private mArticleStatus:Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "ArticleStatus"
        useGetSet = false
    .end annotation
.end field

.field private mAuthor:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Author"
        useGetSet = false
    .end annotation
.end field

.field private mCacheGuid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CacheGuid"
        useGetSet = false
    .end annotation
.end field

.field private mCommentsCount:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CommentsCount"
        useGetSet = false
    .end annotation
.end field

.field private mCommentsLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CommentsLink"
        useGetSet = false
    .end annotation
.end field

.field private mCommentsWebLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CommentsWebLink"
        useGetSet = false
    .end annotation
.end field

.field private mCreatedDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = true
        columnName = "CreatedDate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        useGetSet = false
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Description"
        useGetSet = false
    .end annotation
.end field

.field private mDisplayMode:Lcom/appyet/data/FeedItem$DisplayModeEnum;

.field private mEnclosureCurrentPosition:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureCurrentPosition"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureDuration:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureDuration"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureLength:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureLength"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureLink"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureLinkMD5:Ljava/lang/String;

.field private mEnclosureStatus:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureStatus"
        useGetSet = false
    .end annotation
.end field

.field private mEnclosureType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "EnclosureType"
        useGetSet = false
    .end annotation
.end field

.field private mFeed:Lcom/appyet/data/Feed;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedId"
        foreign = true
        useGetSet = false
    .end annotation
.end field

.field private mFeedItemId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "FeedItemId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mFlag:Lcom/appyet/data/FeedItem$FlagEnum;

.field private mIsDeleted:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsDeleted"
        useGetSet = false
    .end annotation
.end field

.field private mIsQueued:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsQueued"
        useGetSet = false
    .end annotation
.end field

.field private mIsRead:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsRead"
        useGetSet = false
    .end annotation
.end field

.field private mIsStar:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "IsStar"
        useGetSet = false
    .end annotation
.end field

.field private mLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Link"
        useGetSet = false
    .end annotation
.end field

.field private mPubDate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "PubDate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        useGetSet = false
    .end annotation
.end field

.field private mPubDateString:Ljava/lang/String;

.field private mQueueOrder:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "QueueOrder"
        useGetSet = false
    .end annotation
.end field

.field private mSnippet:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Snippet"
        useGetSet = false
    .end annotation
.end field

.field private mThumbnail:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Thumbnail"
        useGetSet = false
    .end annotation
.end field

.field private mThumbnailMD5:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "Title"
        useGetSet = false
    .end annotation
.end field

.field private mUniqueKey:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "UniqueKey"
        useGetSet = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mDisplayMode:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    sget-object v0, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mArticleStatus:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    sget-object v0, Lcom/appyet/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureStatus:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mDisplayMode:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mFeedItemId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public buildUniqueKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mUniqueKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mUniqueKey:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public buildUniqueKeyLegacy()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mDescription:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mPubDate:Ljava/util/Date;

    iput-boolean v1, p0, Lcom/appyet/data/FeedItem;->mIsRead:Z

    iput-boolean v1, p0, Lcom/appyet/data/FeedItem;->mIsDeleted:Z

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mCommentsWebLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mCommentsCount:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mThumbnail:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mSnippet:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mAuthor:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mPubDateString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/appyet/data/FeedItem;->mIsQueued:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appyet/data/FeedItem;->mQueueOrder:J

    sget-object v0, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mArticleStatus:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    sget-object v0, Lcom/appyet/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureStatus:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mArticle:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    iput-object v2, p0, Lcom/appyet/data/FeedItem;->mUniqueKey:Ljava/lang/String;

    return-void
.end method

.method public copy()Lcom/appyet/data/FeedItem;
    .locals 3

    new-instance v0, Lcom/appyet/data/FeedItem;

    invoke-direct {v0}, Lcom/appyet/data/FeedItem;-><init>()V

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mAuthor:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mAuthor:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mPubDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mPubDate:Ljava/util/Date;

    iget-boolean v1, p0, Lcom/appyet/data/FeedItem;->mIsRead:Z

    iput-boolean v1, v0, Lcom/appyet/data/FeedItem;->mIsRead:Z

    iget-boolean v1, p0, Lcom/appyet/data/FeedItem;->mIsDeleted:Z

    iput-boolean v1, v0, Lcom/appyet/data/FeedItem;->mIsDeleted:Z

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mCommentsWebLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mCommentsWebLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mCommentsCount:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mCommentsCount:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mThumbnail:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mThumbnail:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mSnippet:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mSnippet:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mPubDateString:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mPubDateString:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/appyet/data/FeedItem;->mIsQueued:Z

    iput-boolean v1, v0, Lcom/appyet/data/FeedItem;->mIsQueued:Z

    iget-wide v1, p0, Lcom/appyet/data/FeedItem;->mQueueOrder:J

    iput-wide v1, v0, Lcom/appyet/data/FeedItem;->mQueueOrder:J

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mArticleStatus:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mArticleStatus:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mEnclosureStatus:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mEnclosureStatus:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mArticle:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mArticle:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/appyet/data/FeedItem;->mUniqueKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/appyet/data/FeedItem;->mUniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public getArticle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mArticle:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleStatus()Lcom/appyet/data/FeedItem$ArticleStatusEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mArticleStatus:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->None:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mArticleStatus:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    goto :goto_0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mCommentsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentsWebLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mCommentsWebLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMode()Lcom/appyet/data/FeedItem$DisplayModeEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mDisplayMode:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/data/FeedItem$DisplayModeEnum;->None:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mDisplayMode:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    goto :goto_0
.end method

.method public getEnclosureCurrentPosition()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getEnclosureDuration()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getEnclosureLength()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getEnclosureLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    return-object v0
.end method

.method public getEnclosureLinkMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureLinkMD5:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureLinkMD5:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureLinkMD5:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnclosureStatus()Lcom/appyet/data/FeedItem$EnclosureStatusEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureStatus:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appyet/data/FeedItem$EnclosureStatusEnum;->None:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureStatus:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    goto :goto_0
.end method

.method public getEnclosureType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    return-object v0
.end method

.method public getFeed()Lcom/appyet/data/Feed;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mFeed:Lcom/appyet/data/Feed;

    return-object v0
.end method

.method public getFeedItemId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mFeedItemId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFlag()Lcom/appyet/data/FeedItem$FlagEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mFlag:Lcom/appyet/data/FeedItem$FlagEnum;

    return-object v0
.end method

.method public getIsDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/data/FeedItem;->mIsDeleted:Z

    return v0
.end method

.method public getIsQueued()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/data/FeedItem;->mIsQueued:Z

    return v0
.end method

.method public getIsRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/data/FeedItem;->mIsRead:Z

    return v0
.end method

.method public getIsStar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appyet/data/FeedItem;->mIsStar:Z

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPubDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mPubDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPubDateString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mPubDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueOrder()J
    .locals 2

    iget-wide v0, p0, Lcom/appyet/data/FeedItem;->mQueueOrder:J

    return-wide v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mThumbnailMD5:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mThumbnailMD5:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mThumbnailMD5:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mUniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public setArticle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mArticle:Ljava/lang/String;

    return-void
.end method

.method public setArticleStatus(Lcom/appyet/data/FeedItem$ArticleStatusEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mArticleStatus:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mAuthor:Ljava/lang/String;

    return-void
.end method

.method public setCacheGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mCacheGuid:Ljava/lang/String;

    return-void
.end method

.method public setCommentsCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mCommentsCount:Ljava/lang/String;

    return-void
.end method

.method public setCommentsLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mCommentsLink:Ljava/lang/String;

    return-void
.end method

.method public setCommentsWebLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mCommentsWebLink:Ljava/lang/String;

    return-void
.end method

.method public setCreatedDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mCreatedDate:Ljava/util/Date;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDisplayMode(Lcom/appyet/data/FeedItem$DisplayModeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mDisplayMode:Lcom/appyet/data/FeedItem$DisplayModeEnum;

    return-void
.end method

.method public setEnclosureCurrentPosition(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mEnclosureCurrentPosition:Ljava/lang/Integer;

    return-void
.end method

.method public setEnclosureDuration(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mEnclosureDuration:Ljava/lang/Integer;

    return-void
.end method

.method public setEnclosureLength(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mEnclosureLength:Ljava/lang/Integer;

    return-void
.end method

.method public setEnclosureLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mEnclosureLink:Ljava/lang/String;

    return-void
.end method

.method public setEnclosureStatus(Lcom/appyet/data/FeedItem$EnclosureStatusEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mEnclosureStatus:Lcom/appyet/data/FeedItem$EnclosureStatusEnum;

    return-void
.end method

.method public setEnclosureType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mEnclosureType:Ljava/lang/String;

    return-void
.end method

.method public setFeed(Lcom/appyet/data/Feed;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mFeed:Lcom/appyet/data/Feed;

    return-void
.end method

.method public setFeedItemId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mFeedItemId:Ljava/lang/Long;

    return-void
.end method

.method public setFlag(Lcom/appyet/data/FeedItem$FlagEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mFlag:Lcom/appyet/data/FeedItem$FlagEnum;

    return-void
.end method

.method public setIsDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/data/FeedItem;->mIsDeleted:Z

    return-void
.end method

.method public setIsQueued(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/data/FeedItem;->mIsQueued:Z

    return-void
.end method

.method public setIsRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/data/FeedItem;->mIsRead:Z

    return-void
.end method

.method public setIsStar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/data/FeedItem;->mIsStar:Z

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mLink:Ljava/lang/String;

    return-void
.end method

.method public setPubDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mPubDate:Ljava/util/Date;

    return-void
.end method

.method public setPubDateString(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mPubDateString:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mPubDateString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/data/FeedItem;->mPubDateString:Ljava/lang/String;

    invoke-static {v0}, Lcom/appyet/f/l;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mPubDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/appyet/data/FeedItem;->mPubDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public setQueueOrder(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appyet/data/FeedItem;->mQueueOrder:J

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mSnippet:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mThumbnail:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUniqueKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FeedItem;->mUniqueKey:Ljava/lang/String;

    return-void
.end method
