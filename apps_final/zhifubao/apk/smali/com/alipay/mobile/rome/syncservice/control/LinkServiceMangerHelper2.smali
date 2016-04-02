.class public Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;
.super Ljava/lang/Object;
.source "LinkServiceMangerHelper2.java"


# static fields
.field private static volatile b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;


# instance fields
.field private volatile a:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->b:Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public init(Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->init(Lcom/alipay/mobile/rome/syncsdk/zlink2/ILongLinkCallBack2;)V

    .line 42
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isNewDevice()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->isNewDevice()Z

    move-result v0

    return v0
.end method

.method public processSyncDirectData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->processSyncDirectData(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public sendPacketUplinkSync([B)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper2;->a:Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->sendPacketUplinkSync([B)V

    .line 81
    return-void
.end method
