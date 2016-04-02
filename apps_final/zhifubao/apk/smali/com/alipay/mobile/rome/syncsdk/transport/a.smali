.class public Lcom/alipay/mobile/rome/syncsdk/transport/a;
.super Ljava/lang/Object;
.source "TransportManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "spdy"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ssl"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const-string/jumbo v0, "ssl"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    .line 60
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSelectedChannel: [ mCurrChannel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ mSpdyFailCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    sget v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ MAX_SPDY_FAIL_COUNT=1 ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :cond_1
    :try_start_1
    sget v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 56
    const-string/jumbo v0, "spdy"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()V
    .locals 2

    .prologue
    .line 113
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()V
    .locals 4

    .prologue
    .line 120
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    .line 121
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addSpdyFailCount: [ mSpdyFailCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v1

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e()Z
    .locals 7

    .prologue
    .line 128
    const-class v2, Lcom/alipay/mobile/rome/syncsdk/transport/a;

    monitor-enter v2

    const/4 v1, 0x0

    .line 131
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->isLongLinkSpdySwitchOn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 132
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isSpdyMasterSwitchOn: [ ret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_0
    monitor-exit v2

    return v0

    .line 133
    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 134
    :goto_1
    :try_start_2
    sget-object v3, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isSpdyMasterSwitchOn: [ ret="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ TException="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 135
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v3, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 133
    :catch_1
    move-exception v1

    goto :goto_1
.end method
