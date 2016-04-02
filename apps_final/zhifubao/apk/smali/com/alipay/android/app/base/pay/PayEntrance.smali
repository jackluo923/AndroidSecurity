.class public Lcom/alipay/android/app/base/pay/PayEntrance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/alipay/android/app/base/pay/a;

    invoke-direct {v0}, Lcom/alipay/android/app/base/pay/a;-><init>()V

    sput-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/base/pay/PayEntrance;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/base/trade/TradeManager;->c()V

    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e()V

    const-string/jumbo v0, " PayEntrance  pay  start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "6002"

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniWindowFrame;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/alipay/android/app/statistic/StatisticManager;->a([Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->e()V

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/helper/MspConfig;->m()Lcom/alipay/android/app/helper/ProtocolType;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/alipay/android/app/MspInitAssistService;->pay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v2, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v3

    invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v2

    invoke-static {v4}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/base/trade/TradeManager;->e(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/alipay/android/app/base/trade/TradeManager;->b(Lcom/alipay/android/app/base/trade/Trade;)V

    :cond_1
    :goto_1
    new-instance v2, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;

    invoke-direct {v2}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Lcom/alipay/android/app/base/trade/Trade;

    invoke-direct {v1, v5, v6, v4, v2}, Lcom/alipay/android/app/base/trade/Trade;-><init>(IILjava/lang/String;Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    new-instance v6, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-direct {v6}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;-><init>()V

    invoke-virtual {v1, v6}, Lcom/alipay/android/app/base/trade/Trade;->a(Lcom/alipay/android/app/base/pay/IActivityAdapter;)V

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/base/trade/TradeManager;->a(Lcom/alipay/android/app/base/trade/Trade;)V

    invoke-static {v4}, Lcom/alipay/android/app/pay/GlobalConstant;->initGateWay(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1, v5, v4}, Lcom/alipay/android/app/base/message/MspMessage;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()V

    invoke-static {}, Lcom/alipay/android/app/util/LogAgent;->a()V

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-boolean v1, v2, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/alipay/android/app/base/pay/PayEntrance;->c:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/android/app/base/pay/PayEntrance;->c:Z

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/MspInitAssistService;->initFirstCreate(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->initServiceCreate()V

    invoke-static {}, Lcom/alipay/android/app/MspInitAssistService;->getMspInstance()Lcom/alipay/android/app/MspInitAssistService;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/alipay/android/app/MspInitAssistService;->pay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v1, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    :goto_4
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/LogAgent;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->l()V

    goto/16 :goto_0

    :cond_4
    :try_start_6
    invoke-virtual {v2, v6}, Lcom/alipay/android/app/base/trade/TradeManager;->b(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/alipay/android/app/base/trade/TradeManager;->b(Lcom/alipay/android/app/base/trade/Trade;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v2, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_7
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v2

    throw v1

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->b()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    sget-object v1, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Lcom/alipay/android/app/base/pay/PayEntrance;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6
.end method

.method static synthetic a()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/base/pay/PayEntrance;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;->a(Lcom/alipay/android/app/base/pay/PayEntrance$PayResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/StatisticManager;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->e()V

    invoke-static {}, Lcom/alipay/android/app/statistic/StatisticManager;->b()V

    return-void
.end method
