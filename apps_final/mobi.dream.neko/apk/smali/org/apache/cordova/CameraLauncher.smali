.class public Lorg/apache/cordova/CameraLauncher;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "CameraLauncher.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final ALLMEDIA:I = 0x2

.field private static final CAMERA:I = 0x1

.field private static final DATA_URL:I = 0x0

.field private static final FILE_URI:I = 0x1

.field private static final GET_All:Ljava/lang/String; = "Get All"

.field private static final GET_PICTURE:Ljava/lang/String; = "Get Picture"

.field private static final GET_VIDEO:Ljava/lang/String; = "Get Video"

.field private static final JPEG:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CameraLauncher"

.field private static final NATIVE_URI:I = 0x2

.field private static final PHOTOLIBRARY:I = 0x0

.field private static final PICTURE:I = 0x0

.field private static final PNG:I = 0x1

.field private static final SAVEDPHOTOALBUM:I = 0x2

.field private static final VIDEO:I = 0x1


# instance fields
.field public callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private conn:Landroid/media/MediaScannerConnection;

.field private correctOrientation:Z

.field private encodingType:I

.field private imageUri:Landroid/net/Uri;

.field private mQuality:I

.field private mediaType:I

.field private numPics:I

.field private saveToPhotoAlbum:Z

.field private scanMe:Landroid/net/Uri;

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 4
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .prologue
    .line 679
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 680
    .local v1, "srcAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 682
    .local v0, "dstAspect":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 683
    div-int v2, p0, p2

    .line 685
    :goto_0
    return v2

    :cond_0
    div-int v2, p1, p3

    goto :goto_0
.end method

