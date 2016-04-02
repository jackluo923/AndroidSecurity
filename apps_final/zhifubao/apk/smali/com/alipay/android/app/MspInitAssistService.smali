.class public abstract Lcom/alipay/android/app/MspInitAssistService;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/MspInitAssistService;

.field private static b:Lcom/alipay/android/app/MspInitAssistService;

.field private static c:Lcom/alipay/android/app/MspInitAssistService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiniInstance()Lcom/alipay/android/app/MspInitAssistService;
    .locals 3

    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->b:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->b:Lcom/alipay/android/app/MspInitAssistService;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.ui.quickpay.MspInitAssistServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspInitAssistService;

    sput-object v0, Lcom/alipay/android/app/MspInitAssistService;->b:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->b:Lcom/alipay/android/app/MspInitAssistService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " getMiniInstance "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMspInstance()Lcom/alipay/android/app/MspInitAssistService;
    .locals 3

    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->a:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->a:Lcom/alipay/android/app/MspInitAssistService;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.MspInitAssistServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspInitAssistService;

    sput-object v0, Lcom/alipay/android/app/MspInitAssistService;->a:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->a:Lcom/alipay/android/app/MspInitAssistService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " getMspInstance "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->c:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->c:Lcom/alipay/android/app/MspInitAssistService;

    goto :goto_0

    :cond_1
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.pay.MspInitAssistServiceImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspInitAssistService;

    sput-object v0, Lcom/alipay/android/app/MspInitAssistService;->c:Lcom/alipay/android/app/MspInitAssistService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/MspInitAssistService;->c:Lcom/alipay/android/app/MspInitAssistService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " getSdkInstance "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static initFirstCreate(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMiniInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceFirstCreate(Landroid/content/Context;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceFirstCreate(Landroid/content/Context;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceFirstCreate(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static initServiceCreate()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMiniInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceCreate()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceCreate()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/android/app/MspInitAssistService;->initWhenServiceCreate()V

    :cond_2
    return-void
.end method

.method public static isRunAsSdk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static stopServiceDestory()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/MspInitAssistService;->stopWhenServiceDestroy(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMiniInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/MspInitAssistService;->stopWhenServiceDestroy(Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public demoPay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSdkAlixPayStub(Lcom/alipay/android/app/IServiceAdapter;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initWhenServiceCreate()V
.end method

.method public abstract initWhenServiceFirstCreate(Landroid/content/Context;)V
.end method

.method public pay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public registerCallback(Lcom/alipay/android/app/IAlipayCallback;)V
    .locals 0

    return-void
.end method

.method public registerCallback(Lcom/alipay/android/app/IRemoteCallback;)V
    .locals 0

    return-void
.end method

.method public abstract stopWhenServiceDestroy(Landroid/content/Context;)V
.end method

.method public unregisterAlipayCallback()V
    .locals 0

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    return-void
.end method
