.class public Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_MEMORY_CACHE_SIZE:I = 0x200000

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0x3

.field public static final DEFAULT_THREAD_PRIORITY:I = 0x4

.field private static final WARNING_DISC_CACHE_ALREADY_SET:Ljava/lang/String; = "You already have set disc cache. This method call will make no effect."

.field private static final WARNING_MEMORY_CACHE_ALREADY_SET:Ljava/lang/String; = "You already have set memory cache. This method call will make no effect."

.field private static final WARNING_OVERLAP_DISC_CACHE_FILE_COUNT:Ljava/lang/String; = "This method\'s call overlaps discCacheFileCount() method call"

.field private static final WARNING_OVERLAP_DISC_CACHE_FILE_NAME_GENERATOR:Ljava/lang/String; = "This method\'s call overlaps discCacheFileNameGenerator() method call"

.field private static final WARNING_OVERLAP_DISC_CACHE_SIZE:Ljava/lang/String; = "This method\'s call overlaps discCacheSize() method call"

.field private static final WARNING_OVERLAP_MEMORY_CACHE_SIZE:Ljava/lang/String; = "This method\'s call overlaps memoryCacheSize() method call"


# instance fields
.field private context:Landroid/content/Context;

.field private defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private denyCacheImageMultipleSizesInMemory:Z

.field private discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

.field private discCacheFileCount:I

.field private discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field private discCacheSize:I

.field private downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private handleOutOfMemory:Z

.field private imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

.field private imageQualityForDiscCache:I

.field private loggingEnabled:Z

.field private maxImageHeightForDiscCache:I

.field private maxImageHeightForMemoryCache:I

.field private maxImageWidthForDiscCache:I

.field private maxImageWidthForMemoryCache:I

.field private memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private memoryCacheSize:I

.field private tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field private threadPoolSize:I

.field private threadPriority:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 124
    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 125
    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    .line 126
    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    .line 127
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    .line 128
    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    .line 130
    const/4 v0, 0x3

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    .line 131
    const/4 v0, 0x4

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 132
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->handleOutOfMemory:Z

    .line 134
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 136
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 137
    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    .line 138
    iput v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    .line 140
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    .line 141
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .line 142
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 143
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 144
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 146
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->loggingEnabled:Z

    .line 149
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    return v0
.end method

.method static synthetic access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return v0
.end method

.method static synthetic access$1000(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->loggingEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return v0
.end method

.method static synthetic access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    return v0
.end method

.method static synthetic access$300(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    return v0
.end method

.method static synthetic access$400(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    return v0
.end method

.method static synthetic access$600(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->handleOutOfMemory:Z

    return v0
.end method

.method static synthetic access$800(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    return-object v0
.end method

.method private initEmptyFiledsWithDefaultValues()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    if-nez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-nez v0, :cond_0

    .line 382
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    iget v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    iget v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    invoke-static {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createDiscCache(Landroid/content/Context;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;II)Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    if-nez v0, :cond_2

    .line 387
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createMemoryCache(IZ)Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    if-nez v0, :cond_3

    .line 390
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createImageDownloader()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_4

    .line 393
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 395
    :cond_4
    return-void
.end method


# virtual methods
.method public build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->initEmptyFiledsWithDefaultValues()V

    .line 376
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$1;)V

    return-object v0
.end method

.method public defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "defaultDisplayImageOptions"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 364
    return-object p0
.end method

.method public denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 228
    return-object p0
.end method

.method public discCache(Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 3
    .param p1, "discCache"    # Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .prologue
    const/4 v2, 0x0

    .line 348
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    if-lez v0, :cond_0

    const-string v0, "This method\'s call overlaps discCacheSize() method call"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :cond_0
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    if-lez v0, :cond_1

    const-string v0, "This method\'s call overlaps discCacheFileCount() method call"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-eqz v0, :cond_2

    const-string v0, "This method\'s call overlaps discCacheFileNameGenerator() method call"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    :cond_2
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .line 353
    return-object p0
.end method

.method public discCacheExtraOptions(IILandroid/graphics/Bitmap$CompressFormat;I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "maxImageWidthForDiscCache"    # I
    .param p2, "maxImageHeightForDiscCache"    # I
    .param p3, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "compressQuality"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiscCache:I

    .line 185
    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiscCache:I

    .line 186
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    .line 187
    iput p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageQualityForDiscCache:I

    .line 188
    return-object p0
.end method

.method public discCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 3
    .param p1, "maxFileCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 307
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxFileCount must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    if-eqz v0, :cond_1

    const-string v0, "You already have set disc cache. This method call will make no effect."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_1
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    if-lez v0, :cond_2

    const-string v0, "This method\'s call overlaps discCacheSize() method call"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_2
    iput v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    .line 312
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    .line 313
    return-object p0
.end method

.method public discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    if-eqz v0, :cond_0

    const-string v0, "You already have set disc cache. This method call will make no effect."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 326
    return-object p0
.end method

.method public discCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 3
    .param p1, "maxCacheSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 290
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    if-eqz v0, :cond_1

    const-string v0, "You already have set disc cache. This method call will make no effect."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_1
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileCount:I

    if-lez v0, :cond_2

    const-string v0, "This method\'s call overlaps discCacheFileCount() method call"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    :cond_2
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheSize:I

    .line 295
    return-object p0
.end method

.method public enableLogging()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->loggingEnabled:Z

    .line 370
    return-object p0
.end method

.method public imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "imageDownloader"    # Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 337
    return-object p0
.end method

.method public memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "memoryCache":Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;, "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    const/high16 v1, 0x200000

    if-eq v0, v1, :cond_0

    const-string v0, "This method\'s call overlaps memoryCacheSize() method call"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    .line 278
    return-object p0
.end method

.method public memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "maxImageWidthForMemoryCache"    # I
    .param p2, "maxImageHeightForMemoryCache"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 164
    iput p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 165
    return-object p0
.end method

.method public memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .param p1, "memoryCacheSize"    # I

    .prologue
    .line 260
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "memoryCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    if-eqz v0, :cond_1

    const-string v0, "You already have set memory cache. This method call will make no effect."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_1
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 264
    return-object p0
.end method

.method public offOutOfMemoryHandling()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->handleOutOfMemory:Z

    .line 239
    return-object p0
.end method

.method public tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "tasksProcessingType"    # Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 248
    return-object p0
.end method

.method public threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    .line 197
    return-object p0
.end method

.method public threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .param p1, "threadPriority"    # I

    .prologue
    const/4 v0, 0x1

    .line 206
    if-ge p1, v0, :cond_0

    .line 207
    iput v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 215
    :goto_0
    return-object p0

    .line 209
    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 210
    const/16 p1, 0xa

    goto :goto_0

    .line 212
    :cond_1
    iput p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_0
.end method
