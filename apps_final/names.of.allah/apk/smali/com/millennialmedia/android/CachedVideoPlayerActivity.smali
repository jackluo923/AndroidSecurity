.class Lcom/millennialmedia/android/CachedVideoPlayerActivity;
.super Lcom/millennialmedia/android/VideoPlayerActivity;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final STATIC_HUD_ID:I = 0x192

.field private static final STATIC_HUD_SECONDS_ID:I = 0x191


# instance fields
.field private buttonsLayout:Landroid/widget/RelativeLayout;

.field private hasCountdownHud:Z

.field hasLoadedCompletionUrl:Z

.field hasWebOverlay:Z

.field private hudSeconds:Landroid/widget/TextView;

.field private hudStaticText:Landroid/widget/TextView;

.field private lastVideoPosition:I

.field private logTimeAndEventhandler:Landroid/os/Handler;

.field private mWebView:Lcom/millennialmedia/android/MMWebView;

.field private videoAd:Lcom/millennialmedia/android/VideoAd;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/VideoAd;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    return-object v0
.end method

.method private calculateHudSecondsText()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->duration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private dismissAfter(J)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    new-instance v1, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private fadeButton(Lcom/millennialmedia/android/VideoImage;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p1, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v2, p1, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v1, p1, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private fadeButtons()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    iget-boolean v1, v0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v1, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    :cond_0
    iget-object v1, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v0, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move v4, v3

    :goto_1
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    const-string v1, "Button: %d alpha: %f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x1

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private hideHud()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initHudSeconds(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->calculateHudSecondsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x0

    const/16 v2, 0x192

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initHudStaticText(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const-string v1, " seconds remaining ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initWebOverlay()V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Lcom/millennialmedia/android/MMWebView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    iget-wide v2, v2, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    const/16 v1, 0x19d

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->setId(I)V

    new-instance v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$3;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    new-instance v2, Lcom/millennialmedia/android/InterstitialWebViewClient;

    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-direct {v2, v0, v3}, Lcom/millennialmedia/android/InterstitialWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    return-void
.end method

.method private showHud()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v1, v1, Lcom/millennialmedia/android/VideoAd;->duration:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected canFadeButtons()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->canFadeButtons()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v3, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v2, v3}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v4, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_3

    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    iget v3, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v4, v0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v0, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected enableButtons()V
    .locals 3

    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->enableButtons()V

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected errorPlayVideo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:MMJS.cachedVideo.setError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v9

    :pswitch_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButton(Lcom/millennialmedia/android/VideoImage;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v4, v0, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButton(Lcom/millennialmedia/android/VideoImage;)V

    const-string v1, "Beginning animation to visibility. Fade duration: %d Button: %d Time: %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    if-le v4, v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->logBeginEvent()V

    :cond_2
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoLogEvent;

    if-eqz v0, :cond_3

    iget-wide v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    iget v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-ltz v3, :cond_3

    iget-wide v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    int-to-long v7, v4

    cmp-long v3, v5, v7

    if-gez v3, :cond_3

    move v3, v2

    :goto_3
    iget-object v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    iget-object v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iput v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    :cond_5
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:MMJS.cachedVideo.updateVideoSeekTime("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v2, v4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->duration:J

    int-to-long v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected initLayout()Landroid/widget/RelativeLayout;
    .locals 11

    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initLayout()Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setRequestedOrientation(I)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initHudStaticText(Landroid/view/ViewGroup;)V

    invoke-direct {p0, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initHudSeconds(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->showHud()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initWebOverlay()V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v6, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v7}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\.[^\\.]*$"

    const-string v9, ".dat"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget v2, v0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v6, v2}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setId(I)V

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-boolean v2, v0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    if-eqz v2, :cond_6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_4
    iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;

    invoke-direct {v7, p0, v6, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Landroid/widget/ImageButton;Lcom/millennialmedia/android/VideoImage;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    iput-object v2, v0, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_5
    iget-wide v6, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    iget-wide v9, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    add-long/2addr v7, v9

    iget-wide v9, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v7, v9

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v7}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\.[^\\.]*$"

    const-string v9, ".dat"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v7, "Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, v0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, v0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, v0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, v0, Lcom/millennialmedia/android/VideoImage;->position:I

    iget v8, v0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v7, v0, Lcom/millennialmedia/android/VideoImage;->position2:I

    iget v8, v0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v7, v0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    iget v8, v0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    iget v9, v0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    iget v10, v0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    :cond_7
    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_a
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_b
    move-object v3, v0

    goto/16 :goto_1
.end method

.method protected initSavedInstance(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->initSavedInstance(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v1, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasBottomBar:Z

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "videoAd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    const-string v0, "shouldShowBottomBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasBottomBar:Z

    const-string v0, "lastVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    const-string v0, "currentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    goto :goto_0
.end method

.method loadUrlForMraidInjection(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onCompletion(Landroid/media/MediaPlayer;)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoPlayerOnCompletion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/millennialmedia/android/AdProperties;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/AdProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->adProperties:Lcom/millennialmedia/android/AdProperties;

    const-string v0, "Is Cached Ad"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const-string v0, "Error while playing, %d - %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/millennialmedia/android/VideoPlayerActivity;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->onResume()V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->bringToFront()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "videoAd"

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->onStart()V

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->isVideoCompleted:Z

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButtons()V

    :cond_0
    return-void
.end method

.method protected pauseVideo()V
    .locals 2

    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideo()V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected playVideo(I)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    const-string v1, "Sorry. There was a problem playing the video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    goto :goto_0
.end method

.method protected restartVideo()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v2, v1, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    iput v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    iget-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    if-eqz v0, :cond_3

    iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    cmp-long v3, v3, v12

    if-lez v3, :cond_2

    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v3, v11, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    cmp-long v3, v3, v12

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v3, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v5, v7

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->showHud()V

    :cond_6
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->restartVideo()V

    return-void
.end method

.method protected resumeVideo()V
    .locals 10

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->duration:J

    iget v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v6

    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    iget v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    const-wide/16 v2, 0x1f4

    :cond_2
    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v7, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    iget-wide v6, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    add-long/2addr v2, v8

    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v2, v8

    invoke-virtual {v7, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V

    goto :goto_0

    :cond_5
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    return-void

    :cond_6
    move-wide v2, v4

    goto :goto_2
.end method

.method protected videoPlayerOnCompletion(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dispatchButtonClick(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->logEndEvent()V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButtons()V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->hasEndCard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->bringToFront()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismissAfter(J)V

    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    goto :goto_1
.end method
