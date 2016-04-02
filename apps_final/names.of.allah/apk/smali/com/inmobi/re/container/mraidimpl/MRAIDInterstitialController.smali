.class public Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;
.super Ljava/lang/Object;


# static fields
.field protected static final INT_BACKGROUND_ID:I = 0xe0

.field public static final INT_CLOSE_BUTTON:I = 0xe1

.field public static isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field private b:Landroid/app/Activity;

.field private c:J

.field private d:I

.field public lockOrientationValueForInterstitial:Z

.field public mMsgOnInterstitialClosed:Landroid/os/Message;

.field public mMsgOnInterstitialShown:Landroid/os/Message;

.field public mSensorDisplay:Landroid/view/Display;

.field public orientationValueForInterstitial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->c:J

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->c:J

    return-wide v0
.end method


# virtual methods
.method public animateAndDismissWebview()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-wide v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->c:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$c;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$c;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public changeContentAreaForInterstitials(J)V
    .locals 8

    const/high16 v6, 0x42480000    # 50.0f

    :try_start_0
    iput-wide p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->c:J

    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getWebviewBgColor()I

    move-result v2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->d:I

    invoke-virtual {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleOrientationForInterstitial()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/inmobi/re/container/IMWebView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/inmobi/re/container/IMWebView;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getCustomClose()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/inmobi/re/container/CustomView;

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v6

    sget-object v7, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v1, v5, v6, v7}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    :goto_0
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xe1

    invoke-virtual {v1, v5}, Lcom/inmobi/re/container/CustomView;->setId(I)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$b;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$b;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$a;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$a;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Lcom/inmobi/re/container/CustomView;

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v6

    sget-object v7, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v1, v5, v6, v7}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Failed showing interstitial ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public dismissWebview()V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    new-instance v3, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;

    invoke-direct {v3, p0, v1, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$d;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleInterstitialClose()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    sget-object v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    return-void
.end method

.method public handleOrientationForInterstitial()V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/re/container/IMWebView;->lockExpandOrientation(Landroid/app/Activity;ZLjava/lang/String;)V

    return-void
.end method

.method public resetContentsForInterstitials()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->d:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->releaseAllPlayers()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->animateAndDismissWebview()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "window.mraidview.unRegisterOrientationListener()"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Failed to close the interstitial ad"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->dismissWebview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->b:Landroid/app/Activity;

    :cond_0
    return-void
.end method
