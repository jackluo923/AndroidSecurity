.class public Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;-><init>()V

    return-object v0
.end method

.method public static createDiscCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;II)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "discCacheFileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .param p2, "discCacheSize"    # I
    .param p3, "discCacheFileCount"    # I

    .prologue
    .line 38
    if-lez p2, :cond_0

    .line 39
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 40
    .local v1, "individualCacheDir":Ljava/io/File;
    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;

    invoke-direct {v2, v1, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    .line 46
    .end local v1    # "individualCacheDir":Ljava/io/File;
    :goto_0
    return-object v2

    .line 41
    :cond_0
    if-lez p3, :cond_1

    .line 42
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 43
    .restart local v1    # "individualCacheDir":Ljava/io/File;
    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;

    invoke-direct {v2, v1, p1, p3}, Lcom/nostra13/universalimageloader/cache/disc/impl/FileCountLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;I)V

    goto :goto_0

    .line 45
    .end local v1    # "individualCacheDir":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v2, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;

    invoke-direct {v2, v0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    goto :goto_0
.end method

.method public static createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V

    return-object v0
.end method

.method public static createImageDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/nostra13/universalimageloader/core/download/URLConnectionImageDownloader;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/download/URLConnectionImageDownloader;-><init>()V

    return-object v0
.end method

.method public static createMemoryCache(IZ)Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .locals 3
    .param p0, "memoryCacheSize"    # I
    .param p1, "denyCacheImageMultipleSizesInMemory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;-><init>(I)V

    .line 53
    .local v0, "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;, "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_0

    .line 54
    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;->createFuzzyKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;-><init>(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;Ljava/util/Comparator;)V

    .end local v0    # "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;, "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .local v1, "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;, "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    move-object v0, v1

    .line 56
    .end local v1    # "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;, "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .restart local v0    # "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;, "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :cond_0
    return-object v0
.end method
