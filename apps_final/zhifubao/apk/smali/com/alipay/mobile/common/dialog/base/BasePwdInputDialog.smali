.class public abstract Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;


# instance fields
.field private a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

.field private e:Ljava/lang/String;

.field protected ensureBtn:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->e:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getBasePwdInputBox()Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getLayoutId()I
.end method

.method protected abstract getPwdInputViewId()I
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->g:Landroid/view/View;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->g:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getPwdInputViewId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox$PWDInputListener2;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setDialog(Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnShowEnableOk(Z)V

    new-instance v2, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$1;-><init>(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOKListener(Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$OnOkClickedListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$string;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOKText(Ljava/lang/String;)V

    :cond_0
    sget v0, Lcom/alipay/mobile/ui/R$id;->cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$2;-><init>(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->ensure:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->ensureBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->ensureBtn:Landroid/view/View;

    new-instance v2, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$3;-><init>(Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->titleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->subTitleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSureClicked()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getInputedPwd(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    invoke-static {v1}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->a:Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;->onClose(ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->dismiss()V

    return-void
.end method

.method public pwdInputed(ILandroid/text/Editable;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->ensureBtn:Landroid/view/View;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

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

    if-ne v3, v5, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard;->setOkEnabled(Z)V

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

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

.method public setBasePwdInputBox(Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->d:Lcom/alipay/mobile/commonui/widget/APBasePwdInputBox;

    return-void
.end method

.method public setContent()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->g:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->setContent()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method
