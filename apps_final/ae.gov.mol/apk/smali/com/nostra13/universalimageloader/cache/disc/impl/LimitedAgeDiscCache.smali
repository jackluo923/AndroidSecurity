.class public Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;
.super Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;
.source "LimitedAgeDiscCache.java"


# instance fields
.field private final loadingDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxFileAge:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "maxAge"    # J

    .prologue
    .line 32
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;J)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .param p3, "maxAge"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->loadingDates:Ljava/util/Map;

    .line 46
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->maxFileAge:J

    .line 47
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->readLoadingDates()V

    .line 48
    return-void
.end method

.method private readLoadingDates()V
    .locals 8

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 52
    .local v2, "cachedFiles":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 53
    .local v1, "cachedFile":Ljava/io/File;
    iget-object v5, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->loadingDates:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "cachedFile":Ljava/io/File;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 69
    .local v1, "loadingDate":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->maxFileAge:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v1    # "loadingDate":Ljava/lang/Long;
    :cond_1
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    .local v0, "currentTime":J
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 61
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/LimitedAgeDiscCache;->loadingDates:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
