.class final Lcom/taobao/mteam/ibeacon/manager/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string/jumbo v0, "IBeaconManager"

    const-string/jumbo v1, "we have a connection to the service now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/manager/b;

    iget-boolean v0, v0, Lcom/taobao/mteam/ibeacon/manager/b;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;->c()V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/manager/b;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/taobao/mteam/ibeacon/manager/b;->a:Z

    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-static {v3}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string/jumbo v0, "IBeaconManager"

    const-string/jumbo v1, "we will disconnection the service now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "IBeaconManager"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/manager/b;

    iget-boolean v1, v1, Lcom/taobao/mteam/ibeacon/manager/b;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;->b()V

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/manager/b;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/taobao/mteam/ibeacon/manager/b;->a:Z

    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/manager/a;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-static {v3}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
