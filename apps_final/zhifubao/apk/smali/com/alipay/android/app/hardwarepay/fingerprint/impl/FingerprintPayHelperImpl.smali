.class public Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;
.super Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;


# instance fields
.field private a:Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;-><init>()V

    return-void
.end method

.method private d()Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->a:Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/util/Properties;)I
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->d()Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;->init(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 5

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->d()Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;->checkUserStatus(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "msp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u94b1\u5305-FingerprintPayHelperImpl-checkUserStatus result\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final a(ILjava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->d()Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;->process(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "msp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u94b1\u5305-FingerprintPayHelperImpl-process type\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->d()Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    move-result-object v0

    check-cast p4, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;->process(IILjava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->d()Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;->process(IILjava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "msp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u94b1\u5305-FingerprintPayHelperImpl-\u56de\u8c03command\uff1a"

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

    sget-object v3, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    instance-of v1, v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;

    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;->callBack(ILjava/lang/String;)V

    :cond_2
    const/4 v0, -0x1

    sput v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->d:I

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->d()Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;->getAuthInfo()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/impl/FingerprintPayHelperImpl;->d()Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;->registedFingerPrintNumber()I

    move-result v0

    return v0
.end method
