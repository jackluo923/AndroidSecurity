.class Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->b:Landroid/widget/Button;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$600(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->c:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$500(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "$s$"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->k:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$302(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->updateSendButtonEnableStatus()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->b:Landroid/widget/Button;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$600(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->mobile_input_resent_checkCode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->access$700(Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
