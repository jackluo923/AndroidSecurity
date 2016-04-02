.class Lcom/millennialmedia/android/BridgeMMMedia;
.super Lcom/millennialmedia/android/MMJSObject;


# static fields
.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PICTURES:Ljava/lang/String; = "Pictures"

.field private static pickerActivityObject:Ljava/lang/Object;


# instance fields
.field mediaScanner:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    return-object v0
.end method

.method private static centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private isCameraAvailable()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isPictureChooserAvailable()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const-string v2, "Center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p2, p3}, Lcom/millennialmedia/android/BridgeMMMedia;->centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "ScaleToAspectFit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p0, v1, v0, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "ScaleToAspectFill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p0, v1, v0, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v3, v3, p2, p3}, Lcom/millennialmedia/android/BridgeMMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static final scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B
    .locals 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {v2, v1, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v1, p2, :cond_0

    if-le v3, p1, :cond_f

    :cond_0
    if-le v3, v1, :cond_4

    int-to-float v1, v1

    int-to-float v3, p2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v3, v1

    :goto_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v6, 0x0

    :try_start_2
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v3, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v3, p3, p1, p2, v4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v4

    :try_start_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v1, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    int-to-float v1, v3

    int-to-float v3, p1

    div-float/2addr v1, v3

    :try_start_7
    invoke-static {v1}, Ljava/lang/Math;->round(F)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v1

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_6
    move-object v3, v0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v3, v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_5
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_8
    :goto_6
    throw v0

    :cond_9
    :try_start_a
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v4, v1, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_7
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v3, :cond_a

    :try_start_c
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_8
    if-eqz v3, :cond_c

    :try_start_d
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :cond_e
    :goto_9
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v1

    move-object v2, v0

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_9
    move-exception v3

    goto :goto_4

    :catch_a
    move-exception v1

    goto/16 :goto_1

    :cond_f
    move v3, v4

    goto/16 :goto_0
.end method

.method private scanMedia(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/millennialmedia/android/BridgeMMMedia$1;

    invoke-direct {v2, p0, p1}, Lcom/millennialmedia/android/BridgeMMMedia$1;-><init>(Lcom/millennialmedia/android/BridgeMMMedia;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public availableSourceTypes(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    iput-object v0, v1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    return-object v1
.end method

.method public declared-synchronized getPicture(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "sourceType"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "constrainHeight"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "constrainWidth"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "contentMode"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    const-string v0, "Missing constrainHeight and/or constrainWidth"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    mul-int v6, v2, v3

    const v7, 0x57e40

    if-le v6, v7, :cond_3

    const-string v0, "constrainHeight * constrainWidth > 360000"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    new-instance v6, Ljava/io/File;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "tmp_mm_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "Camera"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_4
    const-string v7, "Photo Library"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "PhotoLibrary"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    :try_start_2
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    sput-object v7, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v0, v6, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startPickerActivity(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_7

    invoke-static {v6, v3, v2, v4}, Lcom/millennialmedia/android/BridgeMMMedia;->scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    if-eqz v1, :cond_7

    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    iput-object v1, v0, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v0, 0x0

    :try_start_7
    sput-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_7
    move-object v0, v5

    goto/16 :goto_0
.end method

.method public isSourceTypeAvailable(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    const-string v0, "sourceType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "true"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "false"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public playAudio(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v2

    invoke-virtual {v2}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Audio already playing."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "repeat"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "repeat"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSound(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playSound(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeToPhotoLibrary(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Pictures"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "url"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "path"

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/millennialmedia/android/BridgeMMFileManager;

    invoke-direct {v3}, Lcom/millennialmedia/android/BridgeMMFileManager;-><init>()V

    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/BridgeMMFileManager;->setContext(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/BridgeMMFileManager;->downloadFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "Failed to download"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No file at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/millennialmedia/android/BridgeMMMedia;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/BridgeMMMedia;->scanMedia(Ljava/lang/String;)V

    const-string v0, "Image saved to photo library"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
