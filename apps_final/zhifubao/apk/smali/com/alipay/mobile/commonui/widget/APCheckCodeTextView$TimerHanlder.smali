.class Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;-><init>(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)V

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
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->access$500(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->colorLightGray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->access$500(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->access$600(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "$s$"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->i:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->access$302(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->access$500(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$style;->check_code_button_style:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->updateSendButtonEnableStatus()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    # getter for: Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->access$500(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->requireCheckCode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView$TimerHanlder;->this$0:Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;->access$700(Lcom/alipay/mobile/commonui/widget/APCheckCodeTextView;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
