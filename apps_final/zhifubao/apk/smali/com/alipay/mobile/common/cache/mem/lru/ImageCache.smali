.class public Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;
.super Lcom/alipay/mobile/common/cache/mem/MemCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/cache/mem/MemCache",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;


# instance fields
.field protected mSize:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/mem/MemCache;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    .line 36
    new-instance v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache$1;-><init>(Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;IFZ)V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mGroup:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method private static a()J
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 59
    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    .line 60
    return-wide v0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;)J
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    invoke-direct {v0}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;

    .line 30
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->a:Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
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

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMaxsize()J
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getSize()J
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected makeEntity(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected bridge synthetic makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/cache/mem/Entity;
    .locals 1

    .prologue
    .line 19
    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->makeEntity(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/alipay/mobile/common/cache/mem/Entity;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/cache/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected recordPut(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    check-cast p1, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;

    .line 140
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    .line 141
    return-void
.end method

.method protected recordRemove(Lcom/alipay/mobile/common/cache/mem/Entity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/cache/mem/Entity",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    check-cast p1, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;

    .line 129
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/mem/lru/ImageEntity;->getSize()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->mSize:J

    .line 130
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/cache/mem/MemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
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

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/mem/lru/ImageCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
