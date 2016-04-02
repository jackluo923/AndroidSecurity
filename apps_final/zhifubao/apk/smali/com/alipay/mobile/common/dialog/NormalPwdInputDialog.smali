.class public Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;
.super Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog$1;-><init>(Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog$2;-><init>(Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public getEnsureBtn()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->ensureBtn:Landroid/view/View;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$layout;->dialog_six_char_pwd_input:I

    return v0
.end method

.method protected getPwdInputViewId()I
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$id;->close_pwd_input:I

    return v0
.end method

.method protected initEditTextStyle(Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHintTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method protected onDismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->hideInputMethod()V

    return-void
.end method

.method protected onShow()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnShowEnableOk(Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->initEditTextStyle(Lcom/alipay/mobile/commonui/widget/APEditText;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->ensureBtn:Landroid/view/View;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/NormalPwdInputDialog;->getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    instance-of v3, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeKeyboard()Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v3

    if-lt v3, v5, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setOkEnabled(Z)V

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v3

    if-lt v3, v5, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnShowEnableOk(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
