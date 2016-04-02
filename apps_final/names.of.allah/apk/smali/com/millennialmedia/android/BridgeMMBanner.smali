.class Lcom/millennialmedia/android/BridgeMMBanner;
.super Lcom/millennialmedia/android/MMJSObject;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    return-void
.end method


# virtual methods
.method getScreenHeight(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->getDpiHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getScreenWidth(Landroid/content/Context;)I
    .locals 1

    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->getDpiWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resize(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMBanner;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/millennialmedia/android/MMWebView;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "State is currently resized"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v2, v0

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v3, v0

    :goto_2
    const-string v0, "customClosePosition"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v0, "offsetX"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "offsetY"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v6, v1

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v5, v0

    :cond_1
    const-string v0, "allowOffscreen"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v10}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMBanner;->getScreenWidth(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMBanner;->getScreenHeight(Landroid/content/Context;)I

    move-result v9

    new-instance v0, Lcom/millennialmedia/android/DTOResizeParameters;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct/range {v0 .. v9}, Lcom/millennialmedia/android/DTOResizeParameters;-><init>(FIILjava/lang/String;IIZII)V

    invoke-virtual {v10, v0}, Lcom/millennialmedia/android/MMWebView;->setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    move v6, v5

    goto :goto_3

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_1
.end method
