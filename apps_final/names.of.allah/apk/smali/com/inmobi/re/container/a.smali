.class Lcom/inmobi/re/container/a;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/re/container/IMWebView;->h(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Locations access"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Allow location access"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Accept"

    new-instance v3, Lcom/inmobi/re/container/a$g;

    invoke-direct {v3, p0, p2, p1}, Lcom/inmobi/re/container/a$g;-><init>(Lcom/inmobi/re/container/a;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Decline"

    new-instance v3, Lcom/inmobi/re/container/a$f;

    invoke-direct {v3, p0, p2, p1}, Lcom/inmobi/re/container/a$f;-><init>(Lcom/inmobi/re/container/a;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Exception while accessing location from creative "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, p1, v4, v4}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    const-string v0, "[InMobi]-[RE]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView-> onJsAlert, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getExpandedActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/inmobi/re/container/a$c;

    invoke-direct {v2, p0, p4}, Lcom/inmobi/re/container/a$c;-><init>(Lcom/inmobi/re/container/a;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "webchrome client exception onJSAlert "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 8

    iget-object v1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v1, p1}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    const-string v1, "[InMobi]-[RE]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onShowCustomView ******************************"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->g(Lcom/inmobi/re/container/IMWebView;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/inmobi/re/container/a$b;

    invoke-direct {v3, p0}, Lcom/inmobi/re/container/a$b;-><init>(Lcom/inmobi/re/container/a;)V

    invoke-static {v1, v2, v3}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/re/container/IMWebView;->g(Lcom/inmobi/re/container/IMWebView;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/inmobi/re/container/a$e;

    invoke-direct {v2, p0}, Lcom/inmobi/re/container/a$e;-><init>(Lcom/inmobi/re/container/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v1, v0

    invoke-static {v2, v1}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/re/container/IMWebView;->h(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->i(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/VideoView;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->i(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    invoke-static {v3, v2}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v2, v2, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getExpandedActivity()Landroid/app/Activity;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/re/container/IMWebView;->j(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v3

    new-instance v4, Landroid/widget/MediaController;

    invoke-direct {v4, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->i(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->j(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/re/container/IMWebView;->k(Lcom/inmobi/re/container/IMWebView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->j(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lcom/inmobi/re/container/a$d;

    invoke-direct {v3, p0}, Lcom/inmobi/re/container/a$d;-><init>(Lcom/inmobi/re/container/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->g(Lcom/inmobi/re/container/IMWebView;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Registering"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->g(Lcom/inmobi/re/container/IMWebView;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/inmobi/re/container/a$h;

    invoke-direct {v3, p0}, Lcom/inmobi/re/container/a$h;-><init>(Lcom/inmobi/re/container/a;)V

    invoke-static {v1, v2, v3}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnKeyListener;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2, p1}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;)Landroid/view/View;

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "[InMobi]-[RE]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/re/container/IMWebView;->g(Lcom/inmobi/re/container/IMWebView;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/inmobi/re/container/a$a;

    invoke-direct {v3, p0}, Lcom/inmobi/re/container/a$a;-><init>(Lcom/inmobi/re/container/a;)V

    invoke-static {v1, v2, v3}, Lcom/inmobi/re/container/IMWebView;->a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnKeyListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "[InMobi]-[RE]-4.4.1"

    const-string v3, "IMWebview onShowCustomView exception "

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
