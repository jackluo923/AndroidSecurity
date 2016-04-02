.class public Lcom/taobao/mteam/abeacon/found/BeaconManager;
.super Ljava/lang/Object;


# static fields
.field private static k:Lcom/taobao/mteam/abeacon/found/BeaconManager;

.field private static o:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

.field private c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/taobao/mteam/ibeacon/Region;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/taobao/mteam/ibeacon/Region;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/taobao/mteam/ibeacon/Region;",
            "Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/taobao/mteam/ibeacon/Region;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Landroid/os/Handler;

.field private j:Z

.field private l:Z

.field private m:Lcom/taobao/mteam/ibeacon/RangeNotifier;

.field private n:Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->o:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x2710

    const-wide/16 v4, 0xfa0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->g:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->j:Z

    iput-boolean v3, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    new-instance v0, Lcom/taobao/mteam/abeacon/found/a;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/abeacon/found/a;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;)V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->m:Lcom/taobao/mteam/ibeacon/RangeNotifier;

    new-instance v0, Lcom/taobao/mteam/abeacon/found/b;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/abeacon/found/b;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;)V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->n:Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "BeaconManager ()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a:Landroid/content/Context;

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-direct {v0, p1}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connectionOperationManger create"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_3
    iput-boolean v3, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    new-instance v0, Lcom/taobao/mteam/abeacon/found/i;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/abeacon/found/i;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;)V

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-virtual {p0, v6, v7}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(J)V

    invoke-virtual {p0, v4, v5}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(J)V

    invoke-virtual {p0, v6, v7}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c(J)V

    invoke-virtual {p0, v4, v5}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d(J)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->n:Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->m:Lcom/taobao/mteam/ibeacon/RangeNotifier;

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Lcom/taobao/mteam/ibeacon/RangeNotifier;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/mteam/abeacon/found/BeaconManager;
    .locals 1

    sget-object v0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->k:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/mteam/abeacon/found/BeaconManager;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->k:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    :cond_0
    sget-object v0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->k:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;I)Lcom/taobao/mteam/ibeacon/Region;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;",
            "I)",
            "Lcom/taobao/mteam/ibeacon/Region;"
        }
    .end annotation

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/taobao/mteam/ibeacon/Region;

    invoke-direct {v1, v0}, Lcom/taobao/mteam/ibeacon/Region;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/taobao/mteam/ibeacon/Region;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->g:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/taobao/mteam/abeacon/found/d;

    invoke-direct {v2, p0, p2, v1}, Lcom/taobao/mteam/abeacon/found/d;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/BeaconManager;Lcom/taobao/mteam/ibeacon/Region;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/taobao/mteam/ibeacon/Region;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/taobao/mteam/ibeacon/Region;)Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "isRegionInScanning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/BeaconManager;Lcom/taobao/mteam/ibeacon/Region;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/taobao/mteam/ibeacon/Region;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/taobao/mteam/ibeacon/Region;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/mteam/ibeacon/Region;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getBeaconID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/Region;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "filterBeacons remove:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "hasMacAddress no"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/taobao/mteam/abeacon/found/DeviceBusinessTemplate;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/taobao/mteam/abeacon/found/DeviceBusinessTemplate;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    const-string/jumbo v2, "connectionOperationManger == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/taobao/mteam/abeacon/found/DeviceBusinessTemplate;->a()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getBeaconID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private c()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->j:Z

    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    const-string/jumbo v2, "checkAvailability"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic d(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;
    .locals 3

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "waited iBeaconManager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    return-object v0
.end method

.method static synthetic h(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic i(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic j(Lcom/taobao/mteam/abeacon/found/BeaconManager;)Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;",
            "Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startScanPayBeacons:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/taobao/mteam/abeacon/found/BeaconManager;->o:I

    sget v2, Lcom/taobao/mteam/abeacon/found/BeaconManager;->o:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/taobao/mteam/abeacon/found/BeaconManager;->o:I

    invoke-direct {p0, v0, p2, v1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/util/List;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;I)Lcom/taobao/mteam/ibeacon/Region;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/Region;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startScanPayBeacons:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BeaconManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startScanPayBeaconsForImmediateResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/taobao/mteam/abeacon/found/c;

    invoke-direct {v1, p0}, Lcom/taobao/mteam/abeacon/found/c;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/util/List;Lcom/taobao/mteam/abeacon/found/listeners/BeaconScanCallback;I)Lcom/taobao/mteam/ibeacon/Region;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/Region;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->i:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->i:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cacheArrayList size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/taobao/mteam/ibeacon/Region;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->n:Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;

    invoke-virtual {v0, v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->b(Lcom/taobao/mteam/ibeacon/manager/IBeaconConsumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->i:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-virtual {v0}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a()Z

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "connectionOperationManger destroy and set null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object v4, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a:Landroid/content/Context;

    sput-object v4, Lcom/taobao/mteam/abeacon/found/BeaconManager;->k:Lcom/taobao/mteam/abeacon/found/BeaconManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/Region;

    :try_start_3
    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-virtual {v2, v0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->b(Lcom/taobao/mteam/ibeacon/Region;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BeaconManager"

    const-string/jumbo v3, "stopRangingBeaconsInRegion"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BeaconManager"

    const-string/jumbo v2, "iBeaconManager.unBind"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(J)V
    .locals 2

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "setForegroundScanPeriod:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(J)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startAlert:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    const-string/jumbo v2, "connectionOperationManger == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readDeviceInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    const-string/jumbo v2, "connectionOperationManger == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->a(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/taobao/mteam/abeacon/found/listeners/ReadDeviceInfoCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 6

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/taobao/mteam/abeacon/found/f;

    const-string/jumbo v2, "readDeviceAppData"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/taobao/mteam/abeacon/found/f;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;Ljava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/taobao/mteam/abeacon/found/DeviceBusinessTemplate;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[B[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 7

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/taobao/mteam/abeacon/found/g;

    const-string/jumbo v2, "writeDeviceAppData"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/taobao/mteam/abeacon/found/g;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;Ljava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;[B[BLcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/taobao/mteam/abeacon/found/DeviceBusinessTemplate;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopScanPayBeacons:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/Region;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/Region;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/taobao/mteam/ibeacon/Region;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->g:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/taobao/mteam/abeacon/found/e;

    invoke-direct {v3, p0, v0}, Lcom/taobao/mteam/abeacon/found/e;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b(J)V
    .locals 2

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "setForegroundBetweenScanPeriod:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->b(J)V

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-boolean v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "stopScanPayBeaconsForImmediateResult:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->l:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BeaconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stopAlert:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BeaconManager"

    const-string/jumbo v2, "connectionOperationManger == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->c:Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;

    invoke-static {p1}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;)Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/taobao/mteam/abeacon/found/ConnectionOperationManager;->b(Lcom/taobao/mteam/abeacon/found/beans/BeaconDevice;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c(J)V
    .locals 2

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "setBackgroundScanPeriod:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->c(J)V

    :cond_1
    return-void
.end method

.method public final c(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)Z
    .locals 2

    new-instance v0, Lcom/taobao/mteam/abeacon/found/h;

    const-string/jumbo v1, "readToken"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/taobao/mteam/abeacon/found/h;-><init>(Lcom/taobao/mteam/abeacon/found/BeaconManager;Ljava/lang/String;Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/mteam/abeacon/found/BeaconManager;->a(Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;Lcom/taobao/mteam/abeacon/found/DeviceBusinessTemplate;)Z

    move-result v0

    return v0
.end method

.method public final d(J)V
    .locals 2

    invoke-static {}, Lcom/taobao/mteam/abeacon/found/utils/FoundUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BeaconManager"

    const-string/jumbo v1, "setBackgroundBetweenScanPeriod:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/abeacon/found/BeaconManager;->b:Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->d(J)V

    :cond_1
    return-void
.end method
