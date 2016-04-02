.class final Lcom/appyet/c/bh;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/appyet/c/be;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private g:Lcom/appyet/activity/MainActivity;

.field private h:Landroid/widget/ProgressBar;

.field private final i:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/appyet/c/be;Lcom/appyet/activity/MainActivity;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/appyet/c/bh;->i:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/bh;->b:Lcom/appyet/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/bh;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/appyet/c/bh;->b:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/c/bh;->h:Landroid/widget/ProgressBar;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/bh;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final onHideCustomView()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/appyet/c/bh;->c:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/bh;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appyet/c/bh;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/c/bh;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/appyet/c/bh;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/appyet/c/bh;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MainActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-static {v0}, Lcom/appyet/c/be;->a(Lcom/appyet/c/be;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-static {v0}, Lcom/appyet/c/be;->a(Lcom/appyet/c/be;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-static {v0}, Lcom/appyet/c/be;->a(Lcom/appyet/c/be;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-static {v0}, Lcom/appyet/c/be;->a(Lcom/appyet/c/be;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-virtual {v0}, Lcom/appyet/c/be;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-virtual {v0}, Lcom/appyet/c/be;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_bar_title"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a0041

    :cond_0
    iget-object v1, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-virtual {v1}, Lcom/appyet/c/be;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v1, p0, Lcom/appyet/c/bh;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v2, "DARK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-virtual {v1}, Lcom/appyet/c/be;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/appyet/c/bh;->a:Lcom/appyet/c/be;

    invoke-virtual {v1}, Lcom/appyet/c/be;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appyet/c/bh;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appyet/c/bh;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Lcom/appyet/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appyet/c/bh;->e:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/appyet/c/bh;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appyet/c/bh;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/appyet/c/bh;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/appyet/c/bh;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/appyet/c/bh;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0, v2}, Lcom/appyet/activity/MainActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->g:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/bh;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method
