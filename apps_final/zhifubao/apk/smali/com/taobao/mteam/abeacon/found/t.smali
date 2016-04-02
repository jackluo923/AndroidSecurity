.class final Lcom/taobao/mteam/abeacon/found/t;
.super Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/t;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/t;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/t;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Operation timeout"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Lcom/taobao/mteam/abeacon/found/t;->removeMessages(I)V

    invoke-static {v0, v1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->e(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;)Lcom/taobao/mteam/abeacon/found/DeviceOperation;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/DeviceOperation;Ljava/lang/Exception;)V

    goto :goto_0
.end method
