.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Lcom/alipay/mobile/pubsvc/ui/component/ChatInputImmResultReceiver$ReceiverProcessor;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    return-object v0
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->a:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
