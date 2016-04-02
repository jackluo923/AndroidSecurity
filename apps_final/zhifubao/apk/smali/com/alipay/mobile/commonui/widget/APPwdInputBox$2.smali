.class Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # setter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->e:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$102(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->e:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$100(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$200(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$300(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2$1;-><init>(Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
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
