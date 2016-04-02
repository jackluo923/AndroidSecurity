.class public Lcom/alipay/android/app/template/view/widget/TSimplePassword;
.super Lcom/alipay/android/app/template/view/widget/TEditText;
.source "TSimplePassword.java"


# instance fields
.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TEditText;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->s:Landroid/view/View;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TSimplePassword;)Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->s:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method final a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "template_simple_password"

    invoke-static {p1, v1}, Lcom/alipay/android/app/template/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/ClipLinearLayout;

    .line 29
    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->s:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->s:Landroid/view/View;

    const-string/jumbo v1, "spwd_input"

    invoke-static {p1, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a:Landroid/widget/EditText;

    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TSimplePassword$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TSimplePassword$1;-><init>(Lcom/alipay/android/app/template/view/widget/TSimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->a:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->r:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->s:Landroid/view/View;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->s:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TSimplePassword$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TSimplePassword$2;-><init>(Lcom/alipay/android/app/template/view/widget/TSimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TEditText;->destroy()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->s:Landroid/view/View;

    .line 86
    return-void
.end method

.method public getElementView()Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSimplePassword;->s:Landroid/view/View;

    return-object v0
.end method
