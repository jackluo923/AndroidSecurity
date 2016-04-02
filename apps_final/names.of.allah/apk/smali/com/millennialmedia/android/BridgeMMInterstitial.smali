.class Lcom/millennialmedia/android/BridgeMMInterstitial;
.super Lcom/millennialmedia/android/MMJSObject;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    return-void
.end method

.method private getExpandExtrasIntent(Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string v1, "settings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "internalId"

    iget-wide v2, p2, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method private isForcingOrientation(Lcom/millennialmedia/android/MMJSResponse;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "portrait"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "landscape"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private setAllowOrientationChange(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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

    const-string v0, "allowOrientationChange"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getBaseActivity()Lcom/millennialmedia/android/AdViewOverlayActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setAllowOrientationChange(Z)V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setForceOrientation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
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

    const-string v0, "forceOrientation"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getBaseActivity()Lcom/millennialmedia/android/AdViewOverlayActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientationPortrait()V

    const-string v0, "portrait"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientationLandscape()V

    const-string v0, "landscape"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getMMLayout()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->closeAreaTouched()V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandToExternalBrowser(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->open(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public expandWithProperties(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 17
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

    const-string v1, "PROPERTY_BANNER_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Cannot expand a non banner ad"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "enableNativeAccelerometer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "transparent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "useCustomClose"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "transition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "orientation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "transitionDuration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "height"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "width"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "modal"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "allowOrientationChange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Context;

    if-eqz v13, :cond_d

    new-instance v14, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v14}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    if-eqz v1, :cond_1

    iput-object v1, v14, Lcom/millennialmedia/android/OverlaySettings;->urlToLoad:Ljava/lang/String;

    :cond_1
    if-eqz v11, :cond_2

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    int-to-long v15, v11

    iput-wide v15, v14, Lcom/millennialmedia/android/OverlaySettings;->creatorAdImplId:J

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v14, Lcom/millennialmedia/android/OverlaySettings;->canAccelerate:Z

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v14, v2}, Lcom/millennialmedia/android/OverlaySettings;->setIsTransparent(Z)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v14, v2}, Lcom/millennialmedia/android/OverlaySettings;->setUseCustomClose(Z)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v14, v5}, Lcom/millennialmedia/android/OverlaySettings;->setTransition(Ljava/lang/String;)V

    :cond_6
    if-eqz v12, :cond_7

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v14, Lcom/millennialmedia/android/OverlaySettings;->allowOrientationChange:Z

    :cond_7
    if-nez v6, :cond_e

    const-string v2, "forceOrientation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_8

    iput-object v2, v14, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    :cond_8
    if-eqz v8, :cond_9

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v14, Lcom/millennialmedia/android/OverlaySettings;->height:I

    :cond_9
    if-eqz v9, :cond_a

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v14, Lcom/millennialmedia/android/OverlaySettings;->width:I

    :cond_a
    if-eqz v10, :cond_b

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v14, Lcom/millennialmedia/android/OverlaySettings;->modal:Z

    :cond_b
    if-eqz v7, :cond_c

    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v14, v2, v3}, Lcom/millennialmedia/android/OverlaySettings;->setTransitionDurationInMillis(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getExpandExtrasIntent(Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v13, v1, v2}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpenedBroadCast(Landroid/content/Context;J)V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_e
    move-object v2, v6

    goto :goto_1
.end method

.method public open(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
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

    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "PROPERTY_EXPANDING"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "browser"

    invoke-static {v1, v0, v3, v4}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {v1, v2}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->setForceOrientation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->isForcingOrientation(Lcom/millennialmedia/android/MMJSResponse;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->setAllowOrientationChange(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public show(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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

    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startAdViewOverlayActivityWithData(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useCustomClose(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    const-string v1, "useCustomClose"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getAdViewOverlayView()Lcom/millennialmedia/android/AdViewOverlayView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->setUseCustomClose(Z)V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
