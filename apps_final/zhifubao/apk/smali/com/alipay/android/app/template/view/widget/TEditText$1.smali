.class Lcom/alipay/android/app/template/view/widget/TEditText$1;
.super Ljava/lang/Object;
.source "TEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TEditText;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$1;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$1;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$1;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$1;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$1;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$1;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$1;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->c()V

    .line 136
    return-void
.end method
