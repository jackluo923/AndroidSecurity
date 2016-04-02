.class public Lcom/adsdk/sdk/video/MediaController;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x1388

.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2


# instance fields
.field private buttonWidthPercent:D

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mFixed:Z

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

.field private mLeftTime:Landroid/widget/TextView;

.field private mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

.field private mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

.field private mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

.field private mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

.field private mReplayListener:Landroid/view/View$OnClickListener;

.field private mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

.field private mShowing:Z

.field private mTopBar:Landroid/widget/LinearLayout;

.field private mVideoData:Lcom/adsdk/sdk/video/VideoData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/video/VideoData;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide v0, 0x3fb70a3d70a3d70aL    # 0.09

    iput-wide v0, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    new-instance v0, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/MediaController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    new-instance v0, Lcom/adsdk/sdk/video/MediaController$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/MediaController$1;-><init>(Lcom/adsdk/sdk/video/MediaController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/adsdk/sdk/video/MediaController$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/MediaController$2;-><init>(Lcom/adsdk/sdk/video/MediaController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mFixed:Z

    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video info cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    new-instance v0, Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-direct {v0, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/video/MediaController;->buildNavigationBarView(Landroid/util/DisplayMetrics;)V

    const-string v0, "MediaController created"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/MediaController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/MediaController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnPauseListener;->onVideoPause()V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;->onVideoUnpause()V

    goto :goto_1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->requestLayout()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    goto :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    goto :goto_1

    :sswitch_7
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updateReplay()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0xd -> :sswitch_7
        -0xc -> :sswitch_6
        -0xb -> :sswitch_5
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_3
    .end sparse-switch
.end method

.method private initNavigationBarControllerView(ILandroid/util/DisplayMetrics;)V
    .locals 11

    const/4 v7, -0x2

    const/16 v5, -0xc

    const/16 v6, -0xd

    const/16 v10, 0x8

    const/4 v2, 0x0

    iget v3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showBottomNavigationBar:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showTopNavigationBar:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showNavigationBars:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v10}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->bottomNavigationBarBackground:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->bottomNavigationBarBackground:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/VideoData;->bottomNavigationBarBackground:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v7}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->pauseButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->pauseButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/VideoData;->pauseButtonImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->playButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->playButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/VideoData;->playButtonImage:Ljava/lang/String;

    const/16 v5, -0xb

    invoke-virtual {v0, v1, v4, v5}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showPauseButton:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->replayButtonImage:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->replayButtonImage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v4, v4, Lcom/adsdk/sdk/video/VideoData;->replayButtonImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v6}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_4
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showReplayButton:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->showTimer:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->icons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_7
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->icons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->icons:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/NavIconData;

    new-instance v4, Lcom/adsdk/sdk/video/NavIcon;

    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/adsdk/sdk/video/NavIcon;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/video/NavIconData;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v5, v3

    iget-wide v7, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v5, v7

    double-to-int v5, v5

    int-to-double v6, v3

    iget-wide v8, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v7}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v5}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v6}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setVisibility(I)V

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->topNavigationBarBackground:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->topNavigationBarBackground:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-object v2, v2, Lcom/adsdk/sdk/video/VideoData;->topNavigationBarBackground:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->fetchResource(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private refreshProgress()V
    .locals 5

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->setProgress()I

    move-result v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private setProgress()I
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit16 v0, v0, 0xe10

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v2, "0:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 4

    const/16 v3, -0xb

    const/16 v2, -0xc

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->containsResource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/video/ResourceManager;->containsResource(I)Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateReplay()V
    .locals 3

    const/16 v2, -0xd

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/ResourceManager;->containsResource(I)Z

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mResourceManager:Lcom/adsdk/sdk/video/ResourceManager;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected buildNavigationBarView(Landroid/util/DisplayMetrics;)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v7, -0x1

    const/16 v9, 0x10

    const/4 v8, 0x0

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/video/MediaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-double v2, v0

    const-wide v4, 0x3fbe76c8b4395810L    # 0.119

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x37

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v10, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v1}, Lcom/adsdk/sdk/video/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-double v3, v0

    const-wide v5, 0x3fbe76c8b4395810L    # 0.119

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v8, v2, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v1}, Lcom/adsdk/sdk/video/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v3, -0xff0100

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v3, v0

    iget-wide v5, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v4, v0

    iget-wide v6, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v3, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/adsdk/sdk/video/MediaController;->mReplayButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v3, v0

    iget-wide v5, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v4, v0

    iget-wide v6, p0, Lcom/adsdk/sdk/video/MediaController;->buttonWidthPercent:D

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setPadding(IIII)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v10}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mPauseButton:Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/adsdk/sdk/video/AutoResizeTextView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-static {v10}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v2, p1}, Lcom/adsdk/sdk/video/MediaController;->initNavigationBarControllerView(ILandroid/util/DisplayMetrics;)V

    return-void
.end method

.method public canToggle()Z
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    iget-boolean v0, v0, Lcom/adsdk/sdk/video/VideoData;->allowTapNavigationBars:Z

    return v0
.end method

.method public hide()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HIDE"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mFixed:Z

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->canToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Hide can toggle"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-eqz v0, :cond_0

    const-string v0, "Hide change visibility"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->removeMessages(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->doPauseResume()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x56

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnPauseListener;->onVideoPause()V

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->show(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    return-void
.end method

.method public replay()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnReplayListener;->onVideoReplay()V

    :cond_1
    return-void
.end method

.method public resizeTopBar(I)V
    .locals 3

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/2addr v0, p1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mTopBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->updatePausePlay()V

    return-void
.end method

.method public setOnPauseListener(Lcom/adsdk/sdk/video/MediaController$OnPauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    return-void
.end method

.method public setOnReplayListener(Lcom/adsdk/sdk/video/MediaController$OnReplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    return-void
.end method

.method public setOnUnpauseListener(Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    return-void
.end method

.method public show()V
    .locals 1

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 4

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHOW:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mFixed:Z

    :cond_0
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    const-string v0, "Change Visibility"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->removeMessages(I)V

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFixed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->canToggle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->show()V

    goto :goto_0
.end method
