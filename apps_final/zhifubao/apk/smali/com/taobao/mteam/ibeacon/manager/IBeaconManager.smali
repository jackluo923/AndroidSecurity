.class public Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

.field public static e:Z


# instance fields
.field protected b:Lcom/taobao/mteam/ibeacon/RangeNotifier;

.field protected c:Lcom/taobao/mteam/ibeacon/MonitorNotifier;

.field protected d:Lcom/taobao/mteam/ibeacon/client/RangingTracker;

.field private f:Landroid/content/Context;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;",
            "Lcom/taobao/mteam/ibeacon/manager/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Messenger;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->b:Lcom/taobao/mteam/ibeacon/RangeNotifier;

    iput-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->c:Lcom/taobao/mteam/ibeacon/MonitorNotifier;

    new-instance v0, Lcom/taobao/mteam/ibeacon/client/RangingTracker;

    invoke-direct {v0}, Lcom/taobao/mteam/ibeacon/client/RangingTracker;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->d:Lcom/taobao/mteam/ibeacon/client/RangingTracker;

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->i:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->j:J

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->k:J

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->l:J

    new-instance v0, Lcom/taobao/mteam/ibeacon/manager/a;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/ibeacon/manager/a;-><init>(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->m:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->f:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;
    .locals 2

    sget-object v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconManager"

    const-string/jumbo v1, "IBeaconManager instance creation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    :cond_1
    sget-object v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    return-object v0
.end method

.method static synthetic a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Landroid/os/Message;Landroid/os/Parcelable;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "IBEACON_DATA_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    return-void
.end method

.method private c(Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;)Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/manager/b;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/taobao/mteam/ibeacon/manager/b;->b:Z

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v2, "The IBeaconManager is not bound to the service.  Call iBeaconManager.bind(IBeaconConsumer consumer) and wait for a callback to onIBeaconServiceConnect()"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IBeaconManager"

    const-string/jumbo v3, "Failed to set background mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-static {v0, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->f()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/taobao/mteam/ibeacon/service/StartRMData;-><init>(JJ)V

    invoke-static {v0, v2}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Landroid/os/Message;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "IBeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callback packageName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;

    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/manager/b;

    iget-boolean v0, v0, Lcom/taobao/mteam/ibeacon/manager/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method private f()J
    .locals 2

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->k:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->i:J

    goto :goto_0
.end method

.method private g()J
    .locals 2

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->l:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->j:J

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->i:J

    return-void
.end method

.method public final a(Lcom/taobao/mteam/ibeacon/RangeNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->b:Lcom/taobao/mteam/ibeacon/RangeNotifier;

    return-void
.end method

.method public final a(Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 8

    const/4 v2, 0x0

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconManager"

    const-string/jumbo v1, "startRangingBeaconsInRegion called: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "The IBeaconManager is not bound to the service.  Call iBeaconManager.bind(IBeaconConsumer consumer) and wait for a callback to onIBeaconServiceConnect()"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    new-instance v1, Lcom/taobao/mteam/ibeacon/service/RegionData;

    invoke-direct {v1, p1}, Lcom/taobao/mteam/ibeacon/service/RegionData;-><init>(Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->f()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/taobao/mteam/ibeacon/service/StartRMData;-><init>(Lcom/taobao/mteam/ibeacon/service/RegionData;Ljava/lang/String;JJ)V

    invoke-static {v7, v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Landroid/os/Message;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method

.method public final a(Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;)V
    .locals 3

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconManager"

    const-string/jumbo v1, "This consumer is already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "IBeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "This consumer is not bound.  binding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    new-instance v1, Lcom/taobao/mteam/ibeacon/manager/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/mteam/ibeacon/manager/b;-><init>(Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->m:Landroid/content/ServiceConnection;

    invoke-interface {p1, v0, v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;->a(Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "IBeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "consumer count is now:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->c(Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/BleNotAvailableException;

    const-string/jumbo v1, "Bluetooth LE not supported by this device"

    invoke-direct {v0, v1}, Lcom/taobao/mteam/ibeacon/service/BleNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->f:Landroid/content/Context;

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/taobao/mteam/ibeacon/MonitorNotifier;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->c:Lcom/taobao/mteam/ibeacon/MonitorNotifier;

    return-object v0
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->j:J

    return-void
.end method

.method public final b(Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "The IBeaconManager is not bound to the service.  Call iBeaconManager.bind(IBeaconConsumer consumer) and wait for a callback to onIBeaconServiceConnect()"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/StartRMData;

    new-instance v1, Lcom/taobao/mteam/ibeacon/service/RegionData;

    invoke-direct {v1, p1}, Lcom/taobao/mteam/ibeacon/service/RegionData;-><init>(Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->f()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/taobao/mteam/ibeacon/service/StartRMData;-><init>(Lcom/taobao/mteam/ibeacon/service/RegionData;Ljava/lang/String;JJ)V

    invoke-static {v7, v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Landroid/os/Message;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->h:Landroid/os/Messenger;

    invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method

.method public final b(Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "IBeaconManager"

    const-string/jumbo v2, "Unbinding"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/manager/b;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->m:Landroid/content/ServiceConnection;

    invoke-interface {p1, v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;->a(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, v0, Lcom/taobao/mteam/ibeacon/manager/b;->a:Z

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "IBeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "This consumer is not bound to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "IBeaconManager"

    const-string/jumbo v2, "Bound consumers: "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string/jumbo v0, "IBeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final c()Lcom/taobao/mteam/ibeacon/RangeNotifier;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->b:Lcom/taobao/mteam/ibeacon/RangeNotifier;

    return-object v0
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->k:J

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->l:J

    return-void
.end method
