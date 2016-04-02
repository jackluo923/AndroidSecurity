.class Lcom/alipay/mobile/commonui/widget/APPwdInputBox$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->showInputPannel(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPwdInputBox$1;->this$0:Lcom/alipay/mobile/commonui/widget/APPwdInputBox;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->b:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPwdInputBox;->access$000(Lcom/alipay/mobile/commonui/widget/APPwdInputBox;)Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    return-void
.end method
