.class Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    # operator-- for: Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->access$810(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->f:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->access$900(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->access$800(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->g:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->access$800(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->f:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->access$900(Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView$2;->cancel()Z

    goto :goto_0
.end method
