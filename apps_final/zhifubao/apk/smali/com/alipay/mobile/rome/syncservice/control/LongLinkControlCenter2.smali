.class public Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;
.super Ljava/lang/Object;
.source "LongLinkControlCenter2.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Z

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->a:Ljava/lang/String;

    .line 22
    sput-boolean v2, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->b:Z

    .line 24
    sput-boolean v2, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->c:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized handleOldSyncKey()V
    .locals 7

    .prologue
    .line 56
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 60
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getCdid()Ljava/lang/String;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->c:Z

    .line 69
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getDeviceBasedBiz()Ljava/util/Set;

    move-result-object v0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v3

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->c:Z

    .line 82
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->c()V

    goto :goto_0

    .line 75
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {v3, v2, v0}, Lcom/alipay/mobile/rome/syncservice/sync/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    .line 77
    invoke-virtual {v3, v0, v5, v6}, Lcom/alipay/mobile/rome/syncservice/sync/a;->a(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized init()V
    .locals 4

    .prologue
    .line 32
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init: [ LongLinkControlCenter ] [ isInited="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    monitor-exit v1

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->b:Z

    .line 39
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->handleOldSyncKey()V

    .line 45
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/rome/syncservice/b/b;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/rome/syncservice/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->init(Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
