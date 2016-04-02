.class public Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;
.super Lcom/alipay/mobile/common/cache/mem/MemCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/cache/mem/MemCache",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;


# instance fields
.field protected mSize:J

.field private maxCacheMemSize:J


# direct methods
.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/mem/MemCache;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->maxCacheMemSize:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J

    new-instance v0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache$1;-><init>(Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;IFZ)V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mGroup:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;Landroid/graphics/drawable/BitmapDrawable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->setCacheState(Landroid/graphics/drawable/BitmapDrawable;Z)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    invoke-direct {v0}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setCacheState(Landroid/graphics/drawable/BitmapDrawable;Z)V
    .locals 1

    const-class v0, Lcom/alipay/mobile/commonui/widget/APRecyclingBitmapDrawable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APRecyclingBitmapDrawable;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APRecyclingBitmapDrawable;->setIsCached(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addBitmapDrawableToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
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

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapDrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getMaxsize()J
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->getSkiaSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSize()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSkiaSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->maxCacheMemSize:J

    return-wide v0
.end method

.method protected makeEntity(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ")",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0
.end method

.method protected bridge synthetic makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .locals 1

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->makeEntity(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Lcom/alipay/mobile/common/cache/mem/Entity;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p4, v0}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->setCacheState(Landroid/graphics/drawable/BitmapDrawable;Z)V

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

    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected recordPut(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;

    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J

    return-void
.end method

.method protected recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;

    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableEntity;->getSize()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->mSize:J

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/cache/mem/MemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->setCacheState(Landroid/graphics/drawable/BitmapDrawable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->remove(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method
