.class public Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;
.super Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;


# instance fields
.field private data:Ljava/lang/String;

.field private dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

.field private fpRetryTimes:I

.field private fpSensorStatus:Z

.field private isValidateOk:Z

.field private iscancel:Z

.field private object:Ljava/lang/Object;

.field private properties:Ljava/util/Properties;

.field private scanType:I

.field private supportHardwarePay:I

.field private tipsMsg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/hardwarepay/base/AbstractHardwarePay;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->properties:Ljava/util/Properties;

    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    iput-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->properties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    return v0
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toSubmit(Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    return v0
.end method

.method static synthetic access$1308(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    return v0
.end method

.method static synthetic access$1400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createInitReplyJson(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    return v0
.end method

.method static synthetic access$702(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->iscancel:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    return p1
.end method

.method static synthetic access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    return-object p1
.end method

.method private addInitJson(Lcom/alipay/android/app/json/JSONObject;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->b()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_5

    :try_start_0
    const-string/jumbo v1, "support_hardware"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "fp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const-string/jumbo v2, "fp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6307\u7eb9"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "authinfo[AUTH_TYPE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "][VENDOR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "][PROTOCOL_VERSION:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "][PROTOCOL_TYPE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "][DEVICE_ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "][FP_DOWNLOAD_URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_4

    const/16 v2, 0x64

    iput v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    const-string/jumbo v2, "hd_vc"

    const-string/jumbo v3, "v4"

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    :goto_1
    const-string/jumbo v2, "authType"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string/jumbo v2, "vendor"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string/jumbo v2, "phoneModel"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->b(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "protocolVersion"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string/jumbo v2, "protocolType"

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    const-string/jumbo v2, "mfacDownloadUrl"

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {p1, v2, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "deviceId"

    const/4 v3, 0x6

    aget-object v0, v0, v3

    invoke-static {p1, v2, v0, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "hd_vc"

    const-string/jumbo v3, "v5"

    invoke-static {p1, v2, v3, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "authInfoType"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "vendor"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "phoneModel"

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "protocolVersion"

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "protocolType"

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mfacDownloadUrl"

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "deviceId"

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private createInitReplyJson(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->addInitJson(Lcom/alipay/android/app/json/JSONObject;Z)V

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v0, "message"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "result"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V
    .locals 3

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    const/16 v2, 0x259

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method private toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->b()V

    return-void
.end method

.method private toRegister(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;ILcom/alipay/android/app/json/JSONObject;Landroid/content/Context;ILcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V
    .locals 19

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->dialog:Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    const-string/jumbo v2, "scanType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "scanType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->scanType:I

    const-string/jumbo v2, "tipsMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->tipsMsg:Ljava/lang/String;

    :cond_0
    :try_start_0
    const-string/jumbo v2, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->data:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(IILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->isValidateOk:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpSensorStatus:Z

    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->fpRetryTimes:I

    new-instance v9, Lcom/alipay/android/app/hardwarepay/fingerprint/l;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/l;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/alipay/android/app/hardwarepay/fingerprint/m;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Lcom/alipay/android/app/hardwarepay/fingerprint/m;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Landroid/content/BroadcastReceiver;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    move-object/from16 v3, p4

    check-cast v3, Landroid/app/Activity;

    new-instance v10, Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move-object/from16 v14, p3

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v3, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "msp.fp.register.broadcaster"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private toSubmit(Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "\u6b63\u5728\u9a8c\u8bc1\u6307\u7eb9..."

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->a([Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iput p2, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    aput-object p4, v1, v3

    iput-object v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    const/16 v1, 0xb

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x7d3

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    return-void
.end method


# virtual methods
.method public varargs execute(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 14

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v1, p3, v4

    if-eqz v1, :cond_4

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_1

    check-cast v1, Ljava/lang/String;

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_1

    :cond_1
    instance-of v6, v1, Ljava/util/Properties;

    if-eqz v6, :cond_2

    check-cast v1, Ljava/util/Properties;

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->properties:Ljava/util/Properties;

    move-object v1, v2

    goto :goto_2

    :cond_2
    instance-of v6, v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v6, :cond_3

    check-cast v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-object v13, v1

    move-object v1, v2

    goto :goto_2

    :cond_3
    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    new-instance v6, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v6, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    invoke-virtual {v6, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/a;

    move/from16 v0, p2

    invoke-direct {v1, p0, v3, p1, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/a;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Landroid/content/Context;I)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ex"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/b;

    move-object v2, p0

    move-object v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/alipay/android/app/hardwarepay/fingerprint/b;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Landroid/content/Context;ILcom/alipay/android/app/json/JSONObject;I)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->c()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p2

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "version"

    invoke-virtual {v6, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "data"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2, v7}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-direct {p0, v7, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createUserStatusReplyJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p2

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6307\u7eb9\u652f\u4ed8\uff1atype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const-string/jumbo v1, "version"

    invoke-virtual {v6, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "data"

    invoke-virtual {v6, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-virtual {v3, v7, v1, v2, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(IILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    move/from16 v0, p2

    invoke-direct {v1, p0, p1, v3, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/c;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;I)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_6
    const/4 v9, 0x2

    move-object v7, p0

    move-object v8, v3

    move-object v10, v6

    move-object v11, p1

    move/from16 v12, p2

    invoke-direct/range {v7 .. v13}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toRegister(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;ILcom/alipay/android/app/json/JSONObject;Landroid/content/Context;ILcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v1, 0x64

    move/from16 v0, p2

    invoke-direct {p0, v3, v1, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->sendOpenCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;II)V

    goto/16 :goto_0

    :sswitch_8
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move/from16 v0, p2

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_9
    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string/jumbo v4, "data"

    invoke-virtual {v6, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(IILjava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v2, "type"

    const/16 v4, 0x25d

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "result"

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p2

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v2, "type"

    sget v4, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->d:I

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    const-string/jumbo v2, "result"

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    sget-object v2, Lcom/alipay/android/app/hardwarepay/base/RequestManager;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p2

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->toCallback(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0xd -> :sswitch_2
        0xe -> :sswitch_1
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x1fa -> :sswitch_a
        0x259 -> :sswitch_5
        0x25a -> :sswitch_6
        0x25b -> :sswitch_7
        0x25c -> :sswitch_9
        0x25d -> :sswitch_8
    .end sparse-switch
.end method

.method public varargs init(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 10

    const/16 v9, 0x7f

    const/16 v8, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v0, p3, v2

    instance-of v0, v0, Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_0

    aget-object v0, p3, v2

    check-cast v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a()Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;

    move-result-object v5

    array-length v6, p3

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v1, p3, v4

    if-eqz v1, :cond_2

    instance-of v7, v1, Ljava/util/Properties;

    if-eqz v7, :cond_2

    check-cast v1, Ljava/util/Properties;

    iput-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->properties:Ljava/util/Properties;

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->properties:Ljava/util/Properties;

    invoke-virtual {v5, p1, p2, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Landroid/content/Context;ILjava/util/Properties;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6307\u7eb9\u652f\u4ed8\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    if-eq v1, v8, :cond_4

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    if-ne v1, v9, :cond_9

    :cond_4
    const-string/jumbo v1, "fp"

    :goto_2
    const-string/jumbo v4, "support_hardware"

    invoke-static {v0, v4, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "external_info"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "external_info"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "out_trade_no"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->a(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "hd_isopen"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    :cond_5
    iget v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    if-eq v1, v8, :cond_6

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->supportHardwarePay:I

    if-ne v1, v9, :cond_8

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "com.eg.android.AlipayGphoneRC"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    invoke-virtual {v5}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerprintPayHelper;->c()I

    move-result v1

    if-lez v1, :cond_a

    move v1, v3

    :goto_3
    const-string/jumbo v2, "supportapp"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/android/app/hardwarepay/base/FunctionUtils;->b(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0, v0, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->addInitJson(Lcom/alipay/android/app/json/JSONObject;Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, ""

    goto :goto_2

    :cond_a
    move v1, v2

    goto :goto_3
.end method
