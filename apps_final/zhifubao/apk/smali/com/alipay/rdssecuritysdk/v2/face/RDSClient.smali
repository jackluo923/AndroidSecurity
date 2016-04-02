.class public Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static c:Lcom/alipay/mobile/security/senative/APSE;

.field private static d:Z


# instance fields
.field private b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/alipay/mobile/security/senative/APSE;
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->c:Lcom/alipay/mobile/security/senative/APSE;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/security/senative/APSE;)Lcom/alipay/mobile/security/senative/APSE;
    .locals 0

    sput-object p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->c:Lcom/alipay/mobile/security/senative/APSE;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->d:Z

    return v0
.end method

.method public static declared-synchronized enableLog()V
    .locals 2

    const-class v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient$1;

    invoke-direct {v1, p0}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->d:Z

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->onControlClick(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGetFocus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->onKeyDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLostFocus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLostFocus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->onFocusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPage(Landroid/content/Context;Ljava/util/Map;Z)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->setContext(Landroid/content/Context;)V

    const-string/jumbo v1, "apdidToken"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v1, "umidToken"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v1, "utdid"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v1, "tid"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v1, "appver"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v1, "user"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v1, "appname"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v1, "appkey"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v1, "appPackageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v1, "pageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    const-string/jumbo v1, "refPageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    new-instance v1, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    move-object/from16 v2, p1

    move/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    iget-object v1, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    invoke-virtual {v1, v13, v14}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->onPage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    invoke-virtual {v0, p2}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->updateUser(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    invoke-virtual {v0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->onPageEnd()V

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->getContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelTreeBuilder;->buildDataForNativeSign(Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/lang/String;

    sget-object v4, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->c:Lcom/alipay/mobile/security/senative/APSE;

    invoke-static {}, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/alipay/mobile/security/senative/APSE;->encryptAndSignRds(Ljava/lang/Object;[B)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    const-string/jumbo v1, "{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"version\":\"1\","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"data\":\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/face/RDSClient;->b:Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/rdssecuritysdk/v2/impl/RDSModelManager;->onTouchScreen(Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
