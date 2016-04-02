.class Lcom/millennialmedia/android/InlineVideoView;
.super Landroid/widget/VideoView;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ANCHOR_IN_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII="

.field private static final ANCHOR_OUT_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC"

.field static final TIME_TO_UPDATE_SEEK_JS:I = 0x1f4


# instance fields
.field private duration:I

.field inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

.field mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

.field mmLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMLayout;",
            ">;"
        }
    .end annotation
.end field

.field transFix:Lcom/millennialmedia/android/InlineVideoView$TransparentFix;

.field transparentHandler:Landroid/os/Handler;

.field videoHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMLayout;)V
    .locals 1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$4;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Landroid/os/Handler;

    const v0, 0x86c5ad

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setId(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setFocusable(Z)V

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->destroyOtherInlineVideo(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->downloadVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/InlineVideoView;)I
    .locals 1

    iget v0, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    return v0
.end method

.method static synthetic access$202(Lcom/millennialmedia/android/InlineVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    return p1
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTimeFinal()V

    return-void
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->makeTransparent()V

    return-void
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/InlineVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V

    return-void
.end method

.method private createOnCompletionListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$6;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnErrorListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$5;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnPreparedListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$7;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnTouchListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$2;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private createVideoHandler()Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$3;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private downloadCacheVideo()V
    .locals 1

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$1;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->downloadVideo()V

    goto :goto_0
.end method

.method private downloadVideo()V
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/VideoAd;->downloadVideoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private getVideoUri()Landroid/net/Uri;
    .locals 2

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->hasCachedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoAd;->getVideoUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCachedVideo()Z
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoAd;->hasVideoFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initInternalInlineVideo()V
    .locals 4

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->createVideoHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setClickable(Z)V

    invoke-direct {p0, p0}, Lcom/millennialmedia/android/InlineVideoView;->createOnErrorListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-direct {p0, p0}, Lcom/millennialmedia/android/InlineVideoView;->createOnCompletionListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-direct {p0, p0}, Lcom/millennialmedia/android/InlineVideoView;->createOnPreparedListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/InlineVideoView$MediaController;-><init>(Lcom/millennialmedia/android/InlineVideoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->show()V

    :cond_1
    invoke-direct {p0, p0}, Lcom/millennialmedia/android/InlineVideoView;->createOnTouchListener(Lcom/millennialmedia/android/InlineVideoView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "Finished inserting inlineVideo player"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    return-void
.end method

.method private makeTransparent()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private removeFromParent()V
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private removeKeyboardFocusViewJira1642()V
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->requestFocus()Z

    return-void
.end method

.method private resumeInternal(Z)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private setInlineVideoParams(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    return-void
.end method

.method private updateVideoSeekTime()V
    .locals 3

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTime(D)V

    :cond_0
    return-void
.end method

.method private updateVideoSeekTime(D)V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    if-nez v0, :cond_0

    const-string v1, "MMLayout weak reference broken"

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:MMJS.inlineVideo.updateVideoSeekTime("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private updateVideoSeekTimeFinal()V
    .locals 2

    iget v0, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTime(D)V

    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized adjustVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/InlineVideoView;->setAdjustVideoParams(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    const-string v0, "Called initInlineVideo inside reposition section code"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->addInlineVideo()V

    :cond_0
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lp height = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getGsonState()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInlineParams()Lcom/millennialmedia/android/InlineVideoView$InlineParams;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    return-object v0
.end method

.method declared-synchronized initInlineVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->downloadCacheVideo()V

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->initInternalInlineVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "The videoURI attribute was not specified on the video marker div."

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isPlayingStreaming()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->hasCachedVideo()Z

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

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/VideoView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    invoke-virtual {p1}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/VideoView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, p1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->gson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->inflateFromGson(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/VideoView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v2

    iput v2, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getGsonState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->gson:Ljava/lang/String;

    return-object v1
.end method

.method pauseVideo()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->pause()V

    :cond_1
    return-void
.end method

.method playVideo()V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isStopped:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isStopped:Z

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    goto :goto_0
.end method

.method removeVideo()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->removeFromParent()V

    return-void
.end method

.method resumeVideo()V
    .locals 4

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method setAdjustVideoParams(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    return-void
.end method

.method setVideoSource(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->makeTransparent()V

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->removeKeyboardFocusViewJira1642()V

    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public startInternal()V
    .locals 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->start()V

    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_1
    return-void
.end method

.method stopVideo()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isStopped:Z

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->addBlackView()V

    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
