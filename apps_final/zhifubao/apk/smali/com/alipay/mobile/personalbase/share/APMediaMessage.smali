.class public Lcom/alipay/mobile/personalbase/share/APMediaMessage;
.super Ljava/lang/Object;
.source "APMediaMessage.java"


# instance fields
.field public description:Ljava/lang/String;

.field public mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

.field public sdkVer:I

.field public thumbData:[B

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/personalbase/share/APMediaMessage;-><init>(Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    .line 26
    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    invoke-interface {v0}, Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;->type()I

    move-result v0

    goto :goto_0
.end method

.method public final setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x55

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->thumbData:[B

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
