.class final Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ATTEMPT_COUNT_TO_DECODE_BITMAP:I = 0x3

.field private static final BUFFER_SIZE:I = 0x2000

.field private static final LOG_CACHE_IMAGE_IN_MEMORY:Ljava/lang/String; = "Cache image in memory [%s]"

.field private static final LOG_CACHE_IMAGE_ON_DISC:Ljava/lang/String; = "Cache image on disc [%s]"

.field private static final LOG_DELAY_BEFORE_LOADING:Ljava/lang/String; = "Delay %d ms before loading...  [%s]"

.field private static final LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING:Ljava/lang/String; = "...Get cached bitmap from memory after waiting. [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_DISC_CACHE:Ljava/lang/String; = "Load image from disc cache [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_INTERNET:Ljava/lang/String; = "Load image from Internet [%s]"

.field private static final LOG_RESUME_AFTER_PAUSE:Ljava/lang/String; = ".. Resume loading [%s]"

.field private static final LOG_START_DISPLAY_IMAGE_TASK:Ljava/lang/String; = "Start display image task [%s]"

.field private static final LOG_TASK_CANCELLED:Ljava/lang/String; = "ImageView is reused for another image. Task is cancelled. [%s]"

.field private static final LOG_TASK_INTERRUPTED:Ljava/lang/String; = "Task was interrupted [%s]"

.field private static final LOG_WAITING_FOR_IMAGE_LOADED:Ljava/lang/String; = "Image already is loading. Waiting... [%s]"

.field private static final LOG_WAITING_FOR_RESUME:Ljava/lang/String; = "ImageLoader is paused. Waiting...  [%s]"


# instance fields
.field private final configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final handler:Landroid/os/Handler;

.field private final imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

.field private final imageView:Landroid/widget/ImageView;

.field private final listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private final loggingEnabled:Z

.field private final memoryCacheKey:Ljava/lang/String;

.field private final options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private final targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 1
    .param p1, "configuration"    # Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .param p2, "imageLoadingInfo"    # Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 71
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 72
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 74
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 75
    iget-boolean v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->loggingEnabled:Z

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    .line 76
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 77
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 78
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->imageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageView:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    .line 80
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 81
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    .locals 1
    .param p0, "x0"    # Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    return-object v0
.end method

.method private checkTaskIsInterrupted()Z
    .locals 5

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 177
    .local v0, "interrupted":Z
    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "Task was interrupted [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    return v0
.end method

.method private checkTaskIsNotActual()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "currentCacheKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 161
    .local v1, "imageViewWasReused":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 162
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;

    invoke-direct {v5, p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    :cond_0
    iget-boolean v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    const-string v4, "ImageView is reused for another image. Task is cancelled. [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_1
    return v1

    .end local v1    # "imageViewWasReused":Z
    :cond_2
    move v1, v3

    .line 160
    goto :goto_0
.end method

.method private decodeImage(Ljava/net/URI;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->handleOutOfMemory:Z

    if-eqz v3, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeWithOOMHandling(Ljava/net/URI;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 237
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageDecoder;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v1, p1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageDecoder;-><init>(Ljava/net/URI;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 238
    .local v1, "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->setLoggingEnabled(Z)V

    .line 239
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageView:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v2

    .line 240
    .local v2, "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private decodeWithOOMHandling(Ljava/net/URI;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "imageUri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v3, 0x0

    .line 247
    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageDecoder;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v1, p1, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageDecoder;-><init>(Ljava/net/URI;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 248
    .local v1, "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->setLoggingEnabled(Z)V

    .line 249
    const/4 v0, 0x1

    .local v0, "attempt":I
    :goto_0
    const/4 v5, 0x3

    if-gt v0, v5, :cond_0

    .line 251
    :try_start_0
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageView:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v4

    .line 252
    .local v4, "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->targetSize:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageScaleType()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v6

    invoke-virtual {v1, v5, v6, v4}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 273
    .end local v4    # "viewScaleType":Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    :cond_0
    return-object v3

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 256
    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_1
    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v5, v5

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 261
    :pswitch_1
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v5, v5, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v5}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->clear()V

    .line 262
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 265
    :pswitch_2
    throw v2

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 310
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;

    invoke-direct {v1, p0, p1}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;-><init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_0
    return-void
.end method

.method private saveImageOnDisc(Ljava/io/File;)V
    .locals 12
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2000

    .line 277
    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v7, v8, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiscCache:I

    .line 278
    .local v7, "width":I
    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v3, v8, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiscCache:I

    .line 279
    .local v3, "height":I
    if-gtz v7, :cond_0

    if-lez v3, :cond_1

    .line 281
    :cond_0
    new-instance v6, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v6, v7, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    .line 282
    .local v6, "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageDecoder;

    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object v10, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-direct {v2, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageDecoder;-><init>(Ljava/net/URI;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 283
    .local v2, "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    iget-boolean v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    invoke-virtual {v2, v8}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->setLoggingEnabled(Z)V

    .line 284
    sget-object v8, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-virtual {v2, v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 287
    .local v5, "os":Ljava/io/OutputStream;
    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v8, v8, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageCompressFormatForDiscCache:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v9, v9, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->imageQualityForDiscCache:I

    invoke-virtual {v0, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 288
    .local v1, "compressedSuccessfully":Z
    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 307
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "compressedSuccessfully":Z
    .end local v2    # "decoder":Lcom/nostra13/universalimageloader/core/ImageDecoder;
    .end local v6    # "targetImageSize":Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    :goto_0
    return-void

    .line 296
    .end local v5    # "os":Ljava/io/OutputStream;
    :cond_1
    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->downloader:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    new-instance v9, Ljava/net/URI;

    iget-object v10, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/net/URI;)Ljava/io/InputStream;

    move-result-object v4

    .line 298
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x2000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    .restart local v5    # "os":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/utils/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 305
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    .end local v5    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v8
.end method

.method private tryLoadBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 182
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v6, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    .line 183
    .local v2, "discCache":Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v2, v6}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 185
    .local v4, "imageFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 188
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    iget-boolean v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v6, :cond_0

    const-string v6, "Load image from disc cache [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/net/URI;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 228
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 198
    :cond_1
    iget-boolean v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v6, :cond_2

    const-string v6, "Load image from Internet [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_2
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheOnDisc()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 202
    iget-boolean v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v6, :cond_3

    const-string v6, "Cache image on disc [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_3
    invoke-direct {p0, v4}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->saveImageOnDisc(Ljava/io/File;)V

    .line 205
    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v2, v6, v4}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 206
    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 211
    .local v5, "imageUriForDecoding":Ljava/net/URI;
    :goto_1
    invoke-direct {p0, v5}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/net/URI;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 212
    if-nez v1, :cond_4

    .line 213
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .end local v5    # "imageUriForDecoding":Ljava/net/URI;
    :cond_4
    :goto_2
    move-object v0, v1

    .line 228
    goto :goto_0

    .line 208
    :cond_5
    new-instance v5, Ljava/net/URI;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .restart local v5    # "imageUriForDecoding":Ljava/net/URI;
    goto :goto_1

    .line 215
    .end local v5    # "imageUriForDecoding":Ljava/net/URI;
    :catch_0
    move-exception v3

    .line 216
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 217
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .line 218
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 219
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 221
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 222
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 223
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    goto :goto_2

    .line 224
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v3

    .line 225
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 226
    sget-object v6, Lcom/nostra13/universalimageloader/core/assist/FailReason;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0, v6}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 86
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    .line 87
    .local v4, "pause":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    monitor-enter v4

    .line 89
    :try_start_0
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v5, :cond_0

    const-string v5, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v5, :cond_1

    const-string v5, ".. Resume loading [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :cond_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 150
    :cond_3
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "Task was interrupted [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    monitor-exit v4

    goto :goto_0

    .line 97
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 101
    :cond_4
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isDelayBeforeLoading()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 102
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v5, :cond_5

    const-string v5, "Delay %d ms before loading...  [%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_5
    :try_start_4
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 110
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v5

    if-nez v5, :cond_3

    .line 113
    :cond_6
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    iget-object v3, v5, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 114
    .local v3, "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v5, :cond_7

    .line 115
    const-string v5, "Start display image task [%s]"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 117
    const-string v5, "Image already is loading. Waiting... [%s]"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_7
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 124
    :try_start_5
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    if-eqz v5, :cond_8

    .line 142
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 105
    .end local v3    # "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    :catch_1
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    const-string v5, "Task was interrupted [%s]"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "loadFromUriLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_8
    :try_start_6
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v5

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 127
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_e

    .line 128
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->tryLoadBitmap()Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 129
    if-nez v0, :cond_9

    .line 142
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 131
    :cond_9
    :try_start_7
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsInterrupted()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v5

    if-eqz v5, :cond_b

    .line 142
    :cond_a
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 133
    :cond_b
    :try_start_8
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 134
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v5, :cond_c

    const-string v5, "Cache image in memory [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_c
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v5, v5, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 142
    :cond_d
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 145
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsInterrupted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 147
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;

    invoke-direct {v1, v0, v5}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;)V

    .line 148
    .local v1, "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    invoke-virtual {v1, v5}, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->setLoggingEnabled(Z)V

    .line 149
    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 139
    .end local v1    # "displayBitmapTask":Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
    :cond_e
    :try_start_9
    iget-boolean v5, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->loggingEnabled:Z

    if-eqz v5, :cond_d

    const-string v5, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 142
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method
