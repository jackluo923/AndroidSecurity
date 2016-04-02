.class public abstract Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# instance fields
.field protected isWithKeyboard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/ui/R$styleable;->sixCharInputBox:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->isWithKeyboard:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public callInputMethod()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->showInputPannel(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract getEditText()Landroid/widget/EditText;
.end method

.method public abstract getInputedPwd(I)Ljava/lang/String;
.end method

.method public hideInputMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    instance-of v1, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->closeSafeKeyboard()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->onFinishInflate()V

    return-void
.end method

.method public abstract setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;)V
.end method

.method protected showInputPannel(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->isPasswordType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$1;-><init>(Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;Landroid/view/View;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
