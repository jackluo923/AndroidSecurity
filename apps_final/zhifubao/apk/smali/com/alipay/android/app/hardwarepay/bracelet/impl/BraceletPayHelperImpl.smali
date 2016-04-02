.class public Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;
.super Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;


# instance fields
.field private a:Lcom/alipay/android/app/hardwarepay/BraceletPayService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPayHelper;-><init>()V

    return-void
.end method

.method private c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->a:Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/util/Properties;)I
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x65

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/BraceletPayService;->initHardwarePay(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/android/app/hardwarepay/BraceletPayService;->process(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    const/4 v4, 0x2

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/hardwarepay/BraceletPayService;->process(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/hardwarepay/BraceletPayService;->scanBluetoothDevice(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "msp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u94b1\u5305-BraceletPayHelperImpl-\u56de\u8c03command\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->c:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    sput v4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    :goto_1
    return-void

    :cond_1
    instance-of v1, v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;->callBack(ILjava/lang/String;)V

    :cond_2
    sput v4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/hardwarepay/BraceletPayService;->checkUserStatus(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/bracelet/impl/BraceletPayHelperImpl;->c()Lcom/alipay/android/app/hardwarepay/BraceletPayService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/BraceletPayService;->getAuthInfo()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
