.class Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2$1;->this$1:Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2$1;->this$1:Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$300(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2$1;->this$1:Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;

    iget-object v1, v1, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->f:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$400(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2$1;->this$1:Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;

    iget-object v2, v2, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;->pwdInputed(ILandroid/text/Editable;)V

    return-void
.end method
