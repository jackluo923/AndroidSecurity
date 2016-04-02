.class public final Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;
.super Lcom/alipay/mobile/security/gesture/ui/GestureActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/s;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/ui/s;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/p;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/p;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/r;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/q;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/t;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
