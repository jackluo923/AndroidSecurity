.class public Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Resp;
.super Lcom/alipay/mobile/personalbase/share/BaseResp;
.source "SendMessageToZFB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/share/BaseResp;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/share/BaseResp;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/share/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/share/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method
