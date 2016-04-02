.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;
.super Landroid/os/ResultReceiver;
.source "ChatInputImmResultReceiver.java"


# instance fields
.field private a:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getProcessor()Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->a:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;

    return-object v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->a:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->a:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 22
    :cond_0
    return-void
.end method

.method public removeProcessor()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->a:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;

    .line 34
    return-void
.end method

.method public setProcessor(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver;->a:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;

    .line 30
    return-void
.end method
