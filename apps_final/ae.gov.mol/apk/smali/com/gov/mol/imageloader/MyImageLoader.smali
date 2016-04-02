.class public Lcom/gov/mol/imageloader/MyImageLoader;
.super Ljava/lang/Object;
.source "MyImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gov/mol/imageloader/MyImageLoader$DisplayImages;,
        Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;
    }
.end annotation


# static fields
.field private static final DISK_CACHE_SIZE:I = 0xa00000

.field private static final DISK_CACHE_SUBDIR:Ljava/lang/String; = "DiskImageCache"


# instance fields
.field private byteCounts:I

.field private final default_icon:I

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDiskLruImageCache:Lcom/gov/mol/imageloader/DiskLruImageCache;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private requiredHeight:I

.field private requiredWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x64

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->imageViews:Ljava/util/Map;

    .line 37
    iput v1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->requiredHeight:I

    iput v1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->requiredWidth:I

    .line 38
    const v0, 0x7f020184

    iput v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->default_icon:I

    .line 46
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 47
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v7

    .line 49
    .local v7, "memClass":I
    const/high16 v0, 0x100000

    mul-int/2addr v0, v7

    div-int/lit8 v6, v0, 0x8

    .line 51
    .local v6, "cacheSize":I
    new-instance v0, Lcom/gov/mol/imageloader/DiskLruImageCache;

    const-string v2, "DiskImageCache"

    const/high16 v3, 0xa00000

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x46

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/gov/mol/imageloader/DiskLruImageCache;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V

    iput-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mDiskLruImageCache:Lcom/gov/mol/imageloader/DiskLruImageCache;

    .line 53
    new-instance v0, Lcom/gov/mol/imageloader/MyImageLoader$1;

    invoke-direct {v0, p0, v6}, Lcom/gov/mol/imageloader/MyImageLoader$1;-><init>(Lcom/gov/mol/imageloader/MyImageLoader;I)V

    iput-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 61
    return-void
.end method

.method private DownloadFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/gov/mol/imageloader/MyImageLoader;->getReqiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/gov/mol/imageloader/MyImageLoader;->getRequiredHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/gov/mol/imageloader/MyImageLoader;->decodeBitmapFromStream(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$0(Lcom/gov/mol/imageloader/MyImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/gov/mol/imageloader/MyImageLoader;->DownloadFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/gov/mol/imageloader/MyImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/gov/mol/imageloader/MyImageLoader;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2(Lcom/gov/mol/imageloader/MyImageLoader;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->byteCounts:I

    return-void
.end method

.method static synthetic access$3(Lcom/gov/mol/imageloader/MyImageLoader;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->byteCounts:I

    return v0
.end method

.method private addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mDiskLruImageCache:Lcom/gov/mol/imageloader/DiskLruImageCache;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mDiskLruImageCache:Lcom/gov/mol/imageloader/DiskLruImageCache;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gov/mol/imageloader/DiskLruImageCache;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mDiskLruImageCache:Lcom/gov/mol/imageloader/DiskLruImageCache;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/gov/mol/imageloader/DiskLruImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/gov/mol/imageloader/MyImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 191
    :cond_0
    monitor-exit v1

    .line 197
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    monitor-exit v1

    .line 170
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 5
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 218
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 219
    .local v0, "height":I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 220
    .local v2, "width":I
    const/4 v1, 0x1

    .line 222
    .local v1, "inSampleSize":I
    div-int v3, v2, p1

    div-int v4, v0, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 224
    return v1
.end method

.method private static decodeBitmapFromStream(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v7, 0x0

    .line 236
    const/4 v4, 0x0

    .line 237
    .local v4, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 239
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v4    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/io/InputStream;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 246
    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 251
    invoke-static {v3, p1, p2}, Lcom/gov/mol/imageloader/MyImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 255
    :try_start_2
    invoke-virtual {v4}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/io/InputStream;

    move-object v2, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 261
    invoke-static {v2, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 241
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 257
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    goto :goto_2
.end method

.method private getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mDiskLruImageCache:Lcom/gov/mol/imageloader/DiskLruImageCache;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gov/mol/imageloader/DiskLruImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 179
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/gov/mol/imageloader/MyImageLoader;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    :cond_0
    return-object v0
.end method


# virtual methods
.method public ExecuteLoading(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-direct {p0, p1}, Lcom/gov/mol/imageloader/MyImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;

    invoke-direct {v2, p0, p1, p2}, Lcom/gov/mol/imageloader/MyImageLoader$LoadImages;-><init>(Lcom/gov/mol/imageloader/MyImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 78
    const v1, 0x7f020184

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method ImageViewReused(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    const/4 v1, 0x1

    .line 93
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearCacheMemory()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 305
    :cond_0
    return-void
.end method

.method public clearDiskMemory()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->mDiskLruImageCache:Lcom/gov/mol/imageloader/DiskLruImageCache;

    invoke-virtual {v0}, Lcom/gov/mol/imageloader/DiskLruImageCache;->clearCache()V

    .line 312
    return-void
.end method

.method public getReqiredWidth()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->requiredWidth:I

    return v0
.end method

.method public getRequiredHeight()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/gov/mol/imageloader/MyImageLoader;->requiredHeight:I

    return v0
.end method

.method public setReqiredWidth(II)V
    .locals 0
    .param p1, "longest"    # I
    .param p2, "requiredWidth"    # I

    .prologue
    .line 295
    if-le p2, p1, :cond_0

    .end local p1    # "longest":I
    :goto_0
    iput p1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->requiredWidth:I

    .line 296
    return-void

    .restart local p1    # "longest":I
    :cond_0
    move p1, p2

    .line 295
    goto :goto_0
.end method

.method public setRequiredHeight(II)V
    .locals 0
    .param p1, "longest"    # I
    .param p2, "requiredHeight"    # I

    .prologue
    .line 278
    if-le p2, p1, :cond_0

    .end local p1    # "longest":I
    :goto_0
    iput p1, p0, Lcom/gov/mol/imageloader/MyImageLoader;->requiredHeight:I

    .line 279
    return-void

    .restart local p1    # "longest":I
    :cond_0
    move p1, p2

    .line 278
    goto :goto_0
.end method
