.class final Lcom/alipay/mobile/security/gesture/service/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/l;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u91cd\u7f6eGesturePassFlag\u4e3afalse"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setIsPassGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setPassGestureTime(J)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/l;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "convenient"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/alipay/mobile/security/gesture/service/m;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/security/gesture/service/m;-><init>(Lcom/alipay/mobile/security/gesture/service/l;Lcom/alipay/mobile/framework/service/ext/security/AuthService;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isCurrentTopActivityNeedGesture(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/l;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->startGestureIfNecessary(Z)Z

    :cond_1
    return-void
.end method
