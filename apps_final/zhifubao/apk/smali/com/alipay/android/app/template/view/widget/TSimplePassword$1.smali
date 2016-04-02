.class Lcom/alipay/android/app/template/view/widget/TSimplePassword$1;
.super Ljava/lang/Object;
.source "TSimplePassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TSimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TSimplePassword;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword$1;->a:Lcom/alipay/android/app/template/view/widget/TSimplePassword;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    move v0, v1

    .line 49
    :goto_0
    const/4 v3, 0x6

    if-lt v0, v3, :cond_0

    .line 59
    return-void

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword$1;->a:Lcom/alipay/android/app/template/view/widget/TSimplePassword;

    iget-object v3, v3, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v3}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "spwd_iv_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 51
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword$1;->a:Lcom/alipay/android/app/template/view/widget/TSimplePassword;

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a(Lcom/alipay/android/app/template/view/widget/TSimplePassword;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 52
    if-ge v0, v2, :cond_1

    .line 53
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
