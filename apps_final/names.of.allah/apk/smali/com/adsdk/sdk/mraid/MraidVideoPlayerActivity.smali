.class public Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;
.super Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;

# interfaces
.implements Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;


# static fields
.field private static final VIDEO_CLASS_EXTRAS_KEY:Ljava/lang/String; = "video_view_class_name"

.field static final VIDEO_URL:Ljava/lang/String; = "video_url"


# instance fields
.field private mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method private broadcastVastInterstitialAction(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "video_view_class_name"

    const-string v2, "mraid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "video_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static createIntentVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createVideoView()Lcom/adsdk/sdk/mraid/BaseVideoView;
    .locals 2

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "mraid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidVideoView;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/adsdk/sdk/mraid/MraidVideoView;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/adsdk/sdk/mraid/BaseVideoView$BaseVideoViewListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.mopub.action.interstitial.fail"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->finish()V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity$1;-><init>(Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static startMraid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->createIntentMraid(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MraidVideoPlayerActivity"

    const-string v1, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static startVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p0 .. p9}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->createIntentVast(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MoPub"

    const-string v1, "Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->createVideoView()Lcom/adsdk/sdk/mraid/BaseVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->hideInterstitialCloseButton()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseVideoView;->start()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseVideoView;->onPause()V

    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->onResume()V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->mVideoView:Lcom/adsdk/sdk/mraid/BaseVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseVideoView;->onResume()V

    return-void
.end method

.method public showCloseButton()V
    .locals 0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->showInterstitialCloseButton()V

    return-void
.end method

.method public videoClicked()V
    .locals 1

    const-string v0, "com.mopub.action.interstitial.click"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    return-void
.end method

.method public videoCompleted(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->showInterstitialCloseButton()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->finish()V

    :cond_0
    return-void
.end method

.method public videoError(Z)V
    .locals 2

    const-string v0, "MoPub"

    const-string v1, "Error: video can not be played."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->showInterstitialCloseButton()V

    const-string v0, "com.mopub.action.interstitial.fail"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->broadcastInterstitialAction(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidVideoPlayerActivity;->finish()V

    :cond_0
    return-void
.end method
