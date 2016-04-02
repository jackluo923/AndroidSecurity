.class public Lorg/apache/cordova/Capture;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Capture.java"


# static fields
.field private static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field private static final CAPTURE_AUDIO:I = 0x0

.field private static final CAPTURE_IMAGE:I = 0x1

.field private static final CAPTURE_INTERNAL_ERR:I = 0x0

.field private static final CAPTURE_NO_MEDIA_FILES:I = 0x3

.field private static final CAPTURE_VIDEO:I = 0x2

.field private static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final LOG_TAG:Ljava/lang/String; = "Capture"

.field private static final VIDEO_3GPP:Ljava/lang/String; = "video/3gpp"

.field private static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"


# instance fields
.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private duration:I

.field private limit:J

.field private numPics:I

.field private results:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method private captureAudio()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 197
    return-void
.end method

.method private captureImage()V
    .locals 4

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/apache/cordova/Capture;->whichContentStore()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/cordova/Capture;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/Capture;->numPics:I

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Capture.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v1, "photo":Ljava/io/File;
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    iget-object v2, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const/4 v3, 0x1

    invoke-interface {v2, p0, v0, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 213
    return-void
.end method

.method private captureVideo(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 222
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v0, v2}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 225
    return-void
.end method

.method private checkForDuplicateImage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 427
    invoke-direct {p0}, Lorg/apache/cordova/Capture;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    .line 428
    .local v0, "contentStore":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lorg/apache/cordova/Capture;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 429
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 432
    .local v1, "currentNumOfImages":I
    iget v5, p0, Lorg/apache/cordova/Capture;->numPics:I

    sub-int v5, v1, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 433
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 434
    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 435
    .local v3, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 436
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 438
    .end local v3    # "id":I
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 390
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-object v0

    .line 392
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 357
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-static {p1, v3}, Lorg/apache/cordova/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "fp":Ljava/io/File;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 362
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v3, "fullPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    const-string v3, "type"

    const-string v4, "audio/3gpp"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    :goto_0
    const-string v3, "lastModifiedDate"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 378
    const-string v3, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 384
    :goto_1
    return-object v2

    .line 371
    :cond_1
    const-string v3, "type"

    const-string v4, "video/3gpp"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 374
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v3, "type"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-static {v4, v5}, Lorg/apache/cordova/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "obj"    # Lorg/json/JSONObject;
    .param p3, "video"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 177
    .local v1, "player":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 179
    const-string v2, "duration"

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    if-eqz p3, :cond_0

    .line 181
    const-string v2, "height"

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v2, "width"

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-object p2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Capture"

    const-string v3, "Error: loading video file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFormatData(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "height"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v1, "width"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v1, "duration"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v1, "codecs"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-static {p1, v1}, Lorg/apache/cordova/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;

    move-result-object p2

    .line 134
    :cond_1
    const-string v1, "Capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mime type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "image/jpeg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/Capture;->getImageData(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 145
    :cond_3
    :goto_0
    return-object v0

    .line 139
    :cond_4
    const-string v1, "audio/3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    invoke-direct {p0, p1, v0, v4}, Lorg/apache/cordova/Capture;->getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_5
    const-string v1, "video/3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "video/mp4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    :cond_6
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/cordova/Capture;->getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private getImageData(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    invoke-static {p1}, Lorg/apache/cordova/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    const-string v1, "height"

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    const-string v1, "width"

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    return-object p2
.end method

.method private queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p1, "contentStore"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

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

.method private whichContentStore()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 445
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 448
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 81
    iput-object p3, p0, Lorg/apache/cordova/Capture;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 82
    iput-wide v5, p0, Lorg/apache/cordova/Capture;->limit:J

    .line 83
    iput v3, p0, Lorg/apache/cordova/Capture;->duration:I

    .line 84
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    .line 86
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    .local v1, "options":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 88
    const-string v4, "limit"

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/cordova/Capture;->limit:J

    .line 89
    const-string v4, "duration"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/apache/cordova/Capture;->duration:I

    .line 92
    :cond_0
    const-string v4, "getFormatData"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/apache/cordova/Capture;->getFormatData(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    .local v0, "obj":Lorg/json/JSONObject;
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 110
    .end local v0    # "obj":Lorg/json/JSONObject;
    :goto_0
    return v2

    .line 97
    :cond_1
    const-string v4, "captureAudio"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    invoke-direct {p0}, Lorg/apache/cordova/Capture;->captureAudio()V

    goto :goto_0

    .line 100
    :cond_2
    const-string v4, "captureImage"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    invoke-direct {p0}, Lorg/apache/cordova/Capture;->captureImage()V

    goto :goto_0

    .line 103
    :cond_3
    const-string v4, "captureVideo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    iget v3, p0, Lorg/apache/cordova/Capture;->duration:I

    invoke-direct {p0, v3}, Lorg/apache/cordova/Capture;->captureVideo(I)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 107
    goto :goto_0
.end method

.method public fail(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "err"    # Lorg/json/JSONObject;

    .prologue
    .line 404
    iget-object v0, p0, Lorg/apache/cordova/Capture;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/api/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 405
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 239
    const/4 v9, -0x1

    if-ne p2, v9, :cond_8

    .line 241
    if-nez p1, :cond_2

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 245
    .local v1, "data":Landroid/net/Uri;
    iget-object v9, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {p0, v1}, Lorg/apache/cordova/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 247
    iget-object v9, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    int-to-long v9, v9

    iget-wide v11, p0, Lorg/apache/cordova/Capture;->limit:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    .line 249
    iget-object v9, p0, Lorg/apache/cordova/Capture;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v10, Lorg/apache/cordova/api/PluginResult;

    sget-object v11, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v12, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {v10, v11, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {v9, v10}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 347
    .end local v1    # "data":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v1    # "data":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0}, Lorg/apache/cordova/Capture;->captureAudio()V

    goto :goto_0

    .line 254
    .end local v1    # "data":Landroid/net/Uri;
    :cond_2
    const/4 v9, 0x1

    if-ne p1, v9, :cond_5

    .line 262
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    const/4 v7, 0x0

    .line 266
    .local v7, "uri":Landroid/net/Uri;
    :try_start_1
    iget-object v9, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 277
    :goto_1
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/cordova/DirectoryManager;->getTempDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Capture.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 278
    .local v4, "fis":Ljava/io/FileInputStream;
    iget-object v9, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 279
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 281
    .local v0, "buffer":[B
    :goto_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    .line 282
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 300
    .end local v0    # "buffer":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    const/4 v9, 0x0

    const-string v10, "Error capturing image."

    invoke-direct {p0, v9, v10}, Lorg/apache/cordova/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/cordova/Capture;->fail(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 267
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    const-string v9, "Capture"

    const-string v10, "Can\'t write to external media storage."

    invoke-static {v9, v10}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 270
    :try_start_4
    iget-object v9, p0, Lorg/apache/cordova/Capture;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v9}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    goto :goto_1

    .line 271
    :catch_2
    move-exception v3

    .line 272
    .local v3, "ex":Ljava/lang/UnsupportedOperationException;
    :try_start_5
    const-string v9, "Capture"

    const-string v10, "Can\'t write to internal media storage."

    invoke-static {v9, v10}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v9, 0x0

    const-string v10, "Error capturing image - no media storage found."

    invoke-direct {p0, v9, v10}, Lorg/apache/cordova/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/cordova/Capture;->fail(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 284
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v3    # "ex":Ljava/lang/UnsupportedOperationException;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 285
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 286
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 289
    iget-object v9, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {p0, v7}, Lorg/apache/cordova/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 291
    invoke-direct {p0}, Lorg/apache/cordova/Capture;->checkForDuplicateImage()V

    .line 293
    iget-object v9, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    int-to-long v9, v9

    iget-wide v11, p0, Lorg/apache/cordova/Capture;->limit:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_4

    .line 295
    iget-object v9, p0, Lorg/apache/cordova/Capture;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v10, Lorg/apache/cordova/api/PluginResult;

    sget-object v11, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v12, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {v10, v11, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {v9, v10}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_0

    .line 298
    :cond_4
    invoke-direct {p0}, Lorg/apache/cordova/Capture;->captureImage()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 304
    .end local v0    # "buffer":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_5
    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .restart local v1    # "data":Landroid/net/Uri;
    if-nez v1, :cond_6

    .line 310
    const/4 v9, 0x3

    const-string v10, "Error: data is null"

    invoke-direct {p0, v9, v10}, Lorg/apache/cordova/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/cordova/Capture;->fail(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 314
    :cond_6
    iget-object v9, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {p0, v1}, Lorg/apache/cordova/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 315
    iget-object v9, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    int-to-long v9, v9

    iget-wide v11, p0, Lorg/apache/cordova/Capture;->limit:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_7

    .line 317
    iget-object v9, p0, Lorg/apache/cordova/Capture;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v10, Lorg/apache/cordova/api/PluginResult;

    sget-object v11, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v12, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {v10, v11, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {v9, v10}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_0

    .line 320
    :cond_7
    iget v9, p0, Lorg/apache/cordova/Capture;->duration:I

    invoke-direct {p0, v9}, Lorg/apache/cordova/Capture;->captureVideo(I)V

    goto/16 :goto_0

    .line 326
    .end local v1    # "data":Landroid/net/Uri;
    :cond_8
    if-nez p2, :cond_a

    .line 328
    iget-object v9, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 329
    iget-object v9, p0, Lorg/apache/cordova/Capture;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v10, Lorg/apache/cordova/api/PluginResult;

    sget-object v11, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v12, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {v10, v11, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {v9, v10}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_0

    .line 333
    :cond_9
    const/4 v9, 0x3

    const-string v10, "Canceled."

    invoke-direct {p0, v9, v10}, Lorg/apache/cordova/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/cordova/Capture;->fail(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 339
    :cond_a
    iget-object v9, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_b

    .line 340
    iget-object v9, p0, Lorg/apache/cordova/Capture;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v10, Lorg/apache/cordova/api/PluginResult;

    sget-object v11, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v12, p0, Lorg/apache/cordova/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {v10, v11, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    invoke-virtual {v9, v10}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_0

    .line 344
    :cond_b
    const/4 v9, 0x3

    const-string v10, "Did not complete!"

    invoke-direct {p0, v9, v10}, Lorg/apache/cordova/Capture;->createErrorObject(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/cordova/Capture;->fail(Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method
