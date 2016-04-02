.class public Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;
.super Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/imageworker/HttpDataProcessor",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private cachePeriod:J

.field private diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

.field private height:I

.field private imageWorker:Lcom/alipay/mobile/common/imageworker/ImageWorker;

.field private path:Ljava/lang/String;

.field private plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Lcom/alipay/mobile/common/cache/disk/DiskCache;JLjava/lang/String;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->imageWorker:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iput p6, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->width:I

    iput p7, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->height:I

    iput-object p2, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    iput-object p5, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->path:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->cachePeriod:J

    iput-object p8, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

    return-void
.end method


# virtual methods
.method public process(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)Landroid/graphics/Bitmap;
    .locals 12

    move-object v4, p2

    check-cast v4, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->path:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->width:I

    iget v3, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->height:I

    iget-object v5, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->imageWorker:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iget-object v6, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;->process(Ljava/lang/String;IILcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lcom/alipay/mobile/common/imageworker/ImageWorker;Lcom/alipay/mobile/common/cache/disk/DiskCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v11

    iget-wide v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->cachePeriod:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v7, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->cachePeriod:J

    :goto_1
    iget v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->width:I

    iget v1, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->height:I

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->imageWorker:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->getInPreferredConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v11, v0, v1, v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->createBitmap(Ljava/lang/Object;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->path:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getContentType()Ljava/lang/String;

    move-result-object v9

    move-object v4, v11

    invoke-virtual/range {v0 .. v9}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V

    :cond_1
    move-object v0, v10

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getPeriod()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v7, v0, v2

    goto :goto_1
.end method

.method public bridge synthetic process(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;->process(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
