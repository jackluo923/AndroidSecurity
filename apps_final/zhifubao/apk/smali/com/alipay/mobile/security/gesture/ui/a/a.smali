.class public final Lcom/alipay/mobile/security/gesture/ui/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

.field private c:Z

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 7

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "show_color_alert"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->a:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->c:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->e:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->f:Z

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    const-string/jumbo v5, "NO"

    const-string/jumbo v6, "SecurityGestureServiceShutdownEnabled"

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->c:Z

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureShutdownHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mGestureShutdownEnabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsShutDown\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsOverInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->c:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->e:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/gestureclose/GesturecloseManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/gestureclose/GesturecloseManagerFacade;

    new-instance v1, Lcom/alipay/mobile/security/gesture/ui/a/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/security/gesture/ui/a/b;-><init>(Lcom/alipay/mobile/security/gesture/ui/a/a;Lcom/alipay/mobilesecurity/biz/gw/service/gestureclose/GesturecloseManagerFacade;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    const-string/jumbo v3, "show_color_alert"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v4, "isShutDown"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v3, "shutdownMsg"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v3, v3, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "GestureShutdownHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "currentTimeMillis: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " lastAlertTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureShutdownHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureShutdownHelper"

    const-string/jumbo v2, "no need to sendRpc"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    move-wide v0, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/a/a;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/ui/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/a/f;->H:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/a/c;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/a/c;-><init>(Lcom/alipay/mobile/security/gesture/ui/a/a;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/alipay/mobile/a/f;->h:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/security/gesture/ui/a/d;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/security/gesture/ui/a/d;-><init>(Lcom/alipay/mobile/security/gesture/ui/a/a;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "20000006"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/ui/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://baoxian.alipay.com/zhx/m/handsecurityview.htm"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000006"

    const-string/jumbo v3, "20000067"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureShutdownHelper"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/gesture/ui/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "GestureShutdownHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mGestureShutdownEnabled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIsShutDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIsOverInterval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIsRpcFinish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/a/f;->G:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    const-string/jumbo v3, "\u597d\u7684\uff0c\u8fd9\u5c31\u53bb\u770b"

    new-instance v4, Lcom/alipay/mobile/security/gesture/ui/a/e;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/gesture/ui/a/e;-><init>(Lcom/alipay/mobile/security/gesture/ui/a/a;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/a/f;->C:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/a;->b:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V

    goto :goto_0
.end method
