.class public Lcom/amap/api/location/d;
.super Ljava/lang/Object;


# static fields
.field private static final synthetic f:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic g:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public a:Landroid/location/LocationManager;

.field b:Landroid/location/LocationListener;

.field private c:Lcom/amap/api/location/a$a;

.field private d:Lcom/amap/api/location/a;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "IGPSManager.java"

    const-class v2, Lcom/amap/api/location/d;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "requestLocationUpdates"

    const-string/jumbo v3, "android.location.LocationManager"

    const-string/jumbo v4, "java.lang.String:long:float:android.location.LocationListener:android.os.Looper"

    const-string/jumbo v5, "provider:minTime:minDistance:listener:looper"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x55

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/d;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "removeUpdates"

    const-string/jumbo v3, "android.location.LocationManager"

    const-string/jumbo v4, "android.location.LocationListener"

    const-string/jumbo v5, "listener"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x72

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/d;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/amap/api/location/a$a;Lcom/amap/api/location/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    new-instance v0, Lcom/amap/api/location/e;

    invoke-direct {v0, p0}, Lcom/amap/api/location/e;-><init>(Lcom/amap/api/location/d;)V

    iput-object v0, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/amap/api/location/d;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iput-object p4, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/a;

    iput-object p3, p0, Lcom/amap/api/location/d;->c:Lcom/amap/api/location/a$a;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/d;->d:Lcom/amap/api/location/a;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/location/d;->c:Lcom/amap/api/location/a$a;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 0

    return-void
.end method

.method a(JF)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    iget-object v5, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    sget-object v2, Lcom/amap/api/location/d;->f:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x3

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v6, v3, v4

    invoke-static {v2, p0, v0, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

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

    invoke-interface {v7}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method b()V
    .locals 8

    iget-object v0, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/amap/api/location/d;->b:Landroid/location/LocationListener;

    sget-object v2, Lcom/amap/api/location/d;->g:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2, p0, v0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "Monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Call LocationManager.removeUpdates(args="

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

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
