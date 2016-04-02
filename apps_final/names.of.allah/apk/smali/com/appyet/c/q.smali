.class final Lcom/appyet/c/q;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/appyet/c/k;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:Lcom/appyet/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/appyet/c/k;Lcom/appyet/activity/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    iget-object v0, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    return-void
.end method

.method private a()Landroid/webkit/WebResourceResponse;
    .locals 5

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "image/png"

    const-string v2, ""

    iget-object v3, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->i(Lcom/appyet/c/k;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    const/4 v1, 0x1

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    if-nez p2, :cond_0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://APPYET_BASE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://APPYET_BASE"

    const-string v1, "http://"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

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

    :cond_2
    :goto_1
    invoke-static {p2}, Lcom/appyet/f/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appyet/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_5

    const-string v0, "feeds.feedburner.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "doubleclick.net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feedsportal.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "api.tweetmeme.com/imagebutton.gif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "share-buttons/fb.jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "share-buttons/diggme.png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "share-buttons/stumbleupon.png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "wordpress.com/1.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "wordpress.com/b.gif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "blogger.googleusercontent.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feeds.feedburner.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "www.assoc-amazon.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "doubleclick.net"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "statcounter.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pheedo.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/appyet/c/q;->a()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->e(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v3

    iget v3, v3, Lcom/appyet/metadata/MetadataModuleFeed;->MinImageWidth:I

    if-lt v2, v3, :cond_7

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v2, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v2}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v2

    iget v2, v2, Lcom/appyet/metadata/MetadataModuleFeed;->MinImageHeight:I

    if-ge v0, v2, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/appyet/c/q;->a()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "image/jpeg"

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-virtual {v3, v0}, Lcom/appyet/c/k;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_1
    const-string v0, "appyet.youtube:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    const-class v4, Lcom/appyet/activity/YouTubePlayerActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->n:Lcom/appyet/context/f;

    iget-object v0, v0, Lcom/appyet/context/f;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->j(Lcom/appyet/c/k;)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FeedItem;

    const-string v4, "TITLE"

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0, v3}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    :cond_1
    :try_start_3
    const-string v0, "appyet.video:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "appyet.video:"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :try_start_4
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    const-class v5, Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "URL"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0, v3}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    :cond_2
    :try_start_7
    const-string v0, "appyet.audio:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "appyet.audio:"

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v0

    :try_start_8
    iget-object v3, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    invoke-virtual {v3, v0, v0}, Lcom/appyet/manager/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->c:Lcom/appyet/manager/as;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/appyet/manager/as;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-virtual {v3}, Lcom/appyet/c/k;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    const-class v4, Lcom/appyet/activity/MediaPlayerActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-virtual {v3, v0}, Lcom/appyet/c/k;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_a
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :cond_3
    :try_start_b
    const-string v0, "appyet.podcast:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-virtual {v3}, Lcom/appyet/c/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/appyet/activity/PodcastActionActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "POSITION"

    iget-object v4, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->j(Lcom/appyet/c/k;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-virtual {v3, v0}, Lcom/appyet/c/k;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move v0, v1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :cond_4
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->h(Lcom/appyet/c/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->f(Lcom/appyet/c/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/appyet/c/n;

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-direct {v0, v3, p2}, Lcom/appyet/c/n;-><init>(Lcom/appyet/c/k;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/appyet/c/n;->a([Ljava/lang/Object;)Lcom/appyet/f/a;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move v0, v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_e
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :cond_5
    :try_start_f
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->h(Lcom/appyet/c/k;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->g(Lcom/appyet/c/k;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    const-class v4, Lcom/appyet/activity/DisqusCommentActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ArticleUrl"

    iget-object v4, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ArticleTitle"

    iget-object v4, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "DisQusShortName"

    iget-object v4, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v4

    iget-object v4, v4, Lcom/appyet/metadata/MetadataModuleFeed;->DisQusShortName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move v0, v1

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    :cond_6
    :try_start_11
    const-string v0, "http://APPYET_BASE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    const-class v4, Lcom/appyet/activity/WebBrowserActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "URL"

    const-string v4, "http://APPYET_BASE"

    const-string v5, "http://"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v3, v0}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    move v0, v1

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_12
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_7
    const-string v0, "wtai://wp/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "wtai://wp/mc;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xd

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_9
    invoke-static {p2}, Lcom/appyet/f/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    const-class v4, Lcom/appyet/activity/WebActionActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "URL"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v3, v0}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_3
    move v0, v1

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_f

    const-string v3, "application"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_f

    iget-object v0, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v0}, Lcom/appyet/manager/af;->a()Z

    iget-object v0, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-virtual {v0}, Lcom/appyet/c/k;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    const-string v3, "download"

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v4, p2}, Lcom/appyet/manager/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->l:Lcom/appyet/manager/af;

    invoke-virtual {v5, v4}, Lcom/appyet/manager/af;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_c

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    :cond_c
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    iget-object v5, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v5}, Lcom/appyet/manager/bp;->s()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    :goto_4
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v3, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_3

    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_d
    :goto_5
    :try_start_13
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v3, v0}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    move v0, v1

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x3

    :try_start_14
    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    goto :goto_4

    :cond_f
    if-eqz p2, :cond_11

    const-string v0, "http://www.youtube.com/watch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "https://www.youtube.com/watch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    iget-object v0, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    invoke-static {v0, p2}, Lcom/appyet/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_11
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    const-class v4, Lcom/appyet/activity/WebBrowserActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "URL"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v3, v0}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto/16 :goto_3

    :cond_12
    :try_start_15
    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/appyet/c/q;->a:Lcom/appyet/c/k;

    invoke-virtual {v3, v0}, Lcom/appyet/c/k;->startActivity(Landroid/content/Intent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    move v0, v1

    goto/16 :goto_0

    :catch_a
    move-exception v0

    :try_start_16
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    move v0, v2

    goto/16 :goto_0

    :cond_13
    const-string v0, "about:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x1

    :try_start_17
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/net/URISyntaxException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    move-result-object v0

    :try_start_18
    iget-object v3, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3}, Lcom/appyet/context/ApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_15

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "market://search?q=pname:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/appyet/c/q;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v3, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const-string v3, "Browser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad URI "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    :cond_15
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    :try_start_19
    iget-object v3, p0, Lcom/appyet/c/q;->c:Lcom/appyet/activity/MainActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lcom/appyet/activity/MainActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_0

    :catch_c
    move-exception v0

    :try_start_1a
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    goto/16 :goto_5

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    move v0, v2

    goto/16 :goto_0
.end method
