.class public Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;
.super Ljava/lang/Object;


# static fields
.field protected static final TAG:Ljava/lang/String; = "RDS"

.field private static debug:Z

.field private static mcontext:Landroid/content/Context;

.field private static se:Lcom/alipay/mobile/security/senative/APSE;


# instance fields
.field private rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/alipay/mobile/security/senative/APSE;
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->se:Lcom/alipay/mobile/security/senative/APSE;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/security/senative/APSE;)Lcom/alipay/mobile/security/senative/APSE;
    .locals 0

    sput-object p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->se:Lcom/alipay/mobile/security/senative/APSE;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->debug:Z

    return v0
.end method

.method public static declared-synchronized dbg()V
    .locals 2

    const-class v0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->debug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMcontext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->debug:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK$1;

    invoke-direct {v1, p0}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->debug:Z

    return v0
.end method

.method private static isPwdView(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setMcontext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->mcontext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized getData()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->getMcontext()Landroid/content/Context;
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
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-static {}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->getMcontext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->getData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/lang/String;

    sget-object v3, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->se:Lcom/alipay/mobile/security/senative/APSE;

    invoke-static {}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->getMcontext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/security/senative/APSE;->encryptAndSignRds(Ljava/lang/Object;[B)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onControlClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->controlClick(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFocusChange(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->onFocusChange(Landroid/view/View;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onKeyDown(Landroid/view/View;Ljava/lang/String;C)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->isPwdView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->onPwdKeyDown(Landroid/view/View;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->keyDown(Landroid/view/View;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onKeyDown(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->isPwdView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->onPwdKeyDown(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->keyDown(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onKeyDown(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->isPwdView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->onPwdKeyDown(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->keyDown(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPage(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->setMcontext(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-direct {v0}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->init(Landroid/content/Context;Ljava/util/Map;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPageEnd(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-virtual {v0, p2}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->setUserId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPwdKeyDown(Landroid/view/View;Ljava/lang/String;C)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    const/16 v1, 0x2a

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->keyDown(Landroid/view/View;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPwdKeyDown(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    const/16 v1, 0x2a

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->keyDown(Landroid/view/View;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPwdKeyDown(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    const/16 v1, 0x2a

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->keyDown(Landroid/view/View;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTouchScreen(Landroid/view/View;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/rdssecuritysdk/face/RDSInfoSDK;->rdsInfoCollector:Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/rdssecuritysdk/impl/RDSInfoCollector;->onTouchScreen(Landroid/view/View;Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
