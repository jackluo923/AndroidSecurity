.class abstract Lcom/millennialmedia/android/CachedAd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final INTERSTITIAL:I = 0x2

.field static final NATIVE:I = 0x3

.field static final VIDEO:I = 0x1

.field static final serialVersionUID:J = 0x465b8f9134839c6L


# instance fields
.field acid:Ljava/lang/String;

.field contentUrl:Ljava/lang/String;

.field deferredViewStart:J

.field downloadAllOrNothing:Z

.field downloadPriority:I

.field expiration:Ljava/util/Date;

.field private id:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/CachedAd;->downloadPriority:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/CachedAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    return-object v0
.end method

.method static parseJSON(Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 5

    const/4 v2, 0x0

    sget v0, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "Received cached ad."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x3e8

    if-le v3, v0, :cond_1

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    add-int/lit16 v1, v0, 0x3e8

    if-le v1, v3, :cond_3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_3

    :cond_3
    move v4, v0

    move v0, v1

    move v1, v4

    goto :goto_0

    :cond_4
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method


# virtual methods
.method abstract canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z
.end method

.method delete(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/millennialmedia/android/CachedAd$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/CachedAd$1;-><init>(Lcom/millennialmedia/android/CachedAd;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    const-string v2, "Deleting %d files for %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    const-string v0, "vid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    const-string v0, "content-url"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

    const-string v0, "expiration"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss ZZZZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method abstract download(Landroid/content/Context;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/millennialmedia/android/CachedAd;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/millennialmedia/android/CachedAd;

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    return-object v0
.end method

.method abstract getType()I
.end method

.method abstract getTypeString()Ljava/lang/String;
.end method

.method isExpired()Z
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract isOnDisk(Landroid/content/Context;)Z
.end method

.method isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

    return-void
.end method

.method abstract saveAssets(Landroid/content/Context;)Z
.end method

.method setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    return-void
.end method

.method abstract show(Landroid/content/Context;J)V
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/millennialmedia/android/CachedAd;->downloadPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
