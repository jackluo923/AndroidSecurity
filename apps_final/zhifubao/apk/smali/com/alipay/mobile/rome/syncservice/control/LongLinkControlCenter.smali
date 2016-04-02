.class public Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;
.super Ljava/lang/Object;
.source "LongLinkControlCenter.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized finish()V
    .locals 4

    .prologue
    .line 73
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "finish: [ LongLinkControlCenter ] [ isInited="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    .line 77
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v1

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init()V
    .locals 8

    .prologue
    .line 33
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init: [ LongLinkControlCenter ] [ isInited="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    monitor-exit v1

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->b:Z

    .line 40
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    const-string/jumbo v3, "onCreate: [ DebugMode=true ]"

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setDebugMode(Z)V

    .line 50
    :cond_1
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    const-string/jumbo v3, "setLinkHostAddr: "

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/c;->a()Lcom/alipay/mobile/rome/syncservice/a/c;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/a/c;->b(Landroid/content/Context;)I

    move-result v3

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/a/c;->c(Landroid/content/Context;)Z

    move-result v4

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setHostAddr(Ljava/lang/String;IZ)V

    sget-object v5, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setLinkHostAddr [ debug mode ][ serverHost="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " ][ serverPort="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ useSsl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setAppName(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v2

    .line 57
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setProductVersion(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setProductId(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setDeviceId(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/rome/syncservice/b/a;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/rome/syncservice/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->init(Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 50
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "115.124.16.220"

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v3

    const/16 v4, 0x1bb

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setHostAddr(Ljava/lang/String;IZ)V

    sget-object v3, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setLinkHostAddr [ sandbox mode ] [ host="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ][ port=443 ][ useSsl=true ]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncservice/a/b;->a(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/a/b;->b(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0, p1}, Lcom/alipay/mobile/rome/syncservice/control/ReflectNotifyMmtp;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->handleUserInfoEvent()V

    .line 99
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->getInstance()Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/rome/syncservice/control/LinkServiceMangerHelper;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
