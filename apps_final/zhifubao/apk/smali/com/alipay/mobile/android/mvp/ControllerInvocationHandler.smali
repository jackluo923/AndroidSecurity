.class public Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;
.super Ljava/lang/Object;
.source "ControllerInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Lcom/alipay/mobile/android/mvp/MvpBaseController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/android/mvp/MvpBaseController;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ControllerInvocationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "doInvoke occur exception. controller=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] method=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] uiThreadComeIn=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    if-eqz p3, :cond_0

    .line 63
    new-instance v1, Lcom/alipay/mobile/android/mvp/model/MvpResult;

    invoke-direct {v1}, Lcom/alipay/mobile/android/mvp/model/MvpResult;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/android/mvp/model/MvpResult;->exception:Ljava/lang/Exception;

    const-string/jumbo v2, "SYSTEM_ERROR"

    iput-object v2, v1, Lcom/alipay/mobile/android/mvp/model/MvpResult;->resultCode:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/mobile/android/mvp/model/MvpResult;->success:Z

    new-instance v2, Lcom/alipay/mobile/android/mvp/DataEvent;

    invoke-direct {v2}, Lcom/alipay/mobile/android/mvp/DataEvent;-><init>()V

    iput-object v1, v2, Lcom/alipay/mobile/android/mvp/DataEvent;->data:Ljava/lang/Object;

    const-string/jumbo v1, "systemErrorEvent"

    iput-object v1, v2, Lcom/alipay/mobile/android/mvp/DataEvent;->eventCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/android/mvp/MvpBaseController;->notifyDataObserversException(Lcom/alipay/mobile/android/mvp/DataEvent;)V

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    throw v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 36
    if-ne v0, v2, :cond_0

    move v0, v5

    .line 40
    :goto_0
    if-nez v0, :cond_1

    .line 41
    invoke-direct {p0, p2, p3, v1}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 53
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 36
    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler$1;-><init>(Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    const/4 v0, 0x0

    goto :goto_1
.end method
