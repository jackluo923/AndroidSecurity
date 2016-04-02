.class public Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;
.super Lcom/alipay/mobile/common/cache/mem/MemCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/cache/mem/MemCache",
        "<",
        "Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;


# instance fields
.field protected mSize:J

.field private maxCacheMemSize:J


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/mem/MemCache;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->maxCacheMemSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    new-instance v0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache$1;-><init>(Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;IFZ)V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mGroup:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;)J
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->getSkiaSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->setCacheState(Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    invoke-direct {v0}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSkiaSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->maxCacheMemSize:J

    return-wide v0
.end method

.method private setCacheState(Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-class v0, Lcom/alipay/mobile/commonui/widget/APRecyclingBitmapDrawable;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRecyclingBitmapDrawable;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APRecyclingBitmapDrawable;->setIsCached(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addBitmapDrawableToCache(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)V

    return-void
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapDrawableFromCache(Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    move-result-object v0

    return-object v0
.end method

.method public getMaxsize()J
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->getSkiaSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSize()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected makeEntity(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;",
            ")",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)V

    return-object v0
.end method

.method protected bridge synthetic makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .locals 1

    check-cast p3, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->makeEntity(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)Lcom/alipay/mobile/common/cache/mem/Entity;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p4, v0}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->setCacheState(Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;Z)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p4, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)V

    return-void
.end method

.method protected recordPut(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;

    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    return-void
.end method

.method protected recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;

    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableEntity;->getSize()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/cache/mem/MemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->getSize()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->mSize:J

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->setCacheState(Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->remove(Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    move-result-object v0

    return-object v0
.end method
