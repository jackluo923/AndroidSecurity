.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->e:Z

    new-instance v0, Lcom/alipay/mobile/phonecashier/service/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/phonecashier/service/a;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->f:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->d:Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->getUserInfoSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->e:Z

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 10

    const/16 v0, -0x1e61

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/16 v0, -0x1e60

    const-string/jumbo v2, "\u7cfb\u7edf\u7e41\u5fd9\u8bf7\u7a0d\u5019\u91cd\u8bd5\uff01"

    invoke-interface {p1, v0, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/phonecashier/MspPayApp;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.payend.action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/mini/fingerprint/PayActionReceiver;

    invoke-direct {v4}, Lcom/alipay/android/mini/fingerprint/PayActionReceiver;-><init>()V

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "MspPayApp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u8bf7\u6c42\u53c2\u6570"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->f:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-static {v2, v3}, Lcom/alipay/android/app/helper/PayHelper;->a(Ljava/lang/String;Lcom/alipay/android/app/IRemoteServiceCallback;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "(\".*);(.*\")"

    const-string/jumbo v5, "$1-$2"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-static {v3, v4}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "resultStatus"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "memo"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "MspPayApp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u7ed3\u679c:resultStatus:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",memo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->e:Z

    if-nez v6, :cond_3

    const/16 v0, 0x1b59

    const-string/jumbo v2, "\u6846\u67b6\u53d6\u6d88"

    invoke-interface {p1, v0, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/phonecashier/MspPayApp;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v4, :cond_c

    :try_start_3
    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "MspPayApp"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u7ed3\u679c:objContent="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2328

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1f40

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1774

    if-ne v0, v4, :cond_a

    :cond_4
    new-instance v4, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;-><init>()V

    const-string/jumbo v6, "result"

    invoke-virtual {v3, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "MspPayApp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u7ed3\u679c:result="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_d

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "\"&"

    invoke-static {v3, v6}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "body"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setBody(Ljava/lang/String;)V

    const-string/jumbo v7, "notify_url"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setNotifyUrl(Ljava/lang/String;)V

    const-string/jumbo v7, "out_trade_no"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setOutTradeNo(Ljava/lang/String;)V

    const-string/jumbo v7, "partner"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setPartner(Ljava/lang/String;)V

    const-string/jumbo v7, "seller"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setSeller(Ljava/lang/String;)V

    const-string/jumbo v7, "subject"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setSubject(Ljava/lang/String;)V

    const-string/jumbo v7, "total_fee"

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setTotalFee(Ljava/lang/String;)V

    const-string/jumbo v7, "call_back_url"

    invoke-virtual {v6, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setCallBackUrl(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setOriginalString(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setResultCode(I)V

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setMemo(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "MspPayApp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "phoneCashierPaymentResult to string   "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->b:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->getBizType()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "confirm_goods"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v5, "MspPayApp"

    const-string/jumbo v6, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u786e\u8ba4\u6536\u8d27\u63a5\u53e3"

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    :try_start_5
    invoke-static {}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a()Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a()Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v4}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/phonecashier/MspPayApp;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    :try_start_6
    const-string/jumbo v0, "phonecashier.pay.success"

    const-string/jumbo v5, "phonecashier.pay.success"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "MspPayApp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " \u53d1\u6d88\u606f\u5931\u8d25"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_7

    const/16 v2, -0x22b8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/phonecashier/MspPayApp;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    :try_start_9
    invoke-interface {p1, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    instance-of v3, v2, Lcom/alipay/mobile/phonecashier/MspPayApp;

    if-eqz v3, :cond_9

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    :cond_9
    throw v0

    :cond_a
    const/16 v4, 0x2710

    if-ne v0, v4, :cond_d

    :try_start_a
    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "MspPayApp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u7ed3\u679c:result="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_d

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string/jumbo v6, "BANK_CARD-"

    const-string/jumbo v7, "BANK_CARD;"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setResultCode(I)V

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;->setMemo(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a()Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a()Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v4}, Lcom/alipay/android/mini/fingerprint/ActionCallBackManager;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_6
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/phonecashier/MspPayApp;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    :try_start_b
    invoke-interface {p1, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V

    goto :goto_6

    :cond_c
    const/16 v2, -0x1e61

    const-string/jumbo v3, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {p1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V

    :cond_d
    invoke-interface {p1, v0, v5}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPayFailed(ILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/phonecashier/MspPayApp;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_1
.end method
