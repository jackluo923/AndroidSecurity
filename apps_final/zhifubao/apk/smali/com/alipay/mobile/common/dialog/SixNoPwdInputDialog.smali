.class public Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;
.super Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog$1;-><init>(Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog$2;-><init>(Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$layout;->dialog_six_no_pwd_input:I

    return v0
.end method

.method protected getPwdInputViewId()I
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$id;->close_pwd_input:I

    return v0
.end method

.method protected onDimiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->hideInputMethod()V

    return-void
.end method

.method protected onShow()V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/SixNoPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnShowEnableOk(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
