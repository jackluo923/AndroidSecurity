.class final Lcom/aps/ap;
.super Ljava/util/TimerTask;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private synthetic a:Lcom/aps/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/aps/ap;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "startScan"

    const-string/jumbo v3, "android.net.wifi.WifiManager"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/ap;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/aps/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/ap;->a:Lcom/aps/ao;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    sget-boolean v0, Lcom/aps/bd;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ap;->a:Lcom/aps/ao;

    iget-object v0, v0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v0}, Lcom/aps/ak;->c(Lcom/aps/ak;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aps/ap;->a:Lcom/aps/ao;

    iget-object v0, v0, Lcom/aps/ao;->a:Lcom/aps/ak;

    invoke-static {v0}, Lcom/aps/ak;->c(Lcom/aps/ak;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    sget-object v0, Lcom/aps/ap;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v2

    invoke-static {v3, v4, v5, v6, v2}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallWifiManagerStartScanPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
