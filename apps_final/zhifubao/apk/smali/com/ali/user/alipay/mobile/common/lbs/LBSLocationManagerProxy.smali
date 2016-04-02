.class public Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# static fields
.field private static a:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field private static b:Ljava/lang/String;

.field private static final synthetic i:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic j:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic k:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic l:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic m:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

.field private e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "LBSLocationManagerProxy.java"

    const-class v2, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onStatusChanged"

    const-string/jumbo v3, "com.ali.user.alipay.mobile.common.lbs.LBSLocationManagerProxy"

    const-string/jumbo v4, "java.lang.String:int:android.os.Bundle"

    const-string/jumbo v5, "arg0:arg1:arg2"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onProviderEnabled"

    const-string/jumbo v3, "com.ali.user.alipay.mobile.common.lbs.LBSLocationManagerProxy"

    const-string/jumbo v4, "java.lang.String"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x76

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onProviderDisabled"

    const-string/jumbo v3, "com.ali.user.alipay.mobile.common.lbs.LBSLocationManagerProxy"

    const-string/jumbo v4, "java.lang.String"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->k:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onLocationChanged"

    const-string/jumbo v3, "com.ali.user.alipay.mobile.common.lbs.LBSLocationManagerProxy"

    const-string/jumbo v4, "android.location.Location"

    const-string/jumbo v5, "arg0"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->l:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onLocationChanged"

    const-string/jumbo v3, "com.ali.user.alipay.mobile.common.lbs.LBSLocationManagerProxy"

    const-string/jumbo v4, "com.amap.api.location.AMapLocation"

    const-string/jumbo v5, "aMapLocation"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x88

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->m:Lorg/aspectj/lang/JoinPoint$StaticPart;

    .line 21
    const-string/jumbo v0, "LBSLocationManagerProxy"

    sput-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Landroid/os/Handler;

    .line 27
    iput-boolean v2, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z

    .line 28
    iput-boolean v2, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    .line 32
    return-void
.end method

.method private static a(Lcom/amap/api/location/AMapLocation;)Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 193
    :cond_0
    new-instance v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-direct {v0, p0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;-><init>(Landroid/location/Location;)V

    .line 194
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->setProvince(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->setCity(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->setDistrict(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->setCityCode(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;->setAdCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z

    return v0
.end method

.method static synthetic access$1(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    return v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;

    return-object v0
.end method

.method public static getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-direct {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;-><init>()V

    sput-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    .line 38
    :cond_0
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getLastKnownLocation(Landroid/content/Context;)Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$3;-><init>(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_2

    .line 171
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 177
    :try_start_1
    invoke-static {p1}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/amap/api/location/AMapLocation;)Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_4
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    :try_start_3
    iget-boolean v1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v1, :cond_5

    .line 181
    sget-object v1, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    .line 182
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9

    .prologue
    .line 1
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->l:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "Monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "LocationListener.OnLocationChanged at: "

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

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 9

    .prologue
    .line 1
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->m:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/amap/api/location/AMapLocation;)Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    iget-boolean v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Listener size"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v6, "Monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "LocationListener.OnLocationChanged at: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v2

    invoke-interface {v2}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ", cost:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;

    iget-object v6, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->d:Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;

    invoke-interface {v0, v6}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;->onLocationUpdate(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->k:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
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

    .prologue
    .line 1
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
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

    .prologue
    .line 1
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->i:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    iget-boolean v4, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    :cond_0
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

.method public removeUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    .line 84
    :cond_0
    if-nez p2, :cond_2

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$2;-><init>(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestLocationUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;ZLcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 43
    return-void
.end method

.method public requestLocationUpdates(Landroid/content/Context;ZLcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:Ljava/lang/String;

    .line 51
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;-><init>(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
