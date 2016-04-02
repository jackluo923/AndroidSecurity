.class public Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;
.super Ljava/lang/Object;
.source "LinkServiceMangerHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile d:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;


# instance fields
.field private volatile b:Landroid/content/Context;

.field private volatile c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->b:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->d:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->d:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->d:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->d:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "finish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getCdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;)V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->init(Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->isConnected()Z

    move-result v0

    return v0
.end method

.method public sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendPacketUplink"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public sendPacketUplinkSync(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendPacketUplinkSync"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->sendPacketUplinkSync(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setAppName(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setConnActionActive()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setConnActionActive()V

    .line 109
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setDebugMode(Z)V

    .line 116
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setDeviceId(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setHostAddr(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setHostAddr(Ljava/lang/String;IZ)V

    .line 74
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setProductId(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setProductVersion(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public startLink()V
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "startLink"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->startLink()V

    .line 140
    return-void
.end method

.method public startLinkOnResume()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "startLinkOnResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->startLinkOnResume()V

    .line 147
    return-void
.end method

.method public stopLink()V
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopLink"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->c:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->stopLink()V

    .line 155
    return-void
.end method
