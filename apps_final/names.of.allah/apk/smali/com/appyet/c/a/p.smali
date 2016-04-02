.class final Lcom/appyet/c/a/p;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/appyet/c/a/l;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private g:Lcom/appyet/activity/MainActivity;

.field private h:Landroid/widget/ProgressBar;

.field private final i:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/appyet/c/a/l;Lcom/appyet/activity/MainActivity;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/appyet/c/a/p;->a:Lcom/appyet/c/a/l;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/appyet/c/a/p;->i:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/a/p;->b:Lcom/appyet/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/a/p;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/appyet/c/a/p;->b:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/c/a/p;->h:Landroid/widget/ProgressBar;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/p;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final onHideCustomView()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/appyet/c/a/p;->c:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/p;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/p;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appyet/c/a/p;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/a/p;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/appyet/c/a/p;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/p;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/appyet/c/a/p;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MainActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/c/a/p;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appyet/c/a/p;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appyet/c/a/p;->e:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/appyet/c/a/p;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appyet/c/a/p;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/appyet/c/a/p;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/appyet/c/a/p;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/appyet/c/a/p;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0, v2}, Lcom/appyet/activity/MainActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/appyet/c/a/p;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/appyet/c/a/p;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/p;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method
