.class public Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;
.super Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;


# static fields
.field private static INSTANCE:Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;


# instance fields
.field protected mSize:J

.field private maxCacheMemSize:J


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;->maxCacheMemSize:J

    return-void
.end method

.method public static bridge synthetic getInstance()Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;->getInstance()Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;

    invoke-direct {v0}, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;->INSTANCE:Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getSkiaSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/LittleBitmapDrawableCache;->maxCacheMemSize:J

    return-wide v0
.end method
