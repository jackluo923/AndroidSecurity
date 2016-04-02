.class public Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;
.super Ljava/lang/Object;
.source "TSimplePasswordTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Z

.field private b:Lcom/alipay/android/app/template/view/widget/TEditText;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->a:Z

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->c:I

    .line 13
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    .line 14
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->c:I

    .line 15
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 29
    :cond_0
    return-void

    .line 22
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 23
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 24
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 25
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->a:Z

    .line 26
    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "0"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 23
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->a:Z

    if-nez v0, :cond_2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getProparser()Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->b:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TEditText;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplatePasswordService()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/template/TemplatePasswordService;->onTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePasswordTextWatcher;->a:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
