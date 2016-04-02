.class Lcom/millennialmedia/android/VideoPlayerActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final CONTROLS_ID:I = 0x4fe0613

.field private static final END_VIDEO:Ljava/lang/String; = "endVideo"

.field protected static final MESSAGE_CHECK_PLAYING_VIDEO:I = 0x4

.field protected static final MESSAGE_DELAYED_BUTTON:I = 0x3

.field protected static final MESSAGE_INACTIVITY_ANIMATION:I = 0x1

.field protected static final MESSAGE_ONE_SECOND_CHECK:I = 0x2

.field protected static final MESSAGE_SET_TRANSPARENCY:I = 0x5

.field private static final RESTART_VIDEO:Ljava/lang/String; = "restartVideo"


# instance fields
.field adProperties:Lcom/millennialmedia/android/AdProperties;

.field blackView:Landroid/view/View;

.field protected currentVideoPosition:I

.field protected hasBottomBar:Z

.field private hasFocus:Z

.field isPaused:Z

.field isUserPausing:Z

.field protected isVideoCompleted:Z

.field private isVideoCompletedOnce:Z

.field lastOverlayOrientation:Ljava/lang/String;

.field protected mVideoView:Landroid/widget/VideoView;

.field pausePlay:Landroid/widget/Button;

.field progBar:Landroid/widget/ProgressBar;

.field redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

.field private shouldSetUri:Z

.field transparentHandler:Landroid/os/Handler;

.field videoLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    iput v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$6;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->isActionable(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    return p1
.end method

.method private initBottomBar(Landroid/widget/RelativeLayout;)V
    .locals 8

    const/4 v7, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x4fe0613

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x1080025

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v5, 0x1080023

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    const v4, 0x1080038

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xe

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0xb

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$3;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$3;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    new-instance v4, Lcom/millennialmedia/android/VideoPlayerActivity$4;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$4;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/millennialmedia/android/VideoPlayerActivity$5;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$5;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v5, 0x1080024

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initRedirectListener()V
    .locals 3

    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoPlayerActivity$1;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    iget-wide v1, v1, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

    iput-wide v1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    return-void
.end method

.method private initVideoListeners()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private initWindow()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private isActionSupported(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "restartVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "endVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActionable(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mmsdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/millennialmedia/android/VideoPlayerActivity;->isActionSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "Unrecognized mmsdk:// URI %s."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private makeTransparent()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->transparentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private startVideo(I)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->makeTransparent()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected canFadeButtons()Z
    .locals 1

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dismiss()V
    .locals 1

    const-string v0, "Video ad player closed"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->finish()V

    return-void
.end method

.method dispatchButtonClick(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Button Click with URL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iput-object p1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isHandlingMMVideo(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpRedirection;->startActivityFromUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    goto :goto_0
.end method

.method protected enableButtons()V
    .locals 0

    return-void
.end method

.method protected endVideo()V
    .locals 1

    const-string v0, "End Video."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->dismiss()V

    :cond_0
    return-void
.end method

.method protected errorPlayVideo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    const-string v1, "Sorry. There was a problem playing the video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    return-void
.end method

.method protected initLayout()Landroid/widget/RelativeLayout;
    .locals 9

    const/16 v8, 0xd

    const/4 v7, -0x2

    const/high16 v6, -0x1000000

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x19a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    const/16 v4, 0x19b

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setId(I)V

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v6}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initVideoListeners()V

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->videoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const v3, 0x4fe0613

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initBottomBar(Landroid/widget/RelativeLayout;)V

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->progBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object v0
.end method

.method protected initSavedInstance(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "videoCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    const-string v0, "videoCompletedOnce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    const-string v0, "videoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    const-string v0, "hasBottomBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    const-string v0, "shouldSetUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    :cond_0
    return-void
.end method

.method protected isPlayable()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V
    .locals 2

    const-string v0, "Cached video button event logged"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->pausePlay:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    const-string v0, "Video player on complete"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Setting up the video player"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initWindow()V

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->initSavedInstance(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initRedirectListener()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    const-string v0, "VideoPlayer - onPause"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideo()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string v0, "Video Prepared"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "currentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    const-string v0, "isVideoCompleted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    const-string v0, "isVideoCompletedOnce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    const-string v0, "hasBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    const-string v0, "shouldSetUri"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    const-string v0, "isUserPausing"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    const-string v0, "isPaused"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->blackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    const-string v0, "VideoPlayer - onResume"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "currentVideoPosition"

    iget v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isVideoCompleted"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isVideoCompletedOnce"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompletedOnce:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "hasBottomBar"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasBottomBar:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "shouldSetUri"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isUserPausing"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isPaused"

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->hasFocus:Z

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isPaused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    :cond_0
    return-void
.end method

.method protected pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const-string v0, "Video paused"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->v(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected pauseVideoByUser()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideo()V

    return-void
.end method

.method protected playVideo(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isUserPausing:Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playVideo path: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "no name or null videoview"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->isVideoCompleted:Z

    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->shouldSetUri:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->startVideo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method processVideoPlayerUri(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/VideoPlayerActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity$2;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected restartVideo()V
    .locals 1

    const-string v0, "Restart Video."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    :cond_0
    return-void
.end method

.method protected resumeVideo()V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity;->currentVideoPosition:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    :cond_0
    return-void
.end method

.method protected setButtonAlpha(Landroid/widget/ImageButton;F)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
