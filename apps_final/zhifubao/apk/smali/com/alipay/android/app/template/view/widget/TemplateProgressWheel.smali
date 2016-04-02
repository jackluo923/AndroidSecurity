.class public Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;
.super Lcom/alipay/android/app/template/view/widget/TElement;
.source "TemplateProgressWheel.java"


# instance fields
.field private a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 21
    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    .line 22
    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->b:Landroid/widget/ImageView;

    .line 26
    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "template_progress_wheel"

    const-string/jumbo v2, "layout"

    invoke-static {p1, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 33
    const-string/jumbo v1, "template_progress_wheel"

    const-string/jumbo v2, "id"

    .line 32
    invoke-static {p1, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    .line 35
    const-string/jumbo v1, "template_pay_success"

    const-string/jumbo v2, "id"

    .line 34
    invoke-static {p1, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->b:Landroid/widget/ImageView;

    .line 36
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object v0, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v1}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v1

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v1

    .line 42
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->b:Landroid/widget/ImageView;

    .line 45
    const-string/jumbo v1, "success_blue_norepeat"

    const-string/jumbo v3, "drawable"

    .line 46
    const-string/jumbo v4, "com.alipay.android.app"

    .line 44
    invoke-static {p1, v1, v3, v4}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->b:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_0
    return-void
.end method

.method public pauseProgressWheel()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->pause()V

    .line 69
    :cond_0
    return-void
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "showProgressWheel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "showProgressWheel"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "showPaySuccess"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "showPaySuccess"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "pauseProgressWheel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "pauseProgressWheel"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 63
    return-void
.end method

.method public showPaySuccess()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->pause()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 88
    :cond_1
    return-void
.end method

.method public showProgressWheel()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateProgressWheel;->a:Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/CustomProgressWheel;->start()V

    .line 75
    :cond_0
    return-void
.end method
