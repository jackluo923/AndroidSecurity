.class final Lcom/taobao/mteam/abeacon/found/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/abeacon/found/BeaconManager;


# direct methods
.method constructor <init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/b;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/b;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/b;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/ServiceConnection;)V
    .locals 1

    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/b;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    .locals 2

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "bindService called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/b;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/mteam/abeacon/found/b;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/b;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/b;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "onIBeaconServiceConnect called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/b;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/b;->a:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-static {v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
