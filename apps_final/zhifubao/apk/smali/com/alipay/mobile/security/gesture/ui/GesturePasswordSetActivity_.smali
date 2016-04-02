.class public final Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;
.super Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;


# instance fields
.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/BaseGestureActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->b(Z)V

    return-void
.end method

.method private g()V
    .locals 1

    sget v0, Lcom/alipay/mobile/a/d;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->n:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/a/d;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->m:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/a/d;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->k:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v0, Lcom/alipay/mobile/a/d;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->j:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v0, Lcom/alipay/mobile/a/d;->p:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->l:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bd;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/ui/bd;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/ba;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/ba;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/be;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/be;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/security/gesture/ui/bb;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/aw;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/aw;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/bc;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/bc;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/az;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/az;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/ax;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/gesture/ui/ax;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->o:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/ay;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/ui/ay;-><init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/a/e;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->setContentView(I)V

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

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->g()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->g()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity_;->g()V

    return-void
.end method
