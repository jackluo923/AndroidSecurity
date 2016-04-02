.class Lcom/inmobi/re/controller/util/AVPlayer$b;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/re/controller/util/AVPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/re/controller/util/AVPlayer$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->a(Lcom/inmobi/re/controller/util/AVPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->b(Lcom/inmobi/re/controller/util/AVPlayer;)I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-static {v0, v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer;->a(Lcom/inmobi/re/controller/util/AVPlayer;II)V

    invoke-static {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->a(Lcom/inmobi/re/controller/util/AVPlayer;I)I

    invoke-static {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->b(Lcom/inmobi/re/controller/util/AVPlayer;I)I

    :cond_2
    const/16 v0, 0x3e9

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer$b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
