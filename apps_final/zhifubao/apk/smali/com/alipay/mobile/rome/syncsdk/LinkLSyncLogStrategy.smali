.class public Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;
.super Ljava/lang/Object;
.source "LinkLSyncLogStrategy.java"


# static fields
.field public static final LOG_DIAGNOSE:Ljava/lang/String; = "2"

.field public static final LOG_MONITOR:Ljava/lang/String; = "1"

.field public static final LOG_NOLOG:Ljava/lang/String; = "3"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->a:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "2"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->b:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->c:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 5

    .prologue
    .line 54
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    monitor-exit v1

    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 60
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 61
    if-nez v0, :cond_2

    .line 62
    const-string/jumbo v0, "sync_link_LinkLSyncLogStrategy"

    const-string/jumbo v2, "initConfig: [ configService null ]"

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    const-string/jumbo v2, "sync_link_LinkLSyncLogStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initConfig: [ Texception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :cond_2
    :try_start_3
    const-string/jumbo v2, "sync_cfg"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string/jumbo v2, "sync_link_LinkLSyncLogStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initConfig: [ logStrategy="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "syncInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->a:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "syncMsg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->b:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getSyncInfoStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->c:Z

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->a()V

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getSyncMsgStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->c:Z

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->a()V

    .line 48
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkLSyncLogStrategy;->b:Ljava/lang/String;

    return-object v0
.end method
