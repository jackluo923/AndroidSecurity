.class Lcom/adsdk/sdk/mraid/MraidBrowser$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsdk/sdk/mraid/Drawables;->LEFT_ARROW:Lcom/adsdk/sdk/mraid/Drawables;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    # getter for: Lcom/adsdk/sdk/mraid/MraidBrowser;->mBackButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidBrowser;->access$1(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adsdk/sdk/mraid/Drawables;->RIGHT_ARROW:Lcom/adsdk/sdk/mraid/Drawables;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    # getter for: Lcom/adsdk/sdk/mraid/MraidBrowser;->mForwardButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidBrowser;->access$0(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/adsdk/sdk/mraid/Drawables;->UNLEFT_ARROW:Lcom/adsdk/sdk/mraid/Drawables;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/adsdk/sdk/mraid/Drawables;->UNRIGHT_ARROW:Lcom/adsdk/sdk/mraid/Drawables;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    # getter for: Lcom/adsdk/sdk/mraid/MraidBrowser;->mForwardButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->access$0(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/mraid/Drawables;->UNRIGHT_ARROW:Lcom/adsdk/sdk/mraid/Drawables;

    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MRAID error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "play.google.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "market.android.com"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidBrowser;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser$1;->this$0:Lcom/adsdk/sdk/mraid/MraidBrowser;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to start activity for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Ensure that your phone can handle this intent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
