.class public Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field public audioPlayerList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field public audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

.field public videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

.field public videoPlayerList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field public videoValidateWidth:I


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V
    .locals 4

    const v0, -0x383cb080    # -99999.0f

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->isInlineVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    iget v3, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    if-ne v3, v1, :cond_1

    iget v3, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    if-ne v3, v1, :cond_1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    const/4 v0, 0x3

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p2, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v2, "Too many audio players"

    const-string v3, "playAudio"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p3, v1}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v0

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v4, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, p3, v4}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v0, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p3, v1}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p3, v1}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/inmobi/re/controller/JSController$Dimensions;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    sget-object v3, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$d;->a:[I

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    :goto_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-direct {p0, v1, p4}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-direct {p0, v1, p4}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->doLoop()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    :cond_3
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-direct {p0, v1, p4}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Lcom/inmobi/re/controller/util/AVPlayer;Lcom/inmobi/re/controller/JSController$Dimensions;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->start()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v2, "Request must specify a valid URL"

    const-string v3, "playVideo"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v0, p3, v2}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/util/Hashtable;Lcom/inmobi/re/controller/util/AVPlayer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ">;",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Request must specify a valid URL"

    const-string v2, "playVideo"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->hide()V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v1, Lcom/inmobi/re/controller/util/AVPlayer;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, p3, v2}, Lcom/inmobi/re/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView;)V

    iput-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/re/controller/JSController$Dimensions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V

    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hidePlayers()V
    .locals 5

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "MRAIDAudioVideoController: hiding all players"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/re/controller/util/AVPlayer;

    sget-object v3, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$d;->a:[I

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->pause()V

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-direct {p0, v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/util/Hashtable;Lcom/inmobi/re/controller/util/AVPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-direct {p0, v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/util/Hashtable;Lcom/inmobi/re/controller/util/AVPlayer;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 6

    const/4 v4, 0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p2}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    iget-object v3, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Request must specify a valid URL"

    const-string v2, "playAudio"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1020002

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$g;

    invoke-direct {v3, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$g;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->requestFocus()Z

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v2, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$c;

    invoke-direct {v2, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$c;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v2, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$a;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$a;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/controller/JSController$PlayerProperties;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setListener(Lcom/inmobi/re/controller/util/AVPlayerListener;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->play()V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/inmobi/re/controller/JSController$Dimensions;

    const-string v2, "[InMobi]-[RE]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Final dimensions: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expand_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-direct {p0, v3, v2, p2, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/inmobi/re/controller/JSController$Dimensions;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3, v5}, Lcom/inmobi/re/container/IMWebView;->setBusy(Z)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getProperties()Lcom/inmobi/re/controller/JSController$PlayerProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/re/controller/JSController$Dimensions;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v3, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    iput-boolean v5, v0, Lcom/inmobi/re/controller/util/AVPlayer;->pseudoPause:Z

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->show()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3, v0, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/re/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setPlayDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v2

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$b;

    invoke-direct {v2, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$b;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->requestFocus()Z

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$e;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$e;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$f;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$f;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setListener(Lcom/inmobi/re/controller/util/AVPlayerListener;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->play()V

    goto/16 :goto_0

    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    iget v4, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v4, v4, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v4, v4, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    if-nez v4, :cond_4

    iget v4, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_3
    const/4 v1, 0x3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v2

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v3}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget v4, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v5, v5, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v5, v5, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v5, v5, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, v1, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    iget-object v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v4, v4, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v4, v4, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    add-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3
.end method

.method public releaseAllPlayers()V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    sget-boolean v5, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {v0, v5}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v5, "Unable to release player"

    invoke-static {v0, v5}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v3, "IMwebview release all players "

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    sget-boolean v5, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {v0, v5}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v5, "Unable to release player"

    invoke-static {v0, v5}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v3, "IMwebview release all players "

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    sput-boolean v2, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    return-void
.end method

.method public validateVideoDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V
    .locals 2

    iget v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    iget v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    iget v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    iget v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    return-void
.end method
