.class Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;
.super Ljava/lang/Object;
.source "ChatInputer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field final synthetic this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;

    iput p2, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->a:I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->exp_pan:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->a:I

    if-eqz v1, :cond_1

    .line 75
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 76
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1$1;->this$1:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->this$0:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;->access$0(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$1;)Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    move-result-object v0

    iput-boolean v3, v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->isClicked:Z

    .line 79
    return-void
.end method
