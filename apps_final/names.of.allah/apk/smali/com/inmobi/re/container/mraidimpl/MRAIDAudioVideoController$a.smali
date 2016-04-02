.class Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/re/controller/util/AVPlayerListener;


# instance fields
.field final synthetic a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

.field final synthetic b:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/controller/JSController$PlayerProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$a;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$a;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Problem removing the audio relativelayout"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$a;->onComplete(Lcom/inmobi/re/controller/util/AVPlayer;)V

    return-void
.end method

.method public onPrepared(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 0

    return-void
.end method
