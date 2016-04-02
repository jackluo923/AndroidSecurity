.class Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->o:Z
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$200(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFocusChange showKeyboard"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$300(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$800(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$800(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->a:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$400(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFocusChange hideKeyboard"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$502(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFocusChange lose focusLoseTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->u:J
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$500(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # invokes: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$600(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$2;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x1

    # invokes: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->c()V
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$700(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;Z)V

    goto :goto_0
.end method
