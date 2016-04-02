.class public Lcom/alipay/android/app/assist/PayHelperServcieImpl;
.super Lcom/alipay/android/app/helper/PayHelperServcie;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/helper/PayHelperServcie;-><init>()V

    return-void
.end method


# virtual methods
.method public createLiveConnection()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelper;->a()V

    return-void
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaySysInfo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelper;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTIDValue()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    return-object v0
.end method

.method public getVirtualImei()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualImsi()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hardwarePayExecute(Landroid/content/Context;ILjava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;)V
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PayHelperServcieImpl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput p2, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->a:I

    if-ne p2, v2, :cond_0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->b:I

    sput-object p4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->c:Ljava/lang/Object;

    :cond_0
    if-ne p2, v3, :cond_1

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->d:I

    sput-object p4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    aput-object p4, v1, v3

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public isExistMsp()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public loadLocalTid()Lcom/alipay/android/app/helper/Tid;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->a()Lcom/alipay/android/app/helper/Tid;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadOrCreateTID()Lcom/alipay/android/app/helper/Tid;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadOrCreateTID return "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    move-object v2, v1

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public resetTID()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
