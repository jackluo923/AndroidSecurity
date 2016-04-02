.class public final Lcom/taobao/dp/DeviceSecuritySDK;
.super Lcom/taobao/dp/client/b;


# static fields
.field public static final ENVIRONMENT_DAILY:I = 0x1

.field public static final ENVIRONMENT_ONLINE:I = 0x0

.field public static final ENVIRONMENT_PRE:I = 0x2

.field private static instance:Lcom/taobao/dp/DeviceSecuritySDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/dp/client/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$001(Lcom/taobao/dp/DeviceSecuritySDK;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/taobao/dp/client/b;->sendLoginResult(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;
    .locals 2

    sget-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    if-nez v0, :cond_1

    const-class v1, Lcom/taobao/dp/DeviceSecuritySDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/taobao/dp/util/g;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/taobao/dp/DeviceSecuritySDK;

    invoke-direct {v0, p0}, Lcom/taobao/dp/DeviceSecuritySDK;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/taobao/dp/DeviceSecuritySDK;->instance:Lcom/taobao/dp/DeviceSecuritySDK;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getSecurityToken()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/taobao/dp/client/b;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "1.4.2"

    return-object v0
.end method

.method public final init()V
    .locals 0

    invoke-super {p0}, Lcom/taobao/dp/client/b;->init()V

    return-void
.end method

.method public final init(Lcom/taobao/dp/http/IUrlRequestService;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecuritySDK init reqService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lcom/taobao/dp/client/b;->init(Lcom/taobao/dp/http/IUrlRequestService;)V

    return-void
.end method

.method public final initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V
    .locals 6

    const-string/jumbo v2, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    return-void
.end method

.method public final initAsync(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecuritySDK initAsync reqService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecuritySDK initAsync listener  ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/taobao/dp/DeviceSecuritySDK;->getEnvironment(I)Lcom/taobao/dp/client/a;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v6}, Lcom/taobao/dp/client/b;->init(Lcom/taobao/dp/client/a;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;Z)I

    return-void
.end method

.method public final initSync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;)I
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/taobao/dp/DeviceSecuritySDK;->initSync(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;)I

    move-result v0

    return v0
.end method

.method public final initSync(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;)I
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecuritySDK initSync reqService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/taobao/dp/DeviceSecuritySDK;->getEnvironment(I)Lcom/taobao/dp/client/a;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-super/range {v0 .. v6}, Lcom/taobao/dp/client/b;->init(Lcom/taobao/dp/client/a;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;Z)I

    move-result v0

    return v0
.end method

.method public final sendLoginResult(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/taobao/dp/a;

    invoke-direct {v0, p0, p1}, Lcom/taobao/dp/a;-><init>(Lcom/taobao/dp/DeviceSecuritySDK;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/dp/a;->start()V

    return-void
.end method

.method public final setEnvironment(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/taobao/dp/client/a;->a:Lcom/taobao/dp/client/a;

    invoke-super {p0, v0}, Lcom/taobao/dp/client/b;->setEnvironment(Lcom/taobao/dp/client/a;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/taobao/dp/client/a;->b:Lcom/taobao/dp/client/a;

    invoke-super {p0, v0}, Lcom/taobao/dp/client/b;->setEnvironment(Lcom/taobao/dp/client/a;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/taobao/dp/client/a;->c:Lcom/taobao/dp/client/a;

    invoke-super {p0, v0}, Lcom/taobao/dp/client/b;->setEnvironment(Lcom/taobao/dp/client/a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized setOnlineHost(Lcom/taobao/dp/OnlineHost;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "host is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/taobao/dp/client/a;->c:Lcom/taobao/dp/client/a;

    invoke-virtual {p1}, Lcom/taobao/dp/OnlineHost;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/dp/client/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
