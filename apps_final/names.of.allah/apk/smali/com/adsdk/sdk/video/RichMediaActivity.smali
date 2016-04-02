.class public Lcom/adsdk/sdk/video/RichMediaActivity;
.super Landroid/app/Activity;


# static fields
.field public static final TYPE_BROWSER:I = 0x0

.field public static final TYPE_INTERSTITIAL:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private mAd:Lcom/adsdk/sdk/AdResponse;

.field private mCanClose:Z

.field private mCheckProgressTask:Ljava/lang/Runnable;

.field private mCustomVideoView:Landroid/widget/VideoView;

.field private mCustomView:Landroid/widget/FrameLayout;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

.field protected mInterstitialAutocloseReset:Z

.field private mLoadingView:Landroid/widget/FrameLayout;

.field private mMediaController:Lcom/adsdk/sdk/video/MediaController;

.field mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

.field mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field mOnVideoClickListener:Landroid/view/View$OnClickListener;

.field mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

.field mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

.field mOnVideoSkipListener:Landroid/view/View$OnClickListener;

.field mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

.field mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

.field private final mOverlayClickListener:Landroid/view/View$OnClickListener;

.field private final mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field private mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

.field private mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

.field private mResult:Z

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSkipButton:Landroid/widget/ImageView;

.field protected mTimeTest:I

.field private mType:I

.field private mVideoData:Lcom/adsdk/sdk/video/VideoData;

.field private mVideoHeight:I

.field private mVideoLastPosition:I

.field private mVideoLayout:Landroid/widget/FrameLayout;

.field private mVideoTimeoutTimer:Ljava/util/Timer;

.field private mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

.field private mVideoWidth:I

.field private mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

.field private mWindowHeight:I

.field private mWindowWidth:I

.field marginArg:I

.field metrics:Landroid/util/DisplayMetrics;

.field paddingArg:I

.field skipButtonSizeLand:I

.field skipButtonSizePort:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x28

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->paddingArg:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->marginArg:I

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizePort:I

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$1;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$2;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$3;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$3;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$4;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$4;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$5;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$5;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$6;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$6;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$7;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$7;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$8;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$8;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$9;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$9;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$10;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$10;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$11;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$11;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$12;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$12;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$13;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$13;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$14;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$14;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoSkipListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$15;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$15;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$16;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$16;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/WebFrame;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    return-object v0
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    return-void
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    return-void
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/ResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/RichMediaActivity;->trackClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->notifyAdClick(Lcom/adsdk/sdk/AdResponse;)V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCheckProgressTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private createLocalAdListener()Lcom/adsdk/sdk/AdListener;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$17;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$17;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    return-object v0
.end method

.method private createMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$18;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$18;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    return-object v0
.end method

