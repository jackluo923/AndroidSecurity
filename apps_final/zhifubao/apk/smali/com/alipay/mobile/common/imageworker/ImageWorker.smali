.class public Lcom/alipay/mobile/common/imageworker/ImageWorker;
.super Ljava/lang/Object;


# static fields
.field private static final FAST_RECYCLE_SIZE:I = 0x7d000

.field private static final IS_HONEYCOMB:Z

.field private static SCREEN_HEIGHT:I = 0x0

.field private static SCREEN_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageWorker"

.field private static httpInvoker:Lcom/alipay/mobile/common/imageworker/HttpInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/imageworker/HttpInvoker",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static imageStrategy:Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;

.field private static refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static uiHandler:Landroid/os/Handler;


# instance fields
.field private cachePeriod:I

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field private fastToRecycle:Z

.field private height:I

.field private httpTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field private littleBitmapDrawableCache:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

.field private memCache:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

.field private pause:Z

.field private pauseHttpTaskNum:I

.field private pausedTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Landroid/content/res/Resources;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->IS_HONEYCOMB:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;

    invoke-direct {v0}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->imageStrategy:Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->getHttpInvoker(Ljava/lang/Class;)Lcom/alipay/mobile/common/imageworker/HttpInvoker;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpInvoker:Lcom/alipay/mobile/common/imageworker/HttpInvoker;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenHeight()I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->SCREEN_HEIGHT:I

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenWidth()I

    move-result v0

    sput v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->SCREEN_WIDTH:I

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    const/16 v0, 0xa0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->cachePeriod:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->fastToRecycle:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpTaskList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pause:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pauseHttpTaskNum:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pausedTask:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->getInstance()Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->memCache:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    invoke-static {}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->getInstance()Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->littleBitmapDrawableCache:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->renderImageView(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/common/imageworker/ImageWorker;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpTaskList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2()Lcom/alipay/mobile/common/imageworker/HttpInvoker;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpInvoker:Lcom/alipay/mobile/common/imageworker/HttpInvoker;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/common/imageworker/ImageWorker;)Lcom/alipay/mobile/common/cache/disk/DiskCache;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/common/imageworker/ImageWorker;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->cachePeriod:I

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/common/imageworker/ImageWorker;)Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;ILjava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->failure(Ljava/lang/String;ILjava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setDefaultImage(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/common/imageworker/ImageWorker;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private addToPauseList(Ljava/lang/String;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;Lcom/alipay/mobile/common/imageworker/DownloadListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;",
            "Lcom/alipay/mobile/common/imageworker/DownloadListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pausedTask:Ljava/util/List;

    new-instance v0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;-><init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/DownloadListener;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pausedTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pauseHttpTaskNum:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pausedTask:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private bitmapToDrawable(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    sget-boolean v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->IS_HONEYCOMB:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->isNeedFastToRecycle(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    sget-object v2, Lcom/alipay/mobile/common/imageworker/ImageWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v0, v2}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;-><init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->littleBitmapDrawableCache:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    invoke-virtual {v2, p1, v1}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->addBitmapDrawableToCache(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;)V

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APRecyclingBitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Lcom/alipay/mobile/commonui/widget/APRecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->memCache:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->addBitmapDrawableToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_1
.end method

.method public static createBitmap(Ljava/lang/Object;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->SCREEN_WIDTH:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    sget p1, Lcom/alipay/mobile/common/imageworker/ImageWorker;->SCREEN_WIDTH:I

    :cond_1
    sget v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->SCREEN_HEIGHT:I

    if-gt p2, v0, :cond_2

    if-gez p2, :cond_3

    :cond_2
    sget p2, Lcom/alipay/mobile/common/imageworker/ImageWorker;->SCREEN_HEIGHT:I

    :cond_3
    if-lez p1, :cond_7

    if-lez p2, :cond_7

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_0
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, p1

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getDencity()I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez p3, :cond_4

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_4
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_5
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p0

    check-cast v1, [B

    array-length v1, v1

    invoke-static {v0, v4, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    move-object v0, p0

    check-cast v0, [B

    check-cast p0, [B

    array-length v2, p0

    invoke-static {v0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method

.method private failure(Ljava/lang/String;ILjava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2, p3}, Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;->onFailure(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getMemCacheBitmap(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->poll()V

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->memCache:Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/imageworker/BitmapDrawableCache;->getBitmapDrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->littleBitmapDrawableCache:Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->getBitmapDrawableFromCache(Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-object v0
.end method

.method private isNeedFastToRecycle(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->fastToRecycle:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    const v1, 0x7d000

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadFromDisk(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 8

    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;-><init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;IILandroid/view/View;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    const-string/jumbo v1, "ImageWorker"

    invoke-virtual {v7, v0, v1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private loadFromDiskCache(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->open()V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, p3, v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->createBitmap(Ljava/lang/Object;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ImageWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/CacheException;->getCode()Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/CacheException;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadFromDiskOrInternet(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V
    .locals 12

    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;->getSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setDefaultImage(Landroid/view/View;)V

    const-string/jumbo v3, "http"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "https"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ImageWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u52a0\u8f7dhttp\u7f51\u7edc\u8d44\u6e90\u56fe\u7247\uff0csavePath="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-direct {p0, v1, p3, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadFromDiskCache(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "ImageWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u672c\u5730\u78c1\u76d8\u7f13\u5b58\u52a0\u8f7d\uff0csavePath="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-direct {p0, v1, p2, v2, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->renderImageView(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ImageWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7f51\u7edc\u52a0\u8f7d\uff0cpath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;-><init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;Ljava/lang/ref/WeakReference;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pause:Z

    if-eqz v2, :cond_2

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->addToPauseList(Ljava/lang/String;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;Lcom/alipay/mobile/common/imageworker/DownloadListener;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpTaskList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpInvoker:Lcom/alipay/mobile/common/imageworker/HttpInvoker;

    new-instance v2, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;

    iget-object v4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->cachePeriod:I

    int-to-long v5, v3

    move-object v3, p0

    move-object v7, p1

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;-><init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Lcom/alipay/mobile/common/cache/disk/DiskCache;JLjava/lang/String;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    invoke-virtual {v11, p1, v1, v2}, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->loadHttp(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/DownloadListener;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)Lcom/alipay/mobile/common/imageworker/HttpCallback;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ImageWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u52a0\u8f7dSD\u5361\u56fe\u7247\uff0cpath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadFromDisk(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    goto :goto_1

    :cond_4
    move-object v1, p1

    goto/16 :goto_0
.end method

.method private loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1, p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->start(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x194

    const-string/jumbo v1, "\u56fe\u7247\u8def\u5f84\u4e3a\u7a7a"

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->failure(Ljava/lang/String;ILjava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ImageWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u52a0\u8f7d\u56fe\u7247\uff0cpath\u4e3a\u7a7a\uff0c\u8bbe\u7f6e\u9ed8\u8ba4icon="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    sget v0, Lcom/alipay/android/phone/mobilecommon/imageworker/R$id;->a:I

    invoke-virtual {p2, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setDefaultImage(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->imageStrategy:Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;

    invoke-virtual {v0, p1, p3, p4}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    if-eqz p6, :cond_9

    invoke-interface {p6, v1}, Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;->getSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez p3, :cond_8

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    :goto_2
    if-nez p4, :cond_7

    iget v4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    :goto_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->getMemCacheBitmap(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "ImageWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u547d\u4e2d\u5185\u5b58\u7f13\u5b58\u56fe\u7247\uff0csavePath="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->success(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    if-eqz p2, :cond_3

    sget v0, Lcom/alipay/android/phone/mobilecommon/imageworker/R$id;->a:I

    invoke-virtual {p2, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    invoke-direct {p0, p2, v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    sget v2, Lcom/alipay/android/phone/mobilecommon/imageworker/R$id;->a:I

    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->imageStrategy:Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->getAssetImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ImageWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u52a0\u8f7dasset\u8d44\u6e90\u56fe\u7247\uff0cpath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->renderImageView(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    goto :goto_0

    :cond_6
    move-object v0, p0

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadFromDiskOrInternet(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    goto :goto_0

    :cond_7
    move v4, p4

    goto :goto_3

    :cond_8
    move v3, p3

    goto :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_1
.end method

.method public static poll()V
    .locals 5

    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ImageWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u88ab\u56de\u6536\u56fe\u7247\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->getInstance()Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/imageworker/SoftRefBitmapDrawableCache;->remove(Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/BitmapSoftReference;

    goto :goto_0
.end method

.method private renderImageView(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->bitmapToDrawable(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->success(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    sget v1, Lcom/alipay/android/phone/mobilecommon/imageworker/R$id;->a:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private setBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setDefaultImage(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/imageworker/ImageWorker$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/common/imageworker/ImageWorker$5;-><init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/imageworker/ImageWorker$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker$6;-><init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->setBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private start(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;->onStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private success(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;-><init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;->onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 3

    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->imageStrategy:Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;

    iget v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    iget v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpInvoker:Lcom/alipay/mobile/common/imageworker/HttpInvoker;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->cancel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public cancel(Ljava/lang/String;II)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->imageStrategy:Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpInvoker:Lcom/alipay/mobile/common/imageworker/HttpInvoker;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->cancel(Ljava/lang/String;)V

    return-object p0
.end method

.method public cancelAll()Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->cancel(Ljava/lang/String;)Lcom/alipay/mobile/common/imageworker/ImageWorker;

    goto :goto_0
.end method

.method public getCachePeriod()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->cachePeriod:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    return v0
.end method

.method public getInPreferredConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getMemCache(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->imageStrategy:Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;

    iget v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    iget v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;->getSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->getMemCacheBitmap(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getPauseHttpTaskNum()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pauseHttpTaskNum:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    return v0
.end method

.method public isFastToRecycle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->fastToRecycle:Z

    return v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Lcom/alipay/mobile/common/imageworker/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Lcom/alipay/mobile/common/imageworker/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 7

    instance-of v0, p2, Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    iget v4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\u8bf7\u4f7f\u7528APImageview"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Lcom/alipay/mobile/common/imageworker/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;II)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Lcom/alipay/mobile/common/imageworker/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 7

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    iget v4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 7

    const/4 v5, 0x0

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    iget v4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APAbsTableView;II)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 7

    const/4 v5, 0x0

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    iget v4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;II)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    return-object p0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pause:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pausedTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public resume()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pause:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pausedTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pausedTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v2, Lcom/alipay/mobile/common/imageworker/ImageWorker;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCachePeriod(I)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->cachePeriod:I

    return-object p0
.end method

.method public setDefaultImage(I)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFastToRecycle(Z)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->fastToRecycle:Z

    return-object p0
.end method

.method public setHeight(I)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->height:I

    :cond_0
    return-object p0
.end method

.method public setInPreferredConfig(Landroid/graphics/Bitmap$Config;)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public setPauseHttpTaskNum(I)V
    .locals 1

    const/16 v0, 0x14

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    :cond_0
    :goto_0
    iput p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->pauseHttpTaskNum:I

    return-void

    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public setWidth(I)Lcom/alipay/mobile/common/imageworker/ImageWorker;
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker;->width:I

    :cond_0
    return-object p0
.end method
