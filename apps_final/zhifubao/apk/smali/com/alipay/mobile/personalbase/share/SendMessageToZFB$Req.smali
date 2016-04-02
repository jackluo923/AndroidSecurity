.class public Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;
.super Lcom/alipay/mobile/personalbase/share/BaseReq;
.source "SendMessageToZFB.java"


# static fields
.field public static final ZFBSceneSession:I


# instance fields
.field private a:I

.field public message:Lcom/alipay/mobile/personalbase/share/APMediaMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/share/BaseReq;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->a:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/share/BaseReq;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->a:I

    .line 44
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->fromBundle(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/share/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/personalbase/share/APMediaMessage$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/alipay/mobile/personalbase/share/APMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->message:Lcom/alipay/mobile/personalbase/share/APMediaMessage;

    .line 54
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->a:I

    .line 55
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/share/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->message:Lcom/alipay/mobile/personalbase/share/APMediaMessage;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/share/APMediaMessage$Builder;->toBundle(Lcom/alipay/mobile/personalbase/share/APMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 60
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    return-void
.end method
