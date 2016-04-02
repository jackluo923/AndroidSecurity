.class Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    # getter for: Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;
    invoke-static {v0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->access$000(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    # getter for: Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;
    invoke-static {v0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->access$100(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    iget-object v2, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    # getter for: Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;
    invoke-static {v2}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->access$100(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->access$200(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    # getter for: Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;
    invoke-static {v1}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->access$000(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;->onClose(ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->cancel()V

    return-void
.end method
