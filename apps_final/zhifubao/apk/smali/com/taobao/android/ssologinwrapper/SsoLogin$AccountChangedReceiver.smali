.class Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "SsoLogin.java"

    const-class v2, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.taobao.android.ssologinwrapper.SsoLogin$AccountChangedReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x221

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v9, 0x0

    sget-object v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;
    invoke-static {v5}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$700(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Lcom/taobao/android/sso/SsoStatesChangedListener;

    move-result-object v5

    if-eqz v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-le v5, v6, :cond_1

    new-instance v5, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;

    iget-object v6, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v7, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # ++operator for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->d:I
    invoke-static {v7}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$604(Lcom/taobao/android/ssologinwrapper/SsoLogin;)I

    move-result v7

    iget-object v8, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    invoke-direct {v5, v6, v7, v8}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;ILcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;)V

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v5, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v5, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;

    iget-object v6, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v7, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # ++operator for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->d:I
    invoke-static {v7}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$604(Lcom/taobao/android/ssologinwrapper/SsoLogin;)I

    move-result v7

    iget-object v8, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    invoke-direct {v5, v6, v7, v8}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;ILcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;)V

    new-array v6, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
