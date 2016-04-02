.class public Lcom/inmobi/re/controller/util/AVPlayer;
.super Landroid/widget/VideoView;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final MINIMAL_LAYOUT_PARAM:I = 0x1

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:I

.field private static k:Ljava/lang/String;


# instance fields
.field private a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

.field private b:Lcom/inmobi/re/controller/util/AVPlayerListener;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/widget/RelativeLayout;

.field private l:Z

.field private m:Z

.field private n:Lcom/inmobi/re/container/IMWebView;

.field private o:Landroid/graphics/Bitmap;

.field private p:I

.field public pseudoPause:Z

.field private q:I

.field private r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field private s:Landroid/media/MediaPlayer;

.field private t:Z

.field private u:Landroid/view/ViewGroup;

.field private v:Lcom/inmobi/re/controller/JSController$Dimensions;

.field private w:Lcom/inmobi/re/controller/util/AVPlayer$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "play"

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->f:Ljava/lang/String;

    const-string v0, "pause"

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->g:Ljava/lang/String;

    const-string v0, "ended"

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->h:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/inmobi/re/controller/util/AVPlayer;->i:I

    const/4 v0, 0x2

    sput v0, Lcom/inmobi/re/controller/util/AVPlayer;->j:I

    const-string v0, "Loading. Please Wait.."

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    iput v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->l:Z

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$b;

    invoke-direct {v0, p0}, Lcom/inmobi/re/controller/util/AVPlayer$b;-><init>(Lcom/inmobi/re/controller/util/AVPlayer;)V

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->w:Lcom/inmobi/re/controller/util/AVPlayer$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setZOrderOnTop(Z)V

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setDrawingCacheEnabled(Z)V

    iput-object p2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setFocusableInTouchMode(Z)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/controller/util/AVPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    return p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v1, v0

    invoke-static {v4}, Lcom/inmobi/commons/uid/UIDHelper;->byteToHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-byte v3, v1, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->showControl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setMediaController(Landroid/widget/MediaController;)V

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaErrorEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaTimeUpdateEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/controller/util/AVPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/controller/util/AVPlayer;->a(II)V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaCloseEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p0}, Lcom/inmobi/re/container/IMWebView;->mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/controller/util/AVPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inmobi/re/controller/util/AVPlayer;)I
    .locals 1

    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/re/controller/util/AVPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    return p1
.end method

.method private b()V
    .locals 1

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->e()V

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setVideoPath(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->a()V

    invoke-virtual {p0, p0}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0, p0}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0, p0}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private b(I)V
    .locals 5

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    :cond_0
    iput p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    const/high16 v0, 0x3f800000    # 1.0f

    rsub-int/lit8 v1, p1, 0x65

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide v3, 0x4059400000000000L    # 101.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    sub-float/2addr v0, v1

    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->g()V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Player has been released. Cannot set the volume."

    const-string v2, "setVolume"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaTrackingEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->SHOWING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->m:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->COMPLETED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    :goto_0
    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->mute()V

    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    goto :goto_1
.end method

.method private d()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackgroundColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMAVPlayer: unable to remove view"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaVolumeChangeEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->w:Lcom/inmobi/re/controller/util/AVPlayer$b;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer$b;->sendEmptyMessage(I)Z

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->w:Lcom/inmobi/re/controller/util/AVPlayer$b;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer$b;->removeMessages(I)V

    return-void
.end method

.method private j()Z
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAutoPlay()Z
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-boolean v0, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->autoPlay:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackGroundLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayDimensions()Lcom/inmobi/re/controller/JSController$Dimensions;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->v:Lcom/inmobi/re/controller/JSController$Dimensions;

    return-object v0
.end method

.method public getPlayProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    return-object v0
.end method

.method public getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    return-object v0
.end method

.method public getPropertyID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iget-object v0, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    return v0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setVisibility(I)V

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMAVPlayer: unable to hide video"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInlineVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->l:Z

    return v0
.end method

.method public mute()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->g()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMAVPlayer: unable to set volume (mute)"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "AVPlayer-> onCompletion"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->COMPLETED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->m:Z

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->i()V

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "IMAvplayer onCompletion exception "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->exitOnComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVPlayer-> Player error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->f()V

    invoke-virtual {p0, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/re/controller/util/AVPlayerListener;->onError(Lcom/inmobi/re/controller/util/AVPlayer;)V

    :cond_0
    sget v0, Lcom/inmobi/re/controller/util/AVPlayer;->i:I

    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    sget v0, Lcom/inmobi/re/controller/util/AVPlayer;->j:I

    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->a(I)V

    return v3
.end method

.method public onIMVisibilityChanged(Z)V
    .locals 3

    const-string v0, "[InMobi]-[RE]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVPlayer-> onIMVisibilityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->play()V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->pause()V

    :cond_2
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-super {p0, v0}, Landroid/widget/VideoView;->seekTo(I)V

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "AVPlayer-> onPrepared"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->f()V

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/re/controller/util/AVPlayerListener;->onPrepared(Lcom/inmobi/re/controller/util/AVPlayer;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->l:Z

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->c()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMAVPlayer: unable to set volume"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->onIMVisibilityChanged(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->onIMVisibilityChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMAVPlayer: onWindowVisibilityChanged: Something went wrong"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->i()V

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "AVPlayer-> pause"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public play()V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->b()V

    return-void
.end method

.method public releasePlayer(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/controller/util/AVPlayer$a;

    invoke-direct {v1, p0}, Lcom/inmobi/re/controller/util/AVPlayer$a;-><init>(Lcom/inmobi/re/controller/util/AVPlayer;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    monitor-exit p0

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->q:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->a(ZI)V

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->i()V

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->stopPlayback()V

    invoke-super {p0, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->d()V

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/re/controller/util/AVPlayerListener;->onComplete(Lcom/inmobi/re/controller/util/AVPlayer;)V

    iput-object v2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1
.end method

.method public seekPlayer(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->getDuration()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/inmobi/re/controller/util/AVPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iput-boolean p1, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->autoPlay:Z

    :cond_0
    return-void
.end method

.method public setBackGroundLayout(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->u:Landroid/view/ViewGroup;

    return-void
.end method

.method public setListener(Lcom/inmobi/re/controller/util/AVPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->b:Lcom/inmobi/re/controller/util/AVPlayerListener;

    return-void
.end method

.method public setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xa

    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    iput-object p2, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/inmobi/re/controller/JSController$PlayerProperties;->audioMuted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->o:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMAVPlayer: unable to get video bitmap"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlayDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/controller/util/AVPlayer;->v:Lcom/inmobi/re/controller/JSController$Dimensions;

    return-void
.end method

.method public setVolume(I)V
    .locals 2

    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/inmobi/re/controller/util/AVPlayer;->b(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->SHOWING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setVisibility(I)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->n:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/controller/util/AVPlayer$c;

    invoke-direct {v1, p0}, Lcom/inmobi/re/controller/util/AVPlayer$c;-><init>(Lcom/inmobi/re/controller/util/AVPlayer;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->seekPlayer(I)V

    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->r:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->m:Z

    invoke-direct {p0}, Lcom/inmobi/re/controller/util/AVPlayer;->h()V

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "AVPlayer-> start playing"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->l:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unMute()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->s:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/inmobi/re/controller/util/AVPlayer;->p:I

    invoke-direct {p0, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(I)V

    :cond_0
    return-void
.end method
