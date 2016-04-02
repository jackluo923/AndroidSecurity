.class public Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/GestureService;


# static fields
.field private static synthetic i:[I


# instance fields
.field final a:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Lcom/alipay/mobile/base/config/ConfigService;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I
    .locals 3

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->i:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->values()[Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->SETTINGGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->VALIDATEGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->i:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;-><init>()V

    const-string/jumbo v0, "GestureServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->g:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->h:Ljava/util/List;

    return-void
.end method

.method private a()Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 gestureStartClientContain()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u83b7\u53d6\u5f53\u524d\u767b\u5f55\u7528\u6237\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "\u5df2\u7ecf\u83b7\u53d6\u5230\u5f53\u524d\u767b\u5f55\u7528\u6237\u4fe1\u606f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "true"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u7528\u6237\u9009\u62e9\u8df3\u8fc7\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u5224\u65ad\u6761\u4ef6\u51fd\u6570\u4e3a\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->VALIDATEGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e3a\u7a7a\uff0c\u5224\u65ad\u6761\u4ef6\u51fd\u6570\u8bbe\u7f6e\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->SETTINGGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0
.end method

.method private a(ZZ)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 gestureContain(boolean isForceValidate, boolean isVerify)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u83b7\u53d6\u5f53\u524d\u767b\u5f55\u7528\u6237\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "\u5df2\u7ecf\u83b7\u53d6\u5230\u5f53\u524d\u767b\u5f55\u7528\u6237\u4fe1\u606f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "true"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u7528\u6237\u9009\u62e9\u8df3\u8fc7\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e3a\u7a7a\uff0c\u5224\u65ad\u6761\u4ef6\u51fd\u6570\u8bbe\u7f6e\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->SETTINGGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u5224\u65ad\u6761\u4ef6\u51fd\u6570\u4e3a\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->VALIDATEGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedVerifyGesture()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u4f46\u662f\u672c\u5730\u8868\u793a\u4e0d\u9700\u8981\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u4f46\u662f\u672c\u5730\u8868\u793a\u4e0d\u9700\u8981\u89e3\u9501\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u4f46\u662f\u672c\u5730\u8868\u793a\u9700\u8981\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->VALIDATEGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "20000008"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "setORcheck"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->setGesturePreCheck(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "startGestureApp \u7279\u5f81\u503c\u8bbe\u7f6e\u5931\u8d25\uff0c\u4e0d\u8fdb\u5165\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->showGestureApp(Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v0, "false"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "gestureSkipStr in gestureServiceImpl is null"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    :try_start_0
    const-string/jumbo v0, "UC-AQ-0920-3"

    const-string/jumbo v2, "nullGestureSkipStr"

    invoke-static {v0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 1

    invoke-static {p1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)Landroid/app/Activity;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AddBankCardStepZeroActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TabLauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "berCardDetailActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AlipassDetailActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AlipassQueryCardActivity_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)Lcom/alipay/mobile/base/config/ConfigService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528notifyGestureLock()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "20000006"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reflectStartApp sourceId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " targetId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "doStartApp"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public callback(Z)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "callback(flag)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:J

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;->onGestureResult(Z)V

    goto :goto_0
.end method

.method public checkToAlertModeInfo()V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "securityapp"

    const-string/jumbo v2, "GestureAlertInfo"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "GestureDefaultConvenientAlertEnable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "receive GestureDefaultConvenientAlert"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "NO"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v3, "GestureDefaultConvenientAlertEnable"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "GestureDefaultConvenientAlertEnable: NO"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GestureAlertInfo"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "GestureUpgradeDefaultConvenientAlertEnable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "receive GestureUpgradeDefaultConvenientAlert"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "NO"

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v3, "GestureUpgradeDefaultConvenientAlertEnable"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "GestureUpgradeDefaultConvenientAlertEnable: NO"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "GestureAlertInfo"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "no gesture alert info received"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/alipay/mobile/security/gesture/service/n;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/gesture/service/n;-><init>(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public gesture()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 gesture()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->gesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 gesture() return gesturefailState="

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public gesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 \u5e26\u56de\u8c03\u51fd\u6570gesture(GestureCallBack callBack)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v3}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(ZZ)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v3}, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;->onGestureResult(Z)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 gesture(GestureCallBack callBack) \u6b63\u5e38return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u5524\u8d77\u624b\u52bf\u754c\u9762\uff0c\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "callBack!=null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528\u624b\u52bf\u754c\u9762\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e3a\u7a7a\uff0c\u5524\u8d77\u624b\u52bf\u754c\u9762\uff0c\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "callBack!=null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "YES"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "GestureGuideSetEnable"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528\u624b\u52bf\u754c\u9762\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "GestureGuideSetEnable is false"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCanPassGesture()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NO"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "hongbao_is_need_gesture"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyunLockApp()V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528notifyunLockApp()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "\u91ca\u653e\u624b\u52bf\u6539\u9020\u540c\u6b65\u9501"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "oncreate configService is null"

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    new-instance v2, Lcom/alipay/mobile/security/gesture/service/k;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/gesture/service/k;-><init>(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    return-void

    :cond_0
    const-string/jumbo v0, "oncreate configService is not null"

    goto :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "onDestroy set NeedAuthGesture and NeedVerifyGesture true"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedVerifyGesture(Z)V

    return-void
.end method

.method public putAutoLoginKey(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "setAutoLogin"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd kk:mm:ss:SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "###"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v2

    const-string/jumbo v3, "securityapp"

    const-string/jumbo v4, "security"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public restoreStateValidateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "\u8c03\u7528restoreStateValidateGesture(callBack)"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "convenient"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "restoreStateValidateGesture in convenient"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a()Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v7, 0x493e0

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "\u5f02\u5e38\u6062\u590d\u624b\u52bf\u754c\u9762\uff0c\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u7531\u4e8e\u4e0a\u6b21\u9a8c\u8bc1\u624b\u52bf\u4e0e\u6b64\u6b21\u624b\u52bf\u9a8c\u8bc1\u65f6\u95f4\u5c0f\u4e8e5min \u4e0d\u7528\u624b\u52bf\u9a8c\u8bc1"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v5, "GestureServiceImpl"

    const-string/jumbo v6, "restoreStateValidateGesture \u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MM-1113-6"

    const-string/jumbo v5, "YCDQ"

    invoke-static {v0, v5}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b()V

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V

    iput-wide v3, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:J
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setGesture()Z
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 setGesture()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    return v0
.end method

.method public setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528setGesture(params,callBack)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "YES"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "GestureGuideSetEnable"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 isNeedSetGesture()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(ZZ)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8be5\u7528\u6237\u4e0d\u9700\u8981\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    :goto_0
    return v3

    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u7528\u6237\u9700\u8981\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v0, "setORcheck"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->setGesturePreCheck(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "isNeedSetGesture \u7279\u5f81\u503c\u8bbe\u7f6e\u5931\u8d25\uff0c\u4e0d\u8fdb\u5165\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V
    :try_end_2
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->showGestureApp(Landroid/os/Bundle;Z)V
    :try_end_3
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    :try_end_4
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "\u8c03\u7528setGesture(callBack)"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "YES"

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v4, "GestureGuideSetEnable"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(ZZ)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "\u7528\u6237\u9700\u8981\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setGesturePassFlag()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8bbe\u7f6eGesturePassFlag\u4e3atrue"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setIsPassGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setPassGestureTime(J)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/security/gesture/service/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/gesture/service/l;-><init>(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setGesturePreCheck(Landroid/os/Bundle;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "\u52a0\u5bc6sessionId\u5931\u8d25"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "preCheck"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "\u8fdb\u5165\u8bbe\u7f6e\u624b\u52bf\u524d\uff0c\u8bbe\u7f6e\u7279\u5f81\u503c\u6210\u529f"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "sessionId\u4e3a\u7a7a\uff0c\u4e0d\u8fdb\u5165\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u9ed1\u5323\u5b50\u5f02\u5e38\uff0c\u4e0d\u8fdb\u5165\u8bbe\u7f6e\u624b\u52bf "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public settingCallBack(Z)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "settingCallBack flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;->onGestureResult(Z)V

    goto :goto_0
.end method

.method public settingGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "\u8c03\u7528settingGesture(Bundle bundle, GestureCallBack callBack)"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->h:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->setGesturePreCheck(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "startGestureApp \u7279\u5f81\u503c\u8bbe\u7f6e\u5931\u8d25\uff0c\u4e0d\u8fdb\u5165\u8bbe\u7f6e\u624b\u52bf"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->showGestureApp(Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->settingCallBack(Z)V

    goto :goto_0
.end method

.method public showGestureApp(Landroid/os/Bundle;Z)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "showGestureApp"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v2, "GestureCacheGroup"

    const-string/jumbo v3, "GestureActivityParams"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "20000006"

    const-string/jumbo v1, "20000006"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "20000183"

    const-string/jumbo v1, "20000183"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startGestureIfNecessary(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "\u8c03\u7528isNeedCheckGesture()"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(ZZ)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b()V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u5524\u8d77\u624b\u52bf\u754c\u9762\uff0c\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public sycnStartGestureIfNecessary()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "\u624b\u52bf\u670d\u52a1sycnStartGestureIfNecessary"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->startGestureIfNecessary(Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "sycnStartGestureIfNecessary setNeedAuthGesture true"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public validateGesture()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528 validateGesture() "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->startGestureIfNecessary(Z)Z

    return-void
.end method

.method public validateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u8c03\u7528validateGesture(callBack)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4, v3}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(ZZ)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u5524\u8d77\u624b\u52bf\u754c\u9762\uff0c\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public validateGestureIfNecessary(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "validateGestureIfNecessary"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureServiceImpl"

    const-string/jumbo v3, "is not need auth gesture"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;->onGestureResult(Z)V

    goto :goto_0
.end method

.method public validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "\u8c03\u7528validateStartClientGesture(callBack)"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a()Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "\u624b\u52bf\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u5524\u8d77\u624b\u52bf\u754c\u9762\uff0c\u9a8c\u8bc1\u624b\u52bf"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public verifyCallBack(Z)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verifyCallBack flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;->onGestureResult(Z)V

    goto :goto_0
.end method

.method public verifyGesture(ZLcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "verifyGestureIfNecessary(callback)"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->g:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(ZZ)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->$SWITCH_TABLE$com$alipay$mobile$security$gesture$service$GestureServiceImpl$GestureEnum()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->verifyCallBack(Z)V

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureServiceImpl"

    const-string/jumbo v4, "gesture pwd is not empty, start verify gesture activity"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "20000006"

    const-string/jumbo v3, "20000181"

    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->verifyCallBack(Z)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public writeLoginLog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "UC-ZHAQ-56"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "loginTrace"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method
