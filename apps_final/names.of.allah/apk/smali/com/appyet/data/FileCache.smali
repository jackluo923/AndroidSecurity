.class public Lcom/appyet/data/FileCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "FileCache"
.end annotation


# static fields
.field public static final COLUMN_CACHE_GUID:Ljava/lang/String; = "CacheGuid"

.field public static final COLUMN_DOWNLOAD_ATTEMPT:Ljava/lang/String; = "DownloadAttempt"

.field public static final COLUMN_DOWNLOAD_STATUS:Ljava/lang/String; = "DownloadStatus"

.field public static final COLUMN_FILE_CACHE_ID:Ljava/lang/String; = "FileCacheId"

.field public static final COLUMN_FILE_CACHE_NAME:Ljava/lang/String; = "FileCacheName"

.field public static final COLUMN_FILE_LINK:Ljava/lang/String; = "FileLink"

.field public static final COLUMN_FILE_TYPE:Ljava/lang/String; = "FileType"

.field private static final serialVersionUID:J = -0x6d4ce6fd3790ac0dL


# instance fields
.field private mCacheGuid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "CacheGuid"
        useGetSet = false
    .end annotation
.end field

.field private mDownloadAttempt:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "DownloadAttempt"
        defaultValue = "0"
        useGetSet = false
    .end annotation
.end field

.field private mDownloadStatus:Lcom/appyet/data/FileCache$DownloadStatusEnum;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "DownloadStatus"
        useGetSet = false
    .end annotation
.end field

.field private mFileCacheId:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "FileCacheId"
        generatedId = true
        useGetSet = false
    .end annotation
.end field

.field private mFileCacheName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "FileCacheName"
        useGetSet = false
    .end annotation
.end field

.field private mFileLink:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "FileLink"
        useGetSet = false
    .end annotation
.end field

.field private mFileType:Lcom/appyet/data/FileCache$FileTypeEnum;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "FileType"
        useGetSet = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FileCache;->mCacheGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadAttempt()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FileCache;->mDownloadAttempt:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDownloadStatus()Lcom/appyet/data/FileCache$DownloadStatusEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FileCache;->mDownloadStatus:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    return-object v0
.end method

.method public getFileCacheId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FileCache;->mFileCacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getFileCacheName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FileCache;->mFileCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FileCache;->mFileLink:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Lcom/appyet/data/FileCache$FileTypeEnum;
    .locals 1

    iget-object v0, p0, Lcom/appyet/data/FileCache;->mFileType:Lcom/appyet/data/FileCache$FileTypeEnum;

    return-object v0
.end method

.method public setCacheGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FileCache;->mCacheGuid:Ljava/lang/String;

    return-void
.end method

.method public setDownloadAttempt(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FileCache;->mDownloadAttempt:Ljava/lang/Integer;

    return-void
.end method

.method public setDownloadStatus(Lcom/appyet/data/FileCache$DownloadStatusEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FileCache;->mDownloadStatus:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    return-void
.end method

.method public setDownloadStatus(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Pending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Pending:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    iput-object v0, p0, Lcom/appyet/data/FileCache;->mDownloadStatus:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Failed:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    iput-object v0, p0, Lcom/appyet/data/FileCache;->mDownloadStatus:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    goto :goto_0

    :cond_1
    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Success:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    iput-object v0, p0, Lcom/appyet/data/FileCache;->mDownloadStatus:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    goto :goto_0

    :cond_2
    const-string v0, "Ignore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    sget-object v0, Lcom/appyet/data/FileCache$DownloadStatusEnum;->Ignore:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    iput-object v0, p0, Lcom/appyet/data/FileCache;->mDownloadStatus:Lcom/appyet/data/FileCache$DownloadStatusEnum;

    goto :goto_0
.end method

.method public setFileCacheId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FileCache;->mFileCacheId:Ljava/lang/Long;

    return-void
.end method

.method public setFileCacheName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FileCache;->mFileCacheName:Ljava/lang/String;

    return-void
.end method

.method public setFileLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FileCache;->mFileLink:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Lcom/appyet/data/FileCache$FileTypeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/data/FileCache;->mFileType:Lcom/appyet/data/FileCache$FileTypeEnum;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->Image:Lcom/appyet/data/FileCache$FileTypeEnum;

    iput-object v0, p0, Lcom/appyet/data/FileCache;->mFileType:Lcom/appyet/data/FileCache$FileTypeEnum;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Podcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->Podcast:Lcom/appyet/data/FileCache$FileTypeEnum;

    iput-object v0, p0, Lcom/appyet/data/FileCache;->mFileType:Lcom/appyet/data/FileCache$FileTypeEnum;

    goto :goto_0

    :cond_2
    const-string v0, "FavIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->FavIcon:Lcom/appyet/data/FileCache$FileTypeEnum;

    iput-object v0, p0, Lcom/appyet/data/FileCache;->mFileType:Lcom/appyet/data/FileCache$FileTypeEnum;

    goto :goto_0

    :cond_3
    const-string v0, "Thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appyet/data/FileCache$FileTypeEnum;->Thumbnail:Lcom/appyet/data/FileCache$FileTypeEnum;

    iput-object v0, p0, Lcom/appyet/data/FileCache;->mFileType:Lcom/appyet/data/FileCache$FileTypeEnum;

    goto :goto_0
.end method
