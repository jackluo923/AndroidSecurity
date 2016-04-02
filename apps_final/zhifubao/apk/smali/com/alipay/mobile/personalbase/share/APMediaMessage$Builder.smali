.class public Lcom/alipay/mobile/personalbase/share/APMediaMessage$Builder;
.super Ljava/lang/Object;
.source "APMediaMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/alipay/mobile/personalbase/share/APMediaMessage;
    .locals 4

    .prologue
    .line 81
    new-instance v1, Lcom/alipay/mobile/personalbase/share/APMediaMessage;

    invoke-direct {v1}, Lcom/alipay/mobile/personalbase/share/APMediaMessage;-><init>()V

    .line 82
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_SDK_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->sdkVer:I

    .line 83
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_TITLE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->title:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->description:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_THUMB_DATA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->thumbData:[B

    .line 87
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 89
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.mobile.personalbase.share."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    iput-object v0, v1, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    .line 91
    iget-object v0, v1, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;->unserialize(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 99
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 95
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 99
    goto :goto_0
.end method

.method public static toBundle(Lcom/alipay/mobile/personalbase/share/APMediaMessage;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    sget-object v1, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_SDK_VERSION:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->sdkVer:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    sget-object v1, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_TITLE:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_DESCRIPTION:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_THUMB_DATA:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->thumbData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_IDENTIFIER:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APMediaMessage;->mediaObject:Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;->serialize(Landroid/os/Bundle;)V

    .line 77
    :cond_0
    return-object v0
.end method
