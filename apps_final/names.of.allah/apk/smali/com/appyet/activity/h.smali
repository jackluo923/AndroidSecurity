.class final Lcom/appyet/activity/h;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/appyet/activity/DisqusCommentActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/DisqusCommentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "https://www.surveymonkey.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "&per_page"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    iget-boolean v0, v0, Lcom/appyet/activity/DisqusCommentActivity;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/activity/DisqusCommentActivity;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    iget-boolean v0, v0, Lcom/appyet/activity/DisqusCommentActivity;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    iget-boolean v0, v0, Lcom/appyet/activity/DisqusCommentActivity;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/DisqusCommentActivity;->supportInvalidateOptionsMenu()V

    :goto_0
    const-string v0, "http://comment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-static {v0}, Lcom/appyet/activity/DisqusCommentActivity;->d(Lcom/appyet/activity/DisqusCommentActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/activity/DisqusCommentActivity;->b:Z

    goto :goto_0

    :cond_3
    const-string v0, "http://disqus.com/logout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-static {v0}, Lcom/appyet/activity/DisqusCommentActivity;->b(Lcom/appyet/activity/DisqusCommentActivity;)V

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-static {v0}, Lcom/appyet/activity/DisqusCommentActivity;->d(Lcom/appyet/activity/DisqusCommentActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_1

    :cond_4
    const-string v0, "http://disqus.com/next/login-success/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http://disqus.com/_ax/twitter/complete/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-static {v0}, Lcom/appyet/activity/DisqusCommentActivity;->b(Lcom/appyet/activity/DisqusCommentActivity;)V

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-static {v0}, Lcom/appyet/activity/DisqusCommentActivity;->d(Lcom/appyet/activity/DisqusCommentActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_1
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/activity/DisqusCommentActivity;->a:Z

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/DisqusCommentActivity;->supportInvalidateOptionsMenu()V

    const-string v0, "http://base/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "http://comment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-static {v0}, Lcom/appyet/activity/DisqusCommentActivity;->b(Lcom/appyet/activity/DisqusCommentActivity;)V

    goto :goto_0

    :cond_2
    const-string v0, "http://disqus.com/_ax/google/complete/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://disqus.com/_ax/facebook/complete/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    iget-boolean v0, v0, Lcom/appyet/activity/DisqusCommentActivity;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    iput-boolean v3, v0, Lcom/appyet/activity/DisqusCommentActivity;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/activity/DisqusCommentActivity;->a:Z

    :try_start_0
    const-string v0, "http://base/#comment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    const-string v0, "comment:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-static {v0}, Lcom/appyet/activity/DisqusCommentActivity;->b(Lcom/appyet/activity/DisqusCommentActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "simple-loading.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/latest.rss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/DisqusCommentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "//redirect.disqus.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https://www.facebook.com/sharer.php"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https://twitter.com/intent/tweet?url="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http://disqus.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http://disqus.com/account/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http://docs.disqus.com/kb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/DisqusCommentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/appyet/activity/h;->a:Lcom/appyet/activity/DisqusCommentActivity;

    invoke-static {v1}, Lcom/appyet/activity/DisqusCommentActivity;->c(Lcom/appyet/activity/DisqusCommentActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/manager/ar;->c(Lcom/appyet/context/ApplicationContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
