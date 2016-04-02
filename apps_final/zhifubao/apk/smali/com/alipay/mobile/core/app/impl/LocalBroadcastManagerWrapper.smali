.class public Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
.super Ljava/lang/Object;
.source "LocalBroadcastManagerWrapper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static c:Landroid/support/v4/content/LocalBroadcastManager;

.field private static d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "LocalBroadcastManagerWrapper"

    sput-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    .line 32
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroid/support/v4/content/LocalBroadcastManager;

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->d:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v2, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerReceiver: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", action: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 50
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->c:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    return-void
.end method
