.class public Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/security/gesture/service/i;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "GestureBackToFrontReceiver.java"

    const-class v2, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.mobile.security.gesture.service.GestureBackToFrontReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->a:Z

    return-void
.end method

.method static a()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;)Lcom/alipay/mobile/security/gesture/service/i;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->b:Lcom/alipay/mobile/security/gesture/service/i;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->a()Lcom/alipay/mobile/security/gesture/service/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->b:Lcom/alipay/mobile/security/gesture/service/i;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/c;->a(Lcom/alipay/mobile/security/gesture/service/i;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->b:Lcom/alipay/mobile/security/gesture/service/i;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " willBack:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->a:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->a:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->a:Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->b()V

    new-instance v5, Lcom/alipay/mobile/security/gesture/service/a;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/security/gesture/service/a;-><init>(Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;)V

    iput-object v5, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->b:Lcom/alipay/mobile/security/gesture/service/i;

    new-instance v5, Lcom/alipay/mobile/security/gesture/service/b;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/security/gesture/service/b;-><init>(Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    const-wide/16 v7, 0xe10

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    aget-object v2, v2, v10

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
    const-string/jumbo v6, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v10, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->a:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " willBack:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/alipay/mobile/security/gesture/service/GestureBackToFrontReceiver;->a:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
