.class Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "LBSLocationManagerProxy.java"

    const-class v2, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "21"

    const-string/jumbo v2, "removeUpdates"

    const-string/jumbo v3, "com.amap.api.location.LocationManagerProxy"

    const-string/jumbo v4, "com.amap.api.location.AMapLocationListener"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iput-object p2, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->a:Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z
    invoke-static {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$0(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$1(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Z)V

    .line 96
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z
    invoke-static {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$2(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$3()Ljava/lang/String;

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    sget-object v2, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "Monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Call LocationManagerProxy.removeUpdates(args="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ") at: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->removeUpdates(Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;->this$0:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z
    invoke-static {v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$2(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    # getter for: Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$3()Ljava/lang/String;

    .line 103
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
