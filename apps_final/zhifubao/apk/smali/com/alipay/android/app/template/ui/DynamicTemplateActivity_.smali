.class public final Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;
.super Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;
.source "DynamicTemplateActivity_.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;->a:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->showTemplate(Landroid/view/View;)V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$IntentBuilder_;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;->onBackPressed()V

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->setContentView(I)V

    .line 39
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->setContentView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method public final showTemplate(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_$1;-><init>(Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method
