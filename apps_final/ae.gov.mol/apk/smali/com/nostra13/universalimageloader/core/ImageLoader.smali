.class public Lcom/nostra13/universalimageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static final ERROR_INIT_CONFIG_WITH_NULL:Ljava/lang/String; = "ImageLoader configuration can not be initialized with null"

.field private static final ERROR_NOT_INIT:Ljava/lang/String; = "ImageLoader must be init with configuration before using"

.field private static final ERROR_WRONG_ARGUMENTS:Ljava/lang/String; = "Wrong arguments were passed to displayImage() method (ImageView reference are required)"

.field private static final LOG_LOAD_IMAGE_FROM_MEMORY_CACHE:Ljava/lang/String; = "Load image from memory cache [%s]"

.field public static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/nostra13/universalimageloader/core/ImageLoader;


# instance fields
.field private final cacheKeysForImageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedImageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

.field private configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final emptyListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private final fakeBitmapDisplayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private imageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final uriLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 56
    new-instance v0, Lcom/nostra13/universalimageloader/core/display/FakeBitmapDisplayer;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/display/FakeBitmapDisplayer;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->fakeBitmapDisplayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cacheKeysForImageViews:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->uriLocks:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    return-void
.end method

.method private createExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-ne v0, v1, :cond_0

    const/4 v8, 0x1

    .line 355
    .local v8, "lifo":Z
    :goto_0
    if-eqz v8, :cond_1

    new-instance v6, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {v6}, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    :goto_1
    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    .line 356
    .local v6, "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v7, v7, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->displayImageThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    .line 354
    .end local v6    # "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .end local v8    # "lifo":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 355
    .restart local v8    # "lifo":Z
    :cond_1
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_1
.end method

.method private getFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 458
    const/4 v3, 0x0

    .line 460
    .local v3, "value":I
    :try_start_0
    const-class v4, Landroid/widget/ImageView;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 461
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 462
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 463
    .local v2, "fieldValue":I
    if-lez v2, :cond_0

    const v4, 0x7fffffff

    if-ge v2, v4, :cond_0

    .line 464
    move v3, v2

    .line 469
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :cond_0
    :goto_0
    return v3

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getImageSizeScaleTo(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 441
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 443
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 444
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 445
    .local v3, "width":I
    if-gtz v3, :cond_0

    const-string v4, "mMaxWidth"

    invoke-direct {p0, p1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 446
    :cond_0
    if-gtz v3, :cond_1

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v3, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    .line 447
    :cond_1
    if-gtz v3, :cond_2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 449
    :cond_2
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 450
    .local v1, "height":I
    if-gtz v1, :cond_3

    const-string v4, "mMaxHeight"

    invoke-direct {p0, p1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 451
    :cond_3
    if-gtz v1, :cond_4

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    .line 452
    :cond_4
    if-gtz v1, :cond_5

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 454
    :cond_5
    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v4, v3, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v4
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lcom/nostra13/universalimageloader/core/ImageLoader;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 474
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 476
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_0
    return-object v0
.end method

.method private initExecutorsIfNeed()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->imageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->imageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->imageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cachedImageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cachedImageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cachedImageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 351
    :cond_3
    return-void
.end method


# virtual methods
.method public cancelDisplayTask(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cacheKeysForImageViews:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-void
.end method

.method public clearDiscCache()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->clear()V

    .line 388
    :cond_0
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->clear()V

    .line 373
    :cond_0
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 112
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 132
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 174
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ImageLoader must be init with configuration before using"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    if-nez p2, :cond_1

    .line 178
    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v4, "Wrong arguments were passed to displayImage() method (ImageView reference are required)"

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :goto_0
    return-void

    .line 181
    :cond_1
    if-nez p4, :cond_2

    .line 182
    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 184
    :cond_2
    if-nez p3, :cond_3

    .line 185
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 188
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cacheKeysForImageViews:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-interface {p4}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingStarted()V

    .line 191
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isShowImageForEmptyUri()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageForEmptyUri()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :goto_1
    invoke-interface {p4, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 194
    :cond_5
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 200
    :cond_6
    invoke-direct {p0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getImageSizeScaleTo(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v3

    .line 201
    .local v3, "targetSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-static {p1, v3}, Lcom/nostra13/universalimageloader/core/assist/MemoryCacheUtil;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, "memoryCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cacheKeysForImageViews:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v1, v10}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 205
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 206
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->loggingEnabled:Z

    if-eqz v1, :cond_7

    const-string v1, "Load image from memory cache [%s]"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v10, v2, v5

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_7
    invoke-interface {p4}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingStarted()V

    .line 208
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v1

    invoke-interface {v1, v7, p2}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    .line 209
    invoke-interface {p4, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 211
    :cond_8
    invoke-interface {p4}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingStarted()V

    .line 213
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isShowStubImage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 214
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getStubImage()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->initExecutorsIfNeed()V

    .line 222
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 223
    .local v0, "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    new-instance v8, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, v1, v0, v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 224
    .local v8, "displayImageTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    invoke-interface {v1, p1}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    .line 225
    .local v9, "isImageCachedOnDisc":Z
    if-eqz v9, :cond_b

    .line 226
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cachedImageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 216
    .end local v0    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v8    # "displayImageTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    .end local v9    # "isImageCachedOnDisc":Z
    :cond_a
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isResetViewBeforeLoading()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 217
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 228
    .restart local v0    # "imageLoadingInfo":Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .restart local v8    # "displayImageTask":Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    .restart local v9    # "isImageCachedOnDisc":Z
    :cond_b
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->imageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 152
    return-void
.end method

.method public getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    return-object v0
.end method

.method public getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cacheKeysForImageViews:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    return-object v0
.end method

.method getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public declared-synchronized init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .prologue
    .line 89
    monitor-enter p0

    if-nez p1, :cond_0

    .line 90
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 92
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_1

    .line 93
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .prologue
    .line 292
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 293
    return-void
.end method

.method public loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .prologue
    const/4 v3, 0x0

    .line 247
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 248
    return-void
.end method

.method public loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "minImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p4, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p5, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .prologue
    .line 320
    if-nez p3, :cond_0

    .line 321
    new-instance p3, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .end local p3    # "minImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    invoke-direct {p3, v2, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 323
    .restart local p3    # "minImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :cond_0
    if-nez p4, :cond_1

    .line 324
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p4, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 328
    :cond_1
    invoke-virtual {p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v2

    instance-of v2, v2, Lcom/nostra13/universalimageloader/core/display/FakeBitmapDisplayer;

    if-eqz v2, :cond_2

    .line 329
    move-object v1, p4

    .line 337
    .local v1, "optionsWithFakeDisplayer":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 338
    .local v0, "fakeImage":Landroid/widget/ImageView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    invoke-virtual {p0, p2, v0, v1, p5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 342
    return-void

    .line 331
    .end local v0    # "fakeImage":Landroid/widget/ImageView;
    .end local v1    # "optionsWithFakeDisplayer":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_2
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v2, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->fakeBitmapDisplayer:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .restart local v1    # "optionsWithFakeDisplayer":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    goto :goto_0
.end method

.method public loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "minImageSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .prologue
    .line 269
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 270
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 411
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 417
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 418
    monitor-exit v1

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->imageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->imageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cachedImageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->cachedImageLoadingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 429
    :cond_1
    return-void
.end method
