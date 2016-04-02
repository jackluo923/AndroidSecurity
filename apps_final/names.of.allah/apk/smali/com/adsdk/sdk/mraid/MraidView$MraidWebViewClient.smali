.class Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method private constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loaded resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView;->mHasFiredReadyEvent:Z
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView;->access$1(Lcom/adsdk/sdk/mraid/MraidView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView;->access$2(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->initializeJavaScriptState()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidView;->access$3(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;->createWithType(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Lcom/adsdk/sdk/mraid/MraidPlacementTypeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->fireReadyEvent()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListener;->onReady(Lcom/adsdk/sdk/mraid/MraidView;)V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->access$4(Lcom/adsdk/sdk/mraid/MraidView;Z)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mopub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v3, "mraid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    # invokes: Lcom/adsdk/sdk/mraid/MraidView;->tryCommand(Ljava/net/URI;)Z
    invoke-static {v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;->access$0(Lcom/adsdk/sdk/mraid/MraidView;Ljava/net/URI;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/mraid/MraidView;->wasClicked()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;->this$0:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v3}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
