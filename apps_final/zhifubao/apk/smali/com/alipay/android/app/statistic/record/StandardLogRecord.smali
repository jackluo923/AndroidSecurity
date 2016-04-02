.class public Lcom/alipay/android/app/statistic/record/StandardLogRecord;
.super Lcom/alipay/android/app/statistic/record/LogRecord;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/alipay/android/app/statistic/record/LogRecord;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->e:Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;-><init>()V

    invoke-virtual {p0, v2, v2, v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    const/4 v0, 0x2

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldApp;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldApp;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    const/4 v0, 0x3

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    const/4 v0, 0x4

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldIds;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldIds;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    const/4 v0, 0x5

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    const/4 v0, 0x6

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    const/4 v0, 0x7

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    const/16 v0, 0x8

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldError;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldError;-><init>()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    sget-object v0, Lcom/alipay/android/app/statistic/StatisticManager;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/FileUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 2

    const/4 v1, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(ILcom/alipay/android/app/statistic/logfield/LogField;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldApp;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldIds;

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_1

    :cond_7
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_1

    :cond_8
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lcom/alipay/android/app/statistic/logfield/LogFieldError;

    if-eqz v0, :cond_a

    const/16 v0, 0x8

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldApp;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/statistic/logfield/LogFieldApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;-><init>()V

    const-string/jumbo v0, "inland"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "1.1"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;->e(Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.quickpay"

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getSdkInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/app/MspInitAssistService;->getChannelInfo()Lcom/alipay/android/app/pay/channel/ChannelInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alipay/android/app/pay/channel/ChannelInfo;->b()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldSDK;->g(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/LogFieldIds;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldIds;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldIds;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldIds;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;

    invoke-direct {v2}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;-><init>()V

    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/DeviceInfo;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->i(Ljava/lang/String;)V

    sget-boolean v0, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "gw"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->j(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->g(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldDevice;->h(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/statistic/record/StandardLogRecord;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "rpc"

    goto :goto_1
.end method
