.class public final Lcom/alipay/mobile/rome/syncsdk/a/a;
.super Ljava/lang/Object;
.source "DeviceNewOrOld.java"


# static fields
.field private static volatile b:Lcom/alipay/mobile/rome/syncsdk/a/a;


# instance fields
.field private volatile a:Z

.field private volatile c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    .line 19
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->c:Landroid/content/Context;

    .line 22
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a()Lcom/alipay/mobile/rome/syncsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->c:Landroid/content/Context;

    .line 23
    const-string/jumbo v2, "is_new_device"

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    iput-boolean v3, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a()Lcom/alipay/mobile/rome/syncsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->c:Landroid/content/Context;

    const-string/jumbo v2, "key_cdid"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-boolean v3, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    .line 34
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/a/a;->b()V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/rome/syncsdk/a/a;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/a/a;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/a/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/a/a;

    .line 42
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/a/a;->b:Lcom/alipay/mobile/rome/syncsdk/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z

    .line 56
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a()Lcom/alipay/mobile/rome/syncsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->c:Landroid/content/Context;

    const-string/jumbo v2, "is_new_device"

    .line 57
    const-string/jumbo v3, "old"

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