.method private initInterstitialFromBannerView()V
    .locals 12

    const/16 v4, 0x140

    const/4 v11, -0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v9, 0x1

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-eq v0, v9, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0x1e0

    :goto_0
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->createLocalAdListener()Lcom/adsdk/sdk/AdListener;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/BannerAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/AdResponse;IIZLcom/adsdk/sdk/AdListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v2, v3

    mul-float/2addr v2, v8

    add-float/2addr v2, v10

    float-to-int v2, v2

    int-to-float v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v10

    float-to-int v3, v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->createMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setMraidListener(Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v9, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    const/16 v3, -0x12

    invoke-virtual {v2, p0, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnInterstitialSkipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v9, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    const/16 v0, 0x1e0

    move v3, v4

    move v4, v0

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizePort:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1
.end method

.method private initRootLayout()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private initVideoView()V
    .locals 10

    const/16 v9, 0x11

    const-wide v7, 0x3fbe666666666666L    # 0.11875

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getVideoData()Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->width:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->height:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    if-gtz v0, :cond_d

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView;

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v3, v3, Lcom/adsdk/sdk/video/VideoData;->display:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/adsdk/sdk/video/SDKVideoView;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlay:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v0, p0, v4, v4, v4}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/video/WebFrame;->setEnableZoom(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v4}, Lcom/adsdk/sdk/video/WebFrame;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v1, v1, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayShowListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v2, v2, Lcom/adsdk/sdk/video/VideoData;->overlayWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v3, v3, Lcom/adsdk/sdk/video/VideoData;->overlayHeight:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v2, v0

    mul-double/2addr v2, v7

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v2, v0

    mul-double/2addr v2, v7

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_3
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v0, Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/video/MediaController;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/VideoData;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setMediaController(Lcom/adsdk/sdk/video/MediaController;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showNavigationBars:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    :cond_4
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->pauseEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnPauseListener(Lcom/adsdk/sdk/video/MediaController$OnPauseListener;)V

    :cond_5
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->resumeEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnUnpauseListener(Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;)V

    :cond_6
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->replayEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setOnReplayListener(Lcom/adsdk/sdk/video/MediaController$OnReplayListener;)V

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x7

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButton:Z

    if-eqz v0, :cond_17

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizeLand:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :goto_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    if-ne v0, v5, :cond_14

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_5
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v2, v2, Lcom/adsdk/sdk/video/VideoData;->skipButtonImage:Ljava/lang/String;

    const/16 v3, -0x12

    invoke-virtual {v0, p0, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_6
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoSkipListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    if-lez v0, :cond_16

    iput-boolean v4, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v0, v0, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget v1, v1, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    :cond_8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/adsdk/sdk/Const;->LOADING:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoClickThrough:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->startEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnStartListener(Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;)V

    :cond_a
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_b
    iput v4, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoPath(Ljava/lang/String;)V

    return-void

    :cond_c
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    int-to-float v1, v1

    invoke-static {v5, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    if-le v0, v1, :cond_e

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoWidth:I

    :cond_e
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoHeight:I

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOverlayView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->setMarkup(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-nez v0, :cond_11

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v2, v0

    mul-double/2addr v2, v7

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v0, 0x30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-nez v0, :cond_12

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    int-to-double v2, v0

    mul-double/2addr v2, v7

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_3

    :cond_12
    const/16 v0, 0x51

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_3

    :cond_13
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->skipButtonSizePort:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_4

    :cond_14
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    const/16 v3, -0x12

    invoke-virtual {v2, p0, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_16
    iput-boolean v5, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_17
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    goto/16 :goto_8

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoTimeEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    invoke-virtual {v2, v0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V

    goto/16 :goto_9
.end method

.method private initWebBrowserView(Z)V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Lcom/adsdk/sdk/video/WebFrame;

    invoke-direct {v0, p0, v1, v1, p1}, Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private notifyAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->notifyAdClick(Lcom/adsdk/sdk/AdResponse;)V

    return-void
.end method

.method private setOrientation()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setOrientationOldApi()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->isHorizontalOrientationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private trackClick(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/adsdk/sdk/video/TrackEvent;

    invoke-direct {v0}, Lcom/adsdk/sdk/video/TrackEvent;-><init>()V

    iput-object p1, v0, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish Activity type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ad Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :pswitch_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    iget-boolean v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->closeRunningAd(Lcom/adsdk/sdk/AdResponse;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDipSize(I)I
    .locals 3

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getRootLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const-string v0, "Closing custom view on back key pressed"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->onHideCustomView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    const/16 v2, -0x12

    invoke-virtual {v1, p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x12
        :pswitch_1
    .end packed-switch
.end method

.method public navigate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->notifyAdClick(Lcom/adsdk/sdk/AdResponse;)V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "RichMediaActivity onConfigurationChanged"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    const-string v0, "RichMediaActivity onCreate"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResult:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v0, 0x400

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->requestWindowFeature(I)Z

    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->metrics:Landroid/util/DisplayMetrics;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    const/16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichMediaActivity Window Size:("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWindowHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setVolumeControlStream(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "RICH_AD_DATA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    const-string v0, "url is null so do not load anything"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    :goto_1
    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    new-instance v0, Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mHandler:Lcom/adsdk/sdk/video/RichMediaActivity$ResourceHandler;

    invoke-direct {v0, p0, v2}, Lcom/adsdk/sdk/video/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initRootLayout()V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initWebBrowserView(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mWebBrowserView:Lcom/adsdk/sdk/video/WebFrame;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->loadUrl(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "RichMediaActivity onCreate done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->requestWindowFeature(I)Z

    goto :goto_1

    :cond_3
    const-string v0, "RICH_AD_DATA"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdResponse;

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCanClose:Z

    const-string v0, "RICH_AD_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mAd:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_3
    :pswitch_0
    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const-string v0, "Type video"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initVideoView()V

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    goto :goto_3

    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setOrientationOldApi()V

    :goto_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setOrientation()V

    goto :goto_4

    :pswitch_4
    const-string v0, "Type interstitial like banner"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->initInterstitialFromBannerView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/ResourceManager;->releaseInstance()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->destroy()V

    :cond_0
    const-string v0, "RichMediaActivity onDestroy"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "RichMediaActivity onDestroy done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onHideCustomView Hidding Custom View"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "onHideCustomView stop video"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    :cond_0
    const-string v0, "onHideCustomView calling callback"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Couldn\'t stop custom video view"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/RichMediaActivity;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "RichMediaActivity onPause"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "RichMediaActivity onPause done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    const-string v0, "RichMediaActivity onResume"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "RichMediaActivity onResume done"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoLastPosition:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;

    invoke-direct {v0, p0, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x124f80

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    const-string v0, " onShowCustomView"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const-string v0, " onShowCustomView Starting Video View"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$19;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$19;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mRootLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mCustomView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->setContentView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public playVideo()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichMediaActivity play video:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public replayVideo()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    :cond_0
    return-void
.end method
