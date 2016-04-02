.class public Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;
.super Ljava/lang/Object;


# static fields
.field private static IMAGE_SIZE:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->IMAGE_SIZE:[[I

    return-void

    :array_0
    .array-data 4
        0x28
        0x28
    .end array-data

    :array_1
    .array-data 4
        0x50
        0x50
    .end array-data

    :array_2
    .array-data 4
        0xa0
        0xa0
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNearestImageSize(Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;)Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget v3, p1, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;->mWidth:I

    iget v2, p1, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;->mHeight:I

    const v0, 0x7fffffff

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    sget-object v5, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->IMAGE_SIZE:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    if-gtz v5, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;

    invoke-direct {v0, v4, v3}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;-><init>(II)V

    return-object v0

    :cond_0
    sget-object v5, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->IMAGE_SIZE:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    iget v6, p1, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;->mWidth:I

    sub-int/2addr v5, v6

    sget-object v6, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->IMAGE_SIZE:[[I

    aget-object v6, v6, v0

    aget v6, v6, v1

    iget v7, p1, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;->mWidth:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    sget-object v6, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->IMAGE_SIZE:[[I

    aget-object v6, v6, v0

    aget v6, v6, v9

    iget v7, p1, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;->mHeight:I

    sub-int/2addr v6, v7

    sget-object v7, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->IMAGE_SIZE:[[I

    aget-object v7, v7, v0

    aget v7, v7, v9

    iget v8, p1, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;->mHeight:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    if-ge v5, v2, :cond_1

    sget-object v2, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->IMAGE_SIZE:[[I

    aget-object v2, v2, v0

    aget v4, v2, v1

    sget-object v2, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->IMAGE_SIZE:[[I

    aget-object v2, v2, v0

    aget v3, v2, v9

    move v2, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAssetImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "[asset]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/16 v2, 0x10

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ImageStrategy"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "ImageStrategy"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ImageStrategy"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "ImageStrategy"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public preferImageUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "[imgWidth]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ImageStrategy"

    const-string/jumbo v2, "width<0||height<0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;

    invoke-direct {v0, p2, p3}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy;->getNearestImageSize(Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;)Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;

    move-result-object v0

    const-string/jumbo v1, "[imgWidth]"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;->mWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[imgHeight]"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/alipay/mobile/common/imageworker/DefaultImageStrategy$Size;->mHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "[pixelWidth]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gez p2, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ImageStrategy"

    const-string/jumbo v2, "width<0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v0, "[pixelWidth]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[pixelHeight]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-gez p3, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ImageStrategy"

    const-string/jumbo v3, "height<0"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v1, "[pixelHeight]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    move-object p1, v0

    goto/16 :goto_0
.end method
