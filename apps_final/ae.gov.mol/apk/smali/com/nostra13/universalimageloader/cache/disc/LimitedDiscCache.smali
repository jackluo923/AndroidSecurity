.class public abstract Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;
.super Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;
.source "LimitedDiscCache.java"


# instance fields
.field private cacheSize:I

.field private final lastUsageDates:Ljava/util/Map;
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

.field private sizeLimit:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "sizeLimit"    # I

    .prologue
    .line 38
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .param p3, "sizeLimit"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    .line 53
    iput p3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    .line 54
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->calculateCacheSizeAndFillUsageMap()V

    .line 55
    return-void
.end method

.method private calculateCacheSizeAndFillUsageMap()V
    .locals 9

    .prologue
    .line 58
    const/4 v5, 0x0

    .line 59
    .local v5, "size":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 60
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

    .line 61
    .local v1, "cachedFile":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v6

    add-int/2addr v5, v6

    .line 62
    iget-object v6, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "cachedFile":Ljava/io/File;
    :cond_0
    iput v5, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:I

    .line 65
    return-void
.end method

.method private removeNext()I
    .locals 14

    .prologue
    .line 102
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 103
    const/4 v3, 0x0

    .line 128
    :cond_0
    :goto_0
    return v3

    .line 106
    :cond_1
    const/4 v7, 0x0

    .line 107
    .local v7, "oldestUsage":Ljava/lang/Long;
    const/4 v6, 0x0

    .line 108
    .local v6, "mostLongUsedFile":Ljava/io/File;
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 109
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    iget-object v9, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    monitor-enter v9

    .line 110
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v6, :cond_3

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/io/File;

    move-object v6, v0

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Long;

    move-object v7, v0

    goto :goto_1

    .line 115
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 116
    .local v5, "lastValueUsage":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-gez v8, :cond_2

    .line 117
    move-object v7, v5

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/io/File;

    move-object v6, v0

    goto :goto_1

    .line 122
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v5    # "lastValueUsage":Ljava/lang/Long;
    :cond_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p0, v6}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v3

    .line 125
    .local v3, "fileSize":I
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 126
    iget-object v8, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v3    # "fileSize":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:I

    .line 97
    invoke-super {p0}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->clear()V

    .line 98
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/BaseDiscCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 86
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 87
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 88
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-object v1
.end method

.method protected abstract getSize(Ljava/io/File;)I
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 69
    invoke-virtual {p0, p2}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v2

    .line 70
    .local v2, "valueSize":I
    :goto_0
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    if-le v3, v4, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->removeNext()I

    move-result v1

    .line 72
    .local v1, "freedSize":I
    if-nez v1, :cond_1

    .line 75
    .end local v1    # "freedSize":I
    :cond_0
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:I

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 78
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 79
    iget-object v3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void

    .line 73
    .end local v0    # "currentTime":Ljava/lang/Long;
    .restart local v1    # "freedSize":I
    :cond_1
    iget v3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/nostra13/universalimageloader/cache/disc/LimitedDiscCache;->cacheSize:I

    goto :goto_0
.end method
