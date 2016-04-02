.class final Lcom/appyet/activity/an;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/appyet/activity/WebBrowserActivity;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private g:Lcom/appyet/activity/WebBrowserActivity;

.field private h:Landroid/widget/ProgressBar;

.field private final i:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/appyet/activity/WebBrowserActivity;Lcom/appyet/activity/WebBrowserActivity;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/appyet/activity/an;->i:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p2, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/an;->b:Lcom/appyet/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/an;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/appyet/activity/an;->b:Lcom/appyet/context/ApplicationContext;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/activity/an;->h:Landroid/widget/ProgressBar;

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/an;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3

    const/4 v2, 0x1

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return v2
.end method

.method public final onHideCustomView()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/appyet/activity/an;->c:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/an;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appyet/activity/an;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/activity/an;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/appyet/activity/an;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/appyet/activity/an;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebBrowserActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/appyet/activity/WebBrowserActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebBrowserActivity;->getWindow()Landroid/view/Window;

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

    iget-object v0, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebBrowserActivity;->a(Lcom/appyet/activity/WebBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebBrowserActivity;->a(Lcom/appyet/activity/WebBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebBrowserActivity;->a(Lcom/appyet/activity/WebBrowserActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebBrowserActivity;->a(Lcom/appyet/activity/WebBrowserActivity;)Landroid/widget/ProgressBar;

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

    iget-object v0, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0, p2}, Lcom/appyet/activity/WebBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

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
    iget-object v1, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v1}, Lcom/appyet/activity/WebBrowserActivity;->getWindow()Landroid/view/Window;

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

    iget-object v1, p0, Lcom/appyet/activity/an;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v2, "DARK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v1}, Lcom/appyet/activity/WebBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/appyet/activity/an;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v1}, Lcom/appyet/activity/WebBrowserActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v0, p0, Lcom/appyet/activity/an;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    const v1, 0x7f0a00ea

    invoke-virtual {v0, v1}, Lcom/appyet/activity/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appyet/activity/an;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Lcom/appyet/activity/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/appyet/activity/an;->e:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/appyet/activity/an;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appyet/activity/an;->i:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/appyet/activity/an;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/appyet/activity/an;->f:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/appyet/activity/an;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebBrowserActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0, v2}, Lcom/appyet/activity/WebBrowserActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->g:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/activity/an;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method
