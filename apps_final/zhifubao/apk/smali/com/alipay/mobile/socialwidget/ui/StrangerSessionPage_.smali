.class public final Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;
.super Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;
.source "StrangerSessionPage_.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->O:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->a()V

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/ad;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialwidget/ui/ad;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;Landroid/database/Cursor;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/alipay/mobile/socialwidget/R$layout;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->setContentView(I)V

    .line 32
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->onBackPressed()V

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->d()V

    .line 46
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->d()V

    .line 58
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;->d()V

    .line 52
    return-void
.end method
