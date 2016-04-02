.class final Lcom/taobao/mteam/ibeacon/service/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/e;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/e;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
