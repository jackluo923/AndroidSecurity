.class final Lcom/appyet/activity/ao;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/appyet/activity/WebBrowserActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/WebBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v1}, Lcom/appyet/activity/WebBrowserActivity;->b(Lcom/appyet/activity/WebBrowserActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/manager/ar;->c(Lcom/appyet/context/ApplicationContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v1}, Lcom/appyet/activity/WebBrowserActivity;->c(Lcom/appyet/activity/WebBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    iget-boolean v0, v0, Lcom/appyet/activity/WebBrowserActivity;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appyet/activity/WebBrowserActivity;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    iget-boolean v0, v0, Lcom/appyet/activity/WebBrowserActivity;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    iget-boolean v0, v0, Lcom/appyet/activity/WebBrowserActivity;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebBrowserActivity;->supportInvalidateOptionsMenu()V

    :goto_0
    const-string v0, "http://disqus.com/logout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-direct {p0, p1}, Lcom/appyet/activity/ao;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebBrowserActivity;->d(Lcom/appyet/activity/WebBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/activity/WebBrowserActivity;->b:Z

    goto :goto_0

    :cond_3
    const-string v0, "http://disqus.com/next/login-success/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://disqus.com/_ax/twitter/complete/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/appyet/activity/ao;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebBrowserActivity;->d(Lcom/appyet/activity/WebBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_1
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/activity/WebBrowserActivity;->a:Z

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebBrowserActivity;->supportInvalidateOptionsMenu()V

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

    invoke-direct {p0, p1}, Lcom/appyet/activity/ao;->a(Landroid/webkit/WebView;)V

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

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

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
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    iget-boolean v0, v0, Lcom/appyet/activity/WebBrowserActivity;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    iput-boolean v5, v0, Lcom/appyet/activity/WebBrowserActivity;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    iput-boolean v1, v0, Lcom/appyet/activity/WebBrowserActivity;->a:Z

    const-string v0, "simple-loading.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v5

    :cond_1
    const-string v0, "/latest.rss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/WebBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "//redirect.disqus.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://www.facebook.com/sharer.php"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://twitter.com/intent/tweet?url="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://disqus.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://disqus.com/account/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://docs.disqus.com/kb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/WebBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_7

    :try_start_0
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/WebBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_6
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v1}, Lcom/appyet/activity/WebBrowserActivity;->b(Lcom/appyet/activity/WebBrowserActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/manager/ar;->c(Lcom/appyet/context/ApplicationContext;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/appyet/f/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    const-class v2, Lcom/appyet/activity/WebActionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/WebBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_6

    const-string v1, "application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebBrowserActivity;->b(Lcom/appyet/activity/WebBrowserActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v0}, Lcom/appyet/manager/af;->a()Z

    iget-object v0, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/appyet/activity/WebBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v2}, Lcom/appyet/activity/WebBrowserActivity;->b(Lcom/appyet/activity/WebBrowserActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v2

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v2, p2}, Lcom/appyet/manager/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v3}, Lcom/appyet/activity/WebBrowserActivity;->b(Lcom/appyet/activity/WebBrowserActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v3, v2}, Lcom/appyet/manager/af;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_a

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    :goto_1
    iget-object v3, p0, Lcom/appyet/activity/ao;->a:Lcom/appyet/activity/WebBrowserActivity;

    invoke-static {v3}, Lcom/appyet/activity/WebBrowserActivity;->b(Lcom/appyet/activity/WebBrowserActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v3}, Lcom/appyet/manager/bp;->s()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    goto :goto_1

    :cond_b
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
