.class public Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/NicknameService;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/NicknameService;-><init>()V

    const-string/jumbo v0, "NicknameServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->b:Ljava/util/List;

    new-instance v0, Lcom/alipay/mobile/security/nickname/service/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/security/nickname/service/a;-><init>(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->c:Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;-><init>()V

    if-eqz p1, :cond_2

    iget-boolean v1, p1, Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;->success:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setNickname(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6210\u529f\u83b7\u53d6\u5230\u6635\u79f0\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;->nickname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setIsOpen(Z)V

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V

    return-void

    :cond_1
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setIsOpen(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u53d6\u6635\u79f0\u5931\u8d25"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setIsOpen(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setNickname(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setResultCode(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V

    return-void
.end method


# virtual methods
.method public callback(Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getNickname(Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/nickname/service/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/nickname/service/b;-><init>(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getNicknameWithPreCheck(Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/nickname/service/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/nickname/service/c;-><init>(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public goToSetNickname(Lcom/alipay/mobile/framework/service/ext/security/NicknameCallBack;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "20000141"

    invoke-interface {v0, v1, v2, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u6635\u79f0\u670d\u52a1\u5efa\u7acb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;

    iput-object v0, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->c:Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u6635\u79f0\u670d\u52a1\u9500\u6bc1"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
