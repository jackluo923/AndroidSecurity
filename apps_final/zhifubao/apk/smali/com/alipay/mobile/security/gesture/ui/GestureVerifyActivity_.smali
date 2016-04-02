.class public final Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;
.super Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;


# instance fields
.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private e()V
    .locals 1

    sget v0, Lcom/alipay/mobile/a/d;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/a/d;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/component/LockView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->k:Lcom/alipay/mobile/security/gesture/component/LockView;

    sget v0, Lcom/alipay/mobile/a/d;->A:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bw;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/ui/bw;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/br;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/br;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/bq;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/bq;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bv;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/bv;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bu;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/bu;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bt;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/bt;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->m:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/bs;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/bs;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bx;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/bx;-><init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/a/e;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->setContentView(I)V

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

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->e()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->e()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity_;->e()V

    return-void
.end method
