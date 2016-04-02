.class Lcom/amap/api/location/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic e:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/amap/api/location/d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "IGPSManager.java"

    const-class v2, Lcom/amap/api/location/e;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onLocationChanged"

    const-string/jumbo v3, "com.amap.api.location.e"

    const-string/jumbo v4, "android.location.Location"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/e;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onProviderDisabled"

    const-string/jumbo v3, "com.amap.api.location.e"

    const-string/jumbo v4, "java.lang.String"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xef

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/e;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onProviderEnabled"

    const-string/jumbo v3, "com.amap.api.location.e"

    const-string/jumbo v4, "java.lang.String"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf3

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/amap/api/location/e;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onStatusChanged"

    const-string/jumbo v3, "com.amap.api.location.e"

    const-string/jumbo v4, "java.lang.String:int:android.os.Bundle"

    const-string/jumbo v5, "arg0:arg1:arg2"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xf7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/amap/api/location/e;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/amap/api/location/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9

    sget-object v0, Lcom/amap/api/location/e;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/a;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amap/api/location/a;->d:J

    const/4 v2, 0x0

    if-nez p1, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/location/a;->c:Z

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/amap/api/location/a;->d:J

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, v2}, Lcom/aps/k;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "Monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "LocationListener.OnLocationChanged at: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v3

    invoke-interface {v3}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ", cost:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Lcom/amap/api/location/core/c;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Lcom/aps/u;->a(DD)[D

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v1, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    aget-wide v7, v0, v2

    invoke-virtual {v1, v7, v8}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    const/4 v2, 0x0

    aget-wide v7, v0, v2

    invoke-virtual {v1, v7, v8}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amap/api/location/a;->c:Z

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/amap/api/location/a;->d:J

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_4
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v1, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x64

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v2}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amap/api/location/a;->c:Z

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/amap/api/location/a;->d:J

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v0, v0, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v0, v1}, Lcom/aps/k;->a(Lcom/amap/api/location/AMapLocation;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v7, 0x64

    iput v7, v1, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v7}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v7}, Lcom/amap/api/location/d;->b(Lcom/amap/api/location/d;)Lcom/amap/api/location/a$a;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/amap/api/location/a$a;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/amap/api/location/a;->c:Z

    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/amap/api/location/a;->d:J

    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v1, v1, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/amap/api/location/d;

    invoke-static {v1}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;)Lcom/amap/api/location/a;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/location/a;->b:Lcom/amap/api/location/c;

    iget-object v1, v1, Lcom/amap/api/location/c;->a:Lcom/aps/k;

    invoke-interface {v1, v2}, Lcom/aps/k;->a(Lcom/amap/api/location/AMapLocation;)V

    :cond_7
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/amap/api/location/e;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "Monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "LocationListener.OnProviderDisabled at: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", cost:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/amap/api/location/e;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "Monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "LocationListener.OnProviderEnabled at: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", cost:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 9

    sget-object v0, Lcom/amap/api/location/e;->e:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "Monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "LocationListener.OnStatusChanged at: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", cost:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
