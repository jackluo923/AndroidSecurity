.class Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$1;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOkClicked()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$1;->this$0:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->onSureClicked()V

    return-void
.end method
