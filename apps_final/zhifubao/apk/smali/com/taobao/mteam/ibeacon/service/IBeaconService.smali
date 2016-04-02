.class public Lcom/taobao/mteam/ibeacon/service/IBeaconService;
.super Landroid/app/Service;


# static fields
.field private static final synthetic A:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final o:[C


# instance fields
.field final a:Landroid/os/Messenger;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/mteam/ibeacon/Region;",
            "Lcom/taobao/mteam/ibeacon/service/RangeState;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/mteam/ibeacon/Region;",
            "Lcom/taobao/mteam/ibeacon/service/MonitorState;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/bluetooth/BluetoothAdapter;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/Date;

.field private h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/taobao/mteam/ibeacon/IBeacon;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/taobao/mteam/ibeacon/IBeacon;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/os/Handler;

.field private k:I

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/taobao/mteam/ibeacon/BeaconFilter;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/taobao/mteam/ibeacon/service/BleHandler;

.field private p:Landroid/os/HandlerThread;

.field private q:Landroid/os/Handler;

.field private r:J

.field private s:J

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/mteam/ibeacon/IBeacon;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "IBeaconService.java"

    const-class v2, Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onBind"

    const-string/jumbo v3, "com.taobao.mteam.ibeacon.service.IBeaconService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "android.os.IBinder"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xe0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->A:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->o:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->g:Ljava/util/Date;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->h:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->i:Ljava/util/HashSet;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->j:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->k:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->m:Ljava/util/Set;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "startThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->p:Landroid/os/HandlerThread;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->r:J

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->s:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->t:Ljava/util/List;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/taobao/mteam/ibeacon/service/h;

    invoke-direct {v1, p0}, Lcom/taobao/mteam/ibeacon/service/h;-><init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a:Landroid/os/Messenger;

    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->u:I

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->v:J

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->w:J

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->x:J

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->y:J

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/d;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/ibeacon/service/d;-><init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->z:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Lcom/taobao/mteam/ibeacon/service/BleHandler;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->n:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    return-object v0
.end method

.method private static a(Ljava/util/Set;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private static a(Lcom/taobao/mteam/ibeacon/IBeacon;Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/mteam/ibeacon/IBeacon;",
            "Ljava/util/Collection",
            "<",
            "Lcom/taobao/mteam/ibeacon/Region;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/mteam/ibeacon/Region;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/Region;

    invoke-virtual {v0, p0}, Lcom/taobao/mteam/ibeacon/Region;->b(Lcom/taobao/mteam/ibeacon/IBeacon;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, p0}, Lcom/taobao/mteam/ibeacon/Region;->a(Lcom/taobao/mteam/ibeacon/IBeacon;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "IBeaconService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "This region does not match: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a()V
    .locals 7

    const-wide/16 v0, 0x3e8

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->y:J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    sget-boolean v4, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "IBeaconService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Waiting to stop scan for another "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->j:Landroid/os/Handler;

    new-instance v5, Lcom/taobao/mteam/ibeacon/service/g;

    invoke-direct {v5, p0}, Lcom/taobao/mteam/ibeacon/service/g;-><init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    :goto_0
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b()V

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/taobao/mteam/ibeacon/IBeacon;)V
    .locals 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->g:Ljava/util/Date;

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->h:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/IBeacon;

    if-eqz v0, :cond_0

    const-wide v2, 0x3fee666666666666L    # 0.95

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/IBeacon;->g()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide v4, 0x3fa999999999999aL    # 0.05

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->g()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-virtual {p1, v0}, Lcom/taobao/mteam/ibeacon/IBeacon;->a(I)V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->i:Ljava/util/HashSet;

    invoke-static {v0, p1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->i:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v2, v0

    :goto_0
    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "IBeaconService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "iBeacon detected :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " accuracy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->c()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " proximity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/mteam/ibeacon/IBeacon;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/IBeacon;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "looking for ranging region matches for this ibeacon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/IBeacon;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/Region;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/MonitorState;

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/MonitorState;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/MonitorState;->a()Lcom/taobao/mteam/ibeacon/service/Callback;

    move-result-object v4

    const-string/jumbo v5, "monitoringData"

    new-instance v6, Lcom/taobao/mteam/ibeacon/service/MonitoringData;

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/MonitorState;->d()Z

    move-result v1

    invoke-direct {v6, v1, v0}, Lcom/taobao/mteam/ibeacon/service/MonitoringData;-><init>(ZLcom/taobao/mteam/ibeacon/Region;)V

    invoke-virtual {v4, p0, v5, v6}, Lcom/taobao/mteam/ibeacon/service/Callback;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/Region;

    sget-boolean v4, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "IBeaconService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "matches ranging region: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/service/RangeState;

    invoke-virtual {v0, p1}, Lcom/taobao/mteam/ibeacon/service/RangeState;->a(Lcom/taobao/mteam/ibeacon/IBeacon;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    move v2, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Lcom/taobao/mteam/ibeacon/IBeacon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/IBeacon;)V

    return-void
.end method

.method static synthetic a(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Ljava/lang/Boolean;)V
    .locals 7

    const-wide/16 v0, 0x3e8

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "IBeaconService"

    const-string/jumbo v3, "No bluetooth adapter.  iBeaconService cannot scan."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->t:Ljava/util/List;

    if-nez v2, :cond_1

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "IBeaconService"

    const-string/jumbo v3, "proceeding with simulated scan data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->x:J

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    sget-boolean v4, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "IBeaconService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Waiting to start next bluetooth scan for another "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->j:Landroid/os/Handler;

    new-instance v5, Lcom/taobao/mteam/ibeacon/service/f;

    invoke-direct {v5, p0}, Lcom/taobao/mteam/ibeacon/service/f;-><init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V

    cmp-long v6, v2, v0

    if-lez v6, :cond_4

    :goto_1
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->h:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->i:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->h:Ljava/util/HashSet;

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->e:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->f:Z

    if-eqz v0, :cond_9

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->e:Z

    iput-boolean v6, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->f:Z

    :try_start_0
    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->z:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->v:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->r:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->y:J

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a()V

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "Scan started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "Bluetooth is disabled.  Cannot scan for iBeacons."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "Exception starting bluetooth scan.  Perhaps bluetooth is disabled or unavailable?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "We are already scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "disabling scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iput-boolean v6, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->e:Z

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_2
    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->z:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_c
    :goto_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->w:J

    :cond_d
    :try_start_3
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "IBeaconService"

    const-string/jumbo v2, "stopLeScan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 8

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/Region;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/RangeState;

    sget-boolean v4, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "IBeaconService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Calling ranging callback with "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/RangeState;->c()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " iBeacons"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/RangeState;->a()Lcom/taobao/mteam/ibeacon/service/Callback;

    move-result-object v4

    const-string/jumbo v5, "rangingData"

    new-instance v6, Lcom/taobao/mteam/ibeacon/service/RangingData;

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/RangeState;->c()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lcom/taobao/mteam/ibeacon/service/RangingData;-><init>(Ljava/util/Collection;Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-virtual {v4, p0, v5, v6}, Lcom/taobao/mteam/ibeacon/service/Callback;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/RangeState;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->i:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/RangeState;->a()Lcom/taobao/mteam/ibeacon/service/Callback;

    move-result-object v1

    const-string/jumbo v4, "rangingData"

    new-instance v5, Lcom/taobao/mteam/ibeacon/service/RangingData;

    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->i:Ljava/util/HashSet;

    invoke-direct {v5, v6, v0}, Lcom/taobao/mteam/ibeacon/service/RangingData;-><init>(Ljava/util/Collection;Lcom/taobao/mteam/ibeacon/Region;)V

    invoke-virtual {v1, p0, v4, v5}, Lcom/taobao/mteam/ibeacon/service/Callback;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->m:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x1

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "Done with scan cycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->e:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "Not starting scan because no monitoring or ranging regions are defined."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/Region;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/MonitorState;

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/MonitorState;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "IBeaconService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "found a monitor that expired: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/MonitorState;->a()Lcom/taobao/mteam/ibeacon/service/Callback;

    move-result-object v3

    const-string/jumbo v4, "monitoringData"

    new-instance v5, Lcom/taobao/mteam/ibeacon/service/MonitoringData;

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/MonitorState;->d()Z

    move-result v1

    invoke-direct {v5, v1, v0}, Lcom/taobao/mteam/ibeacon/service/MonitoringData;-><init>(ZLcom/taobao/mteam/ibeacon/Region;)V

    invoke-virtual {v3, p0, v4, v5}, Lcom/taobao/mteam/ibeacon/service/Callback;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, v6}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Z)V

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "IBeaconService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Restarting scan.  Unique beacons seen last cycle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->h:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->z:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->w:J

    :cond_7
    :goto_2
    iput-boolean v6, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->f:Z

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->t:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    :goto_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->s:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->x:J

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "Bluetooth is disabled.  Cannot scan for iBeacons."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/IBeacon;

    invoke-direct {p0, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Lcom/taobao/mteam/ibeacon/IBeacon;)V

    goto :goto_3

    :cond_b
    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "Simulated scan data provided, but ignored because we are not running in debug mode.  Please remove simulated scan data for production."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c()Z

    move-result v0

    return v0
.end method

.method private d()Landroid/bluetooth/BluetoothAdapter;
    .locals 2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V
    .locals 0

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7

    iput-wide p1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->r:J

    iput-wide p3, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->s:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->x:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->w:J

    add-long/2addr v2, p3

    iget-wide v4, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->x:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    iput-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->x:J

    const-string/jumbo v2, "IBeaconService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Adjusted nextScanStartTime to be "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->x:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->y:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->v:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->y:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->y:J

    const-string/jumbo v0, "IBeaconService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Adjusted scanStopTime to be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->y:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final a(Lcom/taobao/mteam/ibeacon/BeaconFilter;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->m:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 2

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Ljava/lang/Boolean;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/taobao/mteam/ibeacon/Region;Lcom/taobao/mteam/ibeacon/service/Callback;)V
    .locals 3

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v2, "Already ranging that region -- will replace existing region."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    new-instance v2, Lcom/taobao/mteam/ibeacon/service/RangeState;

    invoke-direct {v2, p2}, Lcom/taobao/mteam/ibeacon/service/RangeState;-><init>(Lcom/taobao/mteam/ibeacon/service/Callback;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Ljava/lang/Boolean;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/taobao/mteam/ibeacon/BeaconFilter;)V
    .locals 2

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->m:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->m:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/taobao/mteam/ibeacon/Region;)V
    .locals 3

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "stopMonitoring called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "IBeaconService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Currently monitoring "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " regions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/taobao/mteam/ibeacon/Region;Lcom/taobao/mteam/ibeacon/service/Callback;)V
    .locals 3

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "startMonitoring called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "Already monitoring that region -- will replace existing region monitor."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    new-instance v1, Lcom/taobao/mteam/ibeacon/service/MonitorState;

    invoke-direct {v1, p2}, Lcom/taobao/mteam/ibeacon/service/MonitorState;-><init>(Lcom/taobao/mteam/ibeacon/service/Callback;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "IBeaconService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Currently monitoring "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " regions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->e:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Ljava/lang/Boolean;)V

    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    sget-object v0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->A:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBind at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "binding"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->k:I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "iBeaconService is starting up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d()Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->p:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/taobao/mteam/ibeacon/service/e;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/taobao/mteam/ibeacon/service/e;-><init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->q:Landroid/os/Handler;

    :cond_0
    :try_start_0
    new-instance v0, Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-direct {v0, p0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->n:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->n:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "IBeaconService"

    const-string/jumbo v2, "Cannot get simulated Scan data.  Make sure your com.radiusnetworks.ibeacon.SimulatedScanData class defines a field with the signature \'public static List<IBeacon> iBeacons\'"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "onDestory called.  stopping scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->z:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->w:J

    :cond_2
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "unbinding"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService;->k:I

    const/4 v0, 0x0

    return v0
.end method
