.class Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "O2oHomeServiceImpl.java"


# static fields
.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->ajc$preClinit()V

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "O2oHomeServiceImpl.java"

    const-class v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.discovery.o2ohome.O2oHomeServiceImpl$1"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x4a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final synthetic onReceive_aroundBody0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->needUpdate()Z
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    invoke-static {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    invoke-static {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->startLocation()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->startBeaconScan()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V

    goto :goto_0
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 87
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->onReceive_aroundBody0(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;->onReceive_aroundBody1$advice(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$1;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
