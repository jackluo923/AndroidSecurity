.class public Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;


# instance fields
.field private b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

.field private c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

.field private d:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/util/Properties;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a:Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;-><init>()V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a:Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a:Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.alipay.android.app.hardwarepay.fingerprint.FingerPrintPay"

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Ljava/lang/String;)Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.alipay.android.app.hardwarepay.bracelet.BraceletPay"

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Ljava/lang/String;)Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/util/Properties;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "alipay_hw_buildmodle"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->k(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "msp"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->k(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/util/Properties;

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    invoke-static {p1, v1, v0}, Lcom/alipay/android/app/pay/GlobalConstant;->loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs b(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(I)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->init(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->init(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->createRequestJson(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs a(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(I)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;)V

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    array-length v3, p3

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p3, v0

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/util/Properties;

    aput-object v0, v2, v1

    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    invoke-interface {v0, p1, p2, v2}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->execute(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    invoke-interface {v0, p1, p2, v2}, Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;->execute(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    const-string/jumbo v1, "fp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v5

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/util/Properties;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v2, v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b(Landroid/content/Context;I[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "mfacDownloadUrl"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    const-string/jumbo v1, "bl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v5

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->d:Ljava/util/Properties;

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v3, v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b(Landroid/content/Context;I[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "bl_downloadUrl"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    :cond_1
    invoke-static {p2}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "support_hardware"

    const-string/jumbo v1, ""

    invoke-static {p2, v0, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->b(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iput-object v6, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    iput-object v6, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->c:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    iput-object v0, p0, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b:Lcom/alipay/android/app/hardwarepay/base/IHardwarePay;

    return-void
.end method