.method private checkForDuplicateImage(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 732
    const/4 v3, 0x1

    .line 733
    .local v3, "diff":I
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    .line 734
    .local v0, "contentStore":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/apache/cordova/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 735
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 737
    .local v1, "currentNumOfImages":I
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    iget-boolean v6, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v6, :cond_0

    .line 738
    const/4 v3, 0x2

    .line 742
    :cond_0
    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->numPics:I

    sub-int v6, v1, v6

    if-ne v6, v3, :cond_2

    .line 743
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 744
    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 745
    .local v4, "id":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 746
    add-int/lit8 v4, v4, -0x1

    .line 748
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 749
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 750
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 752
    .end local v4    # "id":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageType"    # I
    .param p2, "oldImage"    # Landroid/net/Uri;
    .param p3, "newImage"    # Landroid/net/Uri;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 708
    if-eqz p4, :cond_0

    .line 709
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 713
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 715
    invoke-direct {p0, p1}, Lorg/apache/cordova/CameraLauncher;->checkForDuplicateImage(I)V

    .line 717
    iget-boolean v0, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 718
    invoke-direct {p0, p3}, Lorg/apache/cordova/CameraLauncher;->scanForGallery(Landroid/net/Uri;)V

    .line 721
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 722
    return-void
.end method

.method private createCaptureFile(I)Ljava/io/File;
    .locals 4
    .param p1, "encodingType"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "photo":Ljava/io/File;
    if-nez p1, :cond_0

    .line 225
    new-instance v0, Ljava/io/File;

    .end local v0    # "photo":Ljava/io/File;
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .restart local v0    # "photo":Ljava/io/File;
    :goto_0
    return-object v0

    .line 226
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 227
    new-instance v0, Ljava/io/File;

    .end local v0    # "photo":Ljava/io/File;
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "photo":Ljava/io/File;
    goto :goto_0

    .line 229
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Encoding Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getImageOrientation(Landroid/net/Uri;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 506
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "orientation"

    aput-object v0, v2, v8

    .line 507
    .local v2, "cols":[Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 509
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 510
    .local v7, "rotate":I
    if-eqz v6, :cond_0

    .line 511
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 512
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 513
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_0
    return v7
.end method

.method private getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "rotate"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "exif"    # Lorg/apache/cordova/ExifHelper;

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 527
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 528
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    .line 529
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 533
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 534
    invoke-virtual {p3}, Lorg/apache/cordova/ExifHelper;->resetOrientation()V

    .line 535
    return-object p2

    .line 531
    :cond_0
    int-to-float v0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0
.end method

.method private getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 592
    iget v4, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    if-gtz v4, :cond_1

    iget v4, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    if-gtz v4, :cond_1

    .line 593
    iget-object v3, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-static {p1, v3}, Lorg/apache/cordova/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 618
    :cond_0
    :goto_0
    return-object v3

    .line 597
    :cond_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 598
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 599
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-static {p1, v4}, Lorg/apache/cordova/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 602
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v4, :cond_0

    .line 608
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v4, v5}, Lorg/apache/cordova/CameraLauncher;->calculateAspectRatio(II)[I

    move-result-object v2

    .line 611
    .local v2, "widthHeight":[I
    iput-boolean v9, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 612
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    iget v7, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    invoke-static {v4, v5, v6, v7}, Lorg/apache/cordova/CameraLauncher;->calculateSampleSize(IIII)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 613
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-static {p1, v4}, Lorg/apache/cordova/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 614
    .local v1, "unscaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 618
    aget v3, v2, v9

    aget v4, v2, v8

    invoke-static {v1, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getTempDirectoryPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 169
    .local v0, "cache":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Ljava/io/File;

    .end local v0    # "cache":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v0    # "cache":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private getUriFromMediaStore()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 566
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :try_start_0
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 580
    :goto_0
    return-object v2

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v4, "CameraLauncher"

    const-string v5, "Can\'t write to external media storage."

    invoke-static {v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :try_start_1
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 575
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 576
    .local v1, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v4, "CameraLauncher"

    const-string v5, "Can\'t write to internal media storage."

    invoke-static {v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "contentStore"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 695
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private scanForGallery(Landroid/net/Uri;)V
    .locals 2
    .param p1, "newImage"    # Landroid/net/Uri;

    .prologue
    .line 799
    iput-object p1, p0, Lorg/apache/cordova/CameraLauncher;->scanMe:Landroid/net/Uri;

    .line 800
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 803
    :cond_0
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    .line 804
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 805
    return-void
.end method

.method private whichContentStore()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 759
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 762
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private writeUncompressedImage(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 549
    .local v1, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 550
    .local v3, "os":Ljava/io/OutputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 552
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 553
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 556
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 557
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 558
    return-void
.end method


# virtual methods
.method public calculateAspectRatio(II)[I
    .locals 11
    .param p1, "origWidth"    # I
    .param p2, "origHeight"    # I

    .prologue
    .line 629
    iget v3, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 630
    .local v3, "newWidth":I
    iget v0, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 633
    .local v0, "newHeight":I
    if-gtz v3, :cond_1

    if-gtz v0, :cond_1

    .line 634
    move v3, p1

    .line 635
    move v0, p2

    .line 662
    :cond_0
    :goto_0
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 663
    .local v6, "retval":[I
    const/4 v7, 0x0

    aput v3, v6, v7

    .line 664
    const/4 v7, 0x1

    aput v0, v6, v7

    .line 665
    return-object v6

    .line 638
    .end local v6    # "retval":[I
    :cond_1
    if-lez v3, :cond_2

    if-gtz v0, :cond_2

    .line 639
    mul-int v7, v3, p2

    div-int v0, v7, p1

    goto :goto_0

    .line 642
    :cond_2
    if-gtz v3, :cond_3

    if-lez v0, :cond_3

    .line 643
    mul-int v7, v0, p1

    div-int v3, v7, p2

    goto :goto_0

    .line 652
    :cond_3
    int-to-double v7, v3

    int-to-double v9, v0

    div-double v1, v7, v9

    .line 653
    .local v1, "newRatio":D
    int-to-double v7, p1

    int-to-double v9, p2

    div-double v4, v7, v9

    .line 655
    .local v4, "origRatio":D
    cmpl-double v7, v4, v1

    if-lez v7, :cond_4

    .line 656
    mul-int v7, v3, p2

    div-int v0, v7, p1

    goto :goto_0

    .line 657
    :cond_4
    cmpg-double v7, v4, v1

    if-gez v7, :cond_0

    .line 658
    mul-int v7, v0, p1

    div-int v3, v7, p2

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    iput-object p3, p0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 106
    const-string v6, "takePicture"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 107
    const/4 v3, 0x1

    .line 108
    .local v3, "srcType":I
    const/4 v0, 0x1

    .line 109
    .local v0, "destType":I
    iput-boolean v5, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    .line 110
    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 111
    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 112
    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    .line 113
    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    .line 114
    const/16 v6, 0x50

    iput v6, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    .line 116
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    .line 117
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 118
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 119
    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 120
    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 121
    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    .line 122
    const/4 v5, 0x6

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    iput v5, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    .line 124
    const/16 v5, 0x8

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    .line 125
    const/16 v5, 0x9

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    .line 129
    iget v5, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    if-ge v5, v4, :cond_0

    .line 130
    iput v7, p0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    .line 132
    :cond_0
    iget v5, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    if-ge v5, v4, :cond_1

    .line 133
    iput v7, p0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    .line 137
    :cond_1
    if-ne v3, v4, :cond_3

    .line 138
    :try_start_0
    iget v5, p0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v0, v5}, Lorg/apache/cordova/CameraLauncher;->takePicture(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_2
    :goto_0
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 153
    .local v2, "r":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v2, v4}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 154
    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 158
    .end local v0    # "destType":I
    .end local v2    # "r":Lorg/apache/cordova/api/PluginResult;
    .end local v3    # "srcType":I
    :goto_1
    return v4

    .line 140
    .restart local v0    # "destType":I
    .restart local v3    # "srcType":I
    :cond_3
    if-eqz v3, :cond_4

    if-ne v3, v8, :cond_2

    .line 141
    :cond_4
    :try_start_1
    invoke-virtual {p0, v3, v0}, Lorg/apache/cordova/CameraLauncher;->getImage(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Illegal Argument Exception"

    invoke-virtual {p3, v5}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 147
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 148
    .restart local v2    # "r":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_1

    .end local v0    # "destType":I
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "r":Lorg/apache/cordova/api/PluginResult;
    .end local v3    # "srcType":I
    :cond_5
    move v4, v5

    .line 158
    goto :goto_1
.end method

.method public failPicture(Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 795
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public getImage(II)V
    .locals 5
    .param p1, "srcType"    # I
    .param p2, "returnType"    # I

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Get Picture"

    .line 245
    .local v1, "title":Ljava/lang/String;
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    if-nez v2, :cond_2

    .line 246
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    :cond_0
    :goto_0
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, p0, v3, v4}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 265
    :cond_1
    return-void

    .line 248
    :cond_2
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 249
    const-string v2, "video/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "Get Video"

    goto :goto_0

    .line 252
    :cond_3
    iget v2, p0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 255
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "Get All"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 24
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 278
    div-int/lit8 v3, p1, 0x10

    add-int/lit8 v19, v3, -0x1

    .line 279
    .local v19, "srcType":I
    rem-int/lit8 v3, p1, 0x10

    add-int/lit8 v9, v3, -0x1

    .line 280
    .local v9, "destType":I
    const/16 v18, 0x0

    .line 283
    .local v18, "rotate":I
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_10

    .line 285
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_e

    .line 288
    :try_start_0
    new-instance v11, Lorg/apache/cordova/ExifHelper;

    invoke-direct {v11}, Lorg/apache/cordova/ExifHelper;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    .local v11, "exif":Lorg/apache/cordova/ExifHelper;
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v3, :cond_0

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.Pic.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/apache/cordova/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v11}, Lorg/apache/cordova/ExifHelper;->readExifData()V

    .line 293
    invoke-virtual {v11}, Lorg/apache/cordova/ExifHelper;->getOrientation()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    .line 299
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 300
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 303
    .local v20, "uri":Landroid/net/Uri;
    if-nez v9, :cond_6

    .line 304
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 305
    if-nez v2, :cond_1

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/Bitmap;

    .line 311
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-nez v2, :cond_3

    .line 312
    const-string v3, "CameraLauncher"

    const-string v4, "I either have a null image path or bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v3, "Unable to create bitmap!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    .line 503
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    return-void

    .line 295
    .restart local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    :catch_0
    move-exception v10

    .line 296
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 377
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    :catch_1
    move-exception v10

    .line 378
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 379
    const-string v3, "Error capturing image."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    .restart local v20    # "uri":Landroid/net/Uri;
    :cond_3
    if-eqz v18, :cond_4

    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-eqz v3, :cond_4

    .line 318
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v2, v11}, Lorg/apache/cordova/CameraLauncher;->getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 321
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 322
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/cordova/CameraLauncher;->checkForDuplicateImage(I)V

    .line 374
    :cond_5
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/cordova/CameraLauncher;->cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 326
    :cond_6
    const/4 v3, 0x1

    if-eq v9, v3, :cond_7

    const/4 v3, 0x2

    if-ne v9, v3, :cond_5

    .line 327
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v3, :cond_a

    .line 328
    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/CameraLauncher;->getUriFromMediaStore()Landroid/net/Uri;

    move-result-object v13

    .line 330
    .local v13, "inputUri":Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-static {v13, v4}, Lorg/apache/cordova/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    .line 335
    .end local v13    # "inputUri":Landroid/net/Uri;
    :goto_3
    if-nez v20, :cond_8

    .line 336
    const-string v3, "Error capturing image - no media storage found."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    .line 340
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-nez v3, :cond_b

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 371
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_2

    .line 332
    :cond_a
    new-instance v3, Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v20

    goto :goto_3

    .line 346
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 348
    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-eqz v3, :cond_c

    .line 349
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v2, v11}, Lorg/apache/cordova/CameraLauncher;->getRotatedBitmap(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 353
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v15

    .line 354
    .local v15, "os":Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 355
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 358
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v3, :cond_9

    .line 360
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz v3, :cond_d

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lorg/apache/cordova/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, "exifPath":Ljava/lang/String;
    :goto_5
    invoke-virtual {v11, v12}, Lorg/apache/cordova/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v11}, Lorg/apache/cordova/ExifHelper;->writeExifData()V

    goto/16 :goto_4

    .line 363
    .end local v12    # "exifPath":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v12

    .restart local v12    # "exifPath":Ljava/lang/String;
    goto :goto_5

    .line 384
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    .end local v12    # "exifPath":Ljava/lang/String;
    .end local v15    # "os":Ljava/io/OutputStream;
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_e
    if-nez p2, :cond_f

    .line 385
    const-string v3, "Camera cancelled."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 390
    :cond_f
    const-string v3, "Did not complete!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 395
    :cond_10
    if-eqz v19, :cond_11

    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_2

    .line 396
    :cond_11
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1f

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 401
    .restart local v20    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->mediaType:I

    if-eqz v3, :cond_12

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x1

    if-eq v9, v3, :cond_13

    const/4 v3, 0x2

    if-ne v9, v3, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-nez v3, :cond_14

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    :cond_14
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    .line 413
    .local v21, "uriString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lorg/apache/cordova/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v14

    .line 415
    .local v14, "mimeType":Ljava/lang/String;
    const-string v3, "image/jpeg"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "image/png"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 416
    const-string v3, "CameraLauncher"

    const-string v4, "I either have a null image path or bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v3, "Unable to retrieve path to picture!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 420
    :cond_15
    const/4 v2, 0x0

    .line 422
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/cordova/CameraLauncher;->getScaledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    .line 426
    :goto_6
    if-nez v2, :cond_16

    .line 427
    const-string v3, "CameraLauncher"

    const-string v4, "I either have a null image path or bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v3, "Unable to create bitmap!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 423
    :catch_2
    move-exception v10

    .line 424
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 432
    .end local v10    # "e":Ljava/io/IOException;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/cordova/CameraLauncher;->correctOrientation:Z

    if-eqz v3, :cond_17

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/cordova/CameraLauncher;->getImageOrientation(Landroid/net/Uri;)I

    move-result v18

    .line 434
    if-eqz v18, :cond_17

    .line 435
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 436
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v18

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 437
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 442
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :cond_17
    if-nez v9, :cond_1a

    .line 443
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 488
    :cond_18
    :goto_7
    if-eqz v2, :cond_19

    .line 489
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 490
    const/4 v2, 0x0

    .line 492
    :cond_19
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_1

    .line 447
    :cond_1a
    const/4 v3, 0x1

    if-eq v9, v3, :cond_1b

    const/4 v3, 0x2

    if-ne v9, v3, :cond_18

    .line 449
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetHeight:I

    if-lez v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->targetWidth:I

    if-lez v3, :cond_1e

    .line 452
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/resize.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 454
    .local v17, "resizePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lorg/apache/cordova/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v16

    .line 455
    .local v16, "realPath":Ljava/lang/String;
    new-instance v11, Lorg/apache/cordova/ExifHelper;

    invoke-direct {v11}, Lorg/apache/cordova/ExifHelper;-><init>()V

    .line 456
    .restart local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v3, :cond_1c

    .line 458
    :try_start_6
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/apache/cordova/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v11}, Lorg/apache/cordova/ExifHelper;->readExifData()V

    .line 460
    invoke-virtual {v11}, Lorg/apache/cordova/ExifHelper;->getOrientation()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v18

    .line 466
    :cond_1c
    :goto_8
    :try_start_7
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 467
    .restart local v15    # "os":Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 468
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 471
    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/cordova/CameraLauncher;->encodingType:I

    if-nez v3, :cond_1d

    .line 472
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/apache/cordova/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v11}, Lorg/apache/cordova/ExifHelper;->writeExifData()V

    .line 478
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_7

    .line 479
    .end local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    .end local v15    # "os":Ljava/io/OutputStream;
    .end local v16    # "realPath":Ljava/lang/String;
    .end local v17    # "resizePath":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 480
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    const-string v3, "Error retrieving image."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 461
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    .restart local v16    # "realPath":Ljava/lang/String;
    .restart local v17    # "resizePath":Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 462
    .local v10, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    .line 485
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "exif":Lorg/apache/cordova/ExifHelper;
    .end local v16    # "realPath":Ljava/lang/String;
    .end local v17    # "resizePath":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 496
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "mimeType":Ljava/lang/String;
    .end local v20    # "uri":Landroid/net/Uri;
    .end local v21    # "uriString":Ljava/lang/String;
    :cond_1f
    if-nez p2, :cond_20

    .line 497
    const-string v3, "Selection cancelled."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 500
    :cond_20
    const-string v3, "Selection did not complete!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 809
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->scanMe:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "CameraLauncher"

    const-string v2, "Can\'t scan file in MediaScanner after taking picture"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 817
    iget-object v0, p0, Lorg/apache/cordova/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 818
    return-void
.end method

.method public processPicture(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 772
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 774
    .local v2, "jpeg_data":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v6, p0, Lorg/apache/cordova/CameraLauncher;->mQuality:I

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 775
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 776
    .local v0, "code":[B
    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    .line 777
    .local v4, "output":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 778
    .local v3, "js_out":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/CameraLauncher;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v5, v3}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    const/4 v3, 0x0

    .line 780
    const/4 v4, 0x0

    .line 786
    .end local v0    # "code":[B
    .end local v3    # "js_out":Ljava/lang/String;
    .end local v4    # "output":[B
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 787
    return-void

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Error compressing image."

    invoke-virtual {p0, v5}, Lorg/apache/cordova/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takePicture(II)V
    .locals 4
    .param p1, "returnType"    # I
    .param p2, "encodingType"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Lorg/apache/cordova/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/CameraLauncher;->numPics:I

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, p2}, Lorg/apache/cordova/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v1

    .line 206
    .local v1, "photo":Ljava/io/File;
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/CameraLauncher;->imageUri:Landroid/net/Uri;

    .line 209
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lorg/apache/cordova/CameraLauncher;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    add-int/lit8 v3, p1, 0x20

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, p0, v0, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 214
    :cond_0
    return-void
.end method
