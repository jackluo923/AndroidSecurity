.class public Lcom/alipay/mobile/personalbase/share/APTextObject;
.super Ljava/lang/Object;
.source "APTextObject.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/APTextObject;->text:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTextObject;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTextObject;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTextObject;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APTextObject;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xb

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTextObject;->text:Ljava/lang/String;

    .line 25
    return-void
.end method
