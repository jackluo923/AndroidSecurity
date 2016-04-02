.class public Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;
.super Ljava/lang/Object;
.source "LongLinkHostAddr.java"


# static fields
.field private static d:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:I

.field private volatile c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string/jumbo v0, "mobilepmgw.alipay.com"

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->a:Ljava/lang/String;

    .line 26
    const/16 v0, 0x1bb

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->b:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->c:Z

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->d:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->d:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    .line 37
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->d:Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSSLFlag()Z
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLongLinkAddr(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->a:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->b:I

    .line 51
    iput-boolean p3, p0, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
