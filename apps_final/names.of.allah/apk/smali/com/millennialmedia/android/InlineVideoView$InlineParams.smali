.class Lcom/millennialmedia/android/InlineVideoView$InlineParams;
.super Ljava/lang/Object;


# instance fields
.field autoPlay:Z

.field bodyHeight:I

.field bodyWidth:I

.field cachedVideoID:Ljava/lang/String;

.field cachedVideoURI:Ljava/lang/String;

.field currentPosition:I

.field goingFullScreen:Z

.field height:I

.field isCompleted:Z

.field isInitialPlayBack:Z

.field isPlayingStreaming:Z

.field isStopped:Z

.field originalOrientation:I

.field scaleFactor:F

.field showControls:Z

.field streamVideoURI:Ljava/lang/String;

.field touchCallBack:Ljava/lang/String;

.field width:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    :cond_0
    const-string v0, "y"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "y"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    :cond_1
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    :cond_2
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    :cond_3
    const-string v0, "streamVideoURI"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    const-string v0, "cachedVideoURI"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    const-string v0, "cachedVideoID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    const-string v0, "autoPlay"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "autoPlay"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    :cond_4
    const-string v0, "showControls"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "showControls"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

    :cond_5
    const-string v0, "bodyWidth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "bodyWidth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyWidth:I

    :cond_6
    const-string v0, "bodyHeight"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "bodyHeight"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyHeight:I

    :cond_7
    const-string v0, "touchCallback"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    return-void
.end method

.method static getInlineParams(Ljava/lang/String;)Lcom/millennialmedia/android/InlineVideoView$InlineParams;
    .locals 2

    new-instance v0, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    const-class v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, p0, v1}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    return-object v0
.end method


# virtual methods
.method inflateFromGson(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    const-class v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyWidth:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyWidth:I

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyHeight:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyHeight:I

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    iput-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    iget v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

    iput v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

    iget-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gson*****"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PARAMS*****"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->bodyHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
