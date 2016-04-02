.class final Lcom/taobao/mteam/ibeacon/service/j;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/taobao/mteam/ibeacon/service/i;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;


# direct methods
.method private constructor <init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/j;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/mteam/ibeacon/service/j;-><init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V

    return-void
.end method

.method private varargs a([Lcom/taobao/mteam/ibeacon/service/i;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x0

    aget-object v2, p1, v0

    iget-object v0, v2, Lcom/taobao/mteam/ibeacon/service/i;->c:[B

    iget v1, v2, Lcom/taobao/mteam/ibeacon/service/i;->b:I

    iget-object v3, v2, Lcom/taobao/mteam/ibeacon/service/i;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v3}, Lcom/taobao/mteam/ibeacon/IBeacon;->a([BILandroid/bluetooth/BluetoothDevice;)Lcom/taobao/mteam/ibeacon/IBeacon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/taobao/mteam/ibeacon/service/i;->c:[B

    iget v1, v2, Lcom/taobao/mteam/ibeacon/service/i;->b:I

    iget-object v3, v2, Lcom/taobao/mteam/ibeacon/service/i;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v3}, Lcom/taobao/mteam/ibeacon/IBeacon;->b([BILandroid/bluetooth/BluetoothDevice;)Lcom/taobao/mteam/ibeacon/IBeacon;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/j;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/j;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/j;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/j;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/j;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/service/j;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v3}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/j;->a:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-static {v1, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Lcom/taobao/mteam/ibeacon/IBeacon;)V

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/BeaconFilter;

    iget-object v1, v2, Lcom/taobao/mteam/ibeacon/service/i;->c:[B

    iget v1, v2, Lcom/taobao/mteam/ibeacon/service/i;->b:I

    iget-object v1, v2, Lcom/taobao/mteam/ibeacon/service/i;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/BeaconFilter;->a()Lcom/taobao/mteam/ibeacon/IBeacon;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/taobao/mteam/ibeacon/BeaconFilter;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/taobao/mteam/ibeacon/IBeacon;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget-object v4, v2, Lcom/taobao/mteam/ibeacon/service/i;->c:[B

    iget v4, v2, Lcom/taobao/mteam/ibeacon/service/i;->b:I

    iget-object v4, v2, Lcom/taobao/mteam/ibeacon/service/i;->a:Landroid/bluetooth/BluetoothDevice;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/taobao/mteam/ibeacon/service/i;

    invoke-direct {p0, p1}, Lcom/taobao/mteam/ibeacon/service/j;->a([Lcom/taobao/mteam/ibeacon/service/i;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method

.method protected final bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
