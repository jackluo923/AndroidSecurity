.class Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-wide/16 v2, 0x64

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # setter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$102(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$200(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$100(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$300(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->g:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$400(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$1;-><init>(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->h:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$600(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$2;-><init>(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
