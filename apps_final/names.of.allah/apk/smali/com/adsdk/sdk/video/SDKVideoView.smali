.class public Lcom/adsdk/sdk/video/SDKVideoView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDisplayMode:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field public mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/adsdk/sdk/video/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

.field private mPlayWhenSurfaceReady:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceReady:Z

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTimeEventListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Vector",
            "<",
            "Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeEventRunnable:Ljava/lang/Runnable;

.field private mTimeEventThread:Ljava/lang/Thread;

.field private mTimeEventThreadDone:Landroid/os/ConditionVariable;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$1;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$2;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$3;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$3;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$4;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$4;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$5;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$5;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$6;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$6;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$7;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$7;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iput p3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    iput p4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDisplayMode:I

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/video/SDKVideoView;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    return-void
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    return-void
.end method

.method static synthetic access$16(Lcom/adsdk/sdk/video/SDKVideoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    return-void
.end method

.method static synthetic access$17(Lcom/adsdk/sdk/video/SDKVideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    return v0
.end method

.method static synthetic access$18(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$19(Lcom/adsdk/sdk/video/SDKVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$20(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$21(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$22(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/SDKVideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    return v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoDisplaySize()V

    return-void
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/video/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private initVideoView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    iput-boolean v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->requestFocus()Z

    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    const-string v0, "Open Video not starting until surface created"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$8;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$8;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iput-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    :cond_1
    return-void
.end method

.method private setVideoDisplaySize()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDKVideoView setVideoDisplaySize View Size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Video size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") surface:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDisplayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void

    :cond_3
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    goto :goto_0
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->toggle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const-string v0, "Video view detached from Window"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_4

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->pause()V

    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    goto :goto_1

    :cond_3
    const/16 v0, 0x56

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->pause()V

    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/adsdk/sdk/video/SDKVideoView;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/adsdk/sdk/video/SDKVideoView;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setMeasuredDimension(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDKVideoView onMeasure video size ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") surface:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Setting size:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->onPause()V

    :cond_0
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Lcom/adsdk/sdk/video/MediaController;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    :cond_0
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnStartListener(Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    return-void
.end method

.method public setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    return-void
.end method

.method public start()V
    .locals 4

    const/4 v3, 0x3

    iput v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->onStart()V

    :cond_0
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;->onVideoStart()V

    :cond_1
    iput v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    :cond_1
    return-void
.end method
