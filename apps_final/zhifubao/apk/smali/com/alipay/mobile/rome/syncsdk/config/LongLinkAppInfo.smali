.class public Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;
.super Ljava/lang/Object;
.source "LongLinkAppInfo.java"


# static fields
.field private static a:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;


# instance fields
.field private volatile b:Ljava/lang/String;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->a:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->a:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->a:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->a:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a()Lcom/alipay/mobile/rome/syncsdk/a/b;

    move-result-object v0

    const-string/jumbo v1, "key_cdid"

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCdid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a()Lcom/alipay/mobile/rome/syncsdk/a/b;

    move-result-object v0

    const-string/jumbo v1, "key_cdid"

    invoke-virtual {v0, p1, v1, p2}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProductId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProductVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSessionId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
