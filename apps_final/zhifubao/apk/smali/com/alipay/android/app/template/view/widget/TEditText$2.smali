.class Lcom/alipay/android/app/template/view/widget/TEditText$2;
.super Ljava/lang/Object;
.source "TEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TEditText;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 141
    if-eqz p2, :cond_2

    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->keyboard:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->isUseDefaultKeyboard(Lcom/alipay/android/app/template/view/ViewType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TEditText;->a(Lcom/alipay/android/app/template/view/widget/TEditText;)Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText$DecorViewInfo;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$2;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->c()V

    .line 150
    :cond_2
    return-void
.end method
