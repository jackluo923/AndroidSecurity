.class final Lcom/aps/as;
.super Ljava/lang/Thread;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/aps/y;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "<Unknown>"

    const-class v2, Lcom/aps/as;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "requestLocationUpdates"

    const-string/jumbo v3, "android.location.LocationManager"

    const-string/jumbo v4, "java.lang.String:long:float:android.location.LocationListener"

    const-string/jumbo v5, "provider:minTime:minDistance:listener"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/aps/as;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/aps/y;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/y;->a(Lcom/aps/y;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/aps/as;->a:Lcom/aps/y;

    new-instance v1, Lcom/aps/au;

    iget-object v2, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-direct {v1, v2}, Lcom/aps/au;-><init>(Lcom/aps/y;)V

    invoke-static {v0, v1}, Lcom/aps/y;->a(Lcom/aps/y;Lcom/aps/au;)Lcom/aps/au;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-static {v0}, Lcom/aps/y;->e(Lcom/aps/y;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-static {v1}, Lcom/aps/y;->d(Lcom/aps/y;)Lcom/aps/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-static {v0}, Lcom/aps/y;->e(Lcom/aps/y;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-static {v1}, Lcom/aps/y;->d(Lcom/aps/y;)Lcom/aps/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/aps/as;->a:Lcom/aps/y;

    new-instance v1, Lcom/aps/at;

    invoke-direct {v1, p0}, Lcom/aps/at;-><init>(Lcom/aps/as;)V

    invoke-static {v0, v1}, Lcom/aps/y;->a(Lcom/aps/y;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-static {v0}, Lcom/aps/y;->e(Lcom/aps/y;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "passive"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-static {v0}, Lcom/aps/y;->e(Lcom/aps/y;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "passive"

    invoke-static {}, Lcom/aps/y;->l()I

    move-result v2

    int-to-float v4, v2

    iget-object v2, p0, Lcom/aps/as;->a:Lcom/aps/y;

    invoke-static {v2}, Lcom/aps/y;->f(Lcom/aps/y;)Landroid/location/LocationListener;

    move-result-object v5

    sget-object v2, Lcom/aps/as;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v3, v6

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x2

    invoke-static {v4}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x3

    aput-object v5, v3, v6

    invoke-static {v2, p0, v0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    const-wide/16 v2, 0x3e8

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    :cond_1
    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Call LocationManager.requestLocationUpdates(args="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "), provider="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " at: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
