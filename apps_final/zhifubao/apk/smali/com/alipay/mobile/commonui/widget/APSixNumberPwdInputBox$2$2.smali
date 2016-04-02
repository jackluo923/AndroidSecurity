.class Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$2;->this$1:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$2;->this$1:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;

    iget-object v0, v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->h:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$600(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$2;->this$1:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;

    iget-object v1, v1, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->f:I
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$500(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2$2;->this$1:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;

    iget-object v2, v2, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$2;->this$0:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->c:Lcom/alipay/mobile/commonui/widget/APEditText;
    invoke-static {v2}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;->pwdInputed(ILandroid/text/Editable;)V

    return-void
.end method
