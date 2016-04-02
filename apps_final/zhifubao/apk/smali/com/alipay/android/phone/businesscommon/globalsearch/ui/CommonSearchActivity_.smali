.class public final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;
.super Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;
.source "CommonSearchActivity_.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->L:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->b:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    .line 38
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->b()V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/g;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->setContentView(I)V

    .line 31
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->onBackPressed()V

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->e()V

    .line 45
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->setContentView(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->e()V

    .line 57
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity_;->e()V

    .line 51
    return-void
.end method
