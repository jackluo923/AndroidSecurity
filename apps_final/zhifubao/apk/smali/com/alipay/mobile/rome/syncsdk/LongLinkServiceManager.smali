.class public final Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;
.super Ljava/lang/Object;
.source "LongLinkServiceManager.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;


# instance fields
.field private volatile b:Landroid/content/Context;

.field private volatile c:Z

.field private volatile d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

.field private volatile e:Landroid/content/ServiceConnection;

.field private volatile f:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

.field private volatile g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ILongLinkNotiferImpl;-><init>(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    .line 67
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager$ServiceConnectionImpl;-><init>(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->e:Landroid/content/ServiceConnection;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->c:Z

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;)Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    if-nez v0, :cond_1

    .line 75
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->a:Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized finish()V
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "finish longlink [ unBindService ] : "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->disConnect()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    .line 126
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->c:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->c:Z

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    const-class v3, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCdid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getCdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string/jumbo v1, "sync_link_LongLinkServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getCdid: [ cdid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized init(Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;)V
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init longlink [ bindService ] : [ callback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    .line 99
    if-nez p1, :cond_1

    .line 100
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "bindService: [ callback=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 108
    :cond_2
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bindService: already binded [ longLinkService="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized initConnet()V
    .locals 2

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "initConnet"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->initConnet()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 241
    const-string/jumbo v1, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return v0

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v1, :cond_1

    .line 248
    const-string/jumbo v1, "sync_link_LongLinkServiceManager"

    const-string/jumbo v2, "isConnected\uff1a [ longLinkService=null ]"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->isConnected()Z

    move-result v0

    .line 254
    const-string/jumbo v1, "sync_link_LongLinkServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected: [ isConnected="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 3

    .prologue
    .line 422
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLinkState\uff1a [ linkState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    if-nez v0, :cond_0

    .line 425
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "onLinkState\uff1a [ longLinkCallback=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->g:Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/ILongLinkCallBack;->onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0
.end method

.method public final declared-synchronized sendPacketUplink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplink\uff1a [ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][ appData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_0

    .line 344
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "sendPacketUplink\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 352
    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v2, "payload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->sendPacketUplink(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    :try_start_2
    const-string/jumbo v1, "sync_link_LongLinkServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacketUplink: [ JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sendPacketUplinkSync(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacketUplinkSync\uff1a [ data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_0

    .line 372
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "sendPacketUplinkSync\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :goto_0
    monitor-exit p0

    return-void

    .line 376
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->sendPacketUplinkSync(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAppName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAppName: [ appName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setAppName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setConnActionActive()V
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "setConnActionActive: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnActionActive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDebugMode(Z)V
    .locals 3

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setDebugMode: [ isDebugEnable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setDeviceId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setDeviceId: [ deviceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setDeviceId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setHostAddr(Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setHostAddr\uff1a [ host="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "][ port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ sslFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->setLongLinkAddr(Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setProductId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setProductId: [ productId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setProductId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setProductVersion(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setProductVersion: [ productVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setProductVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setUserInfo\uff1a [ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 145
    invoke-static {p2}, Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .line 147
    if-eq v0, v1, :cond_0

    .line 148
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "setUserInfo\uff1a [ userId sessionId need to be accordant]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_1

    .line 153
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "setUserInfo\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setUserId(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkAppInfo;->setSessionId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized startLink()V
    .locals 2

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "startLink\uff1a "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    monitor-exit p0

    return-void

    .line 280
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_1

    .line 281
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "startLink\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setForceStopped(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 286
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "startLink: [ already connected ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setForceStopped(Z)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setBackToFront(Z)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized startLinkOnResume()V
    .locals 3

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startLinkOnResume-channel["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->initConnet()V

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->startLink()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopLink()V
    .locals 2

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "stopLink\uff1a "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 329
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    if-nez v0, :cond_1

    .line 319
    const-string/jumbo v0, "sync_link_LongLinkServiceManager"

    const-string/jumbo v1, "stopLink\uff1a [ longLinkService=null ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setForceStopped(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 326
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->resetConnSeq()V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->d:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;

    invoke-interface {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkService;->disConnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
