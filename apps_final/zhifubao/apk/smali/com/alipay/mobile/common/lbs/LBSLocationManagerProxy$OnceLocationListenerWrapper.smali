.class Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

.field private c:J

.field private d:Lcom/amap/api/location/AMapLocation;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    .locals 2

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 306
    iput-object p2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->a:Landroid/content/Context;

    .line 307
    iput-object p3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    .line 308
    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)V
    .locals 8

    .prologue
    .line 418
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->Instance()Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 422
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 427
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "cell"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->Instance()Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 430
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    const-string/jumbo v4, "key"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 435
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "corse"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->Instance()Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->process(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 438
    const-string/jumbo v5, "result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 439
    const-string/jumbo v6, "key"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    const-string/jumbo v6, "{\'lon\':0,\'lat\':0}"

    .line 444
    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 445
    new-instance v6, Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-direct {v6, v7}, Lcom/alipay/mobile/common/lbs/LBSLocation;-><init>(Landroid/location/Location;)V

    .line 447
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setIsGetAMapAPP(Z)V

    .line 448
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setWifiLocation(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v6, v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setWifiLocationkey(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCellInfo(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCellInfokey(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCorseLocation(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/lbs/LBSLocation;->setCorseLocationkey(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v0, v6}, Lcom/alipay/mobile/common/lbs/LBSLocationListener;->onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getapplocationaMapLocationError ErrorCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationListener;->onLocationFailed(I)V

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;)Lcom/amap/api/location/AMapLocation;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->d:Lcom/amap/api/location/AMapLocation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->a(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method


# virtual methods
.method public getLocationRequestTimestamp()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->c:J

    return-wide v0
.end method

.method public hasRemoved()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OnceLocation.LocationListener.OnLocationChanged at: OnceLocationListenerWrapper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 356
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->d:Lcom/amap/api/location/AMapLocation;

    .line 358
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LBSLocationManagerProxyonLocationChanged(AMapLocationaMapLocation)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->hasRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->d:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->setHasRemoved(Z)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->d:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # invokes: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$700(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/amap/api/location/AMapLocation;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # invokes: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$800(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 371
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LBSLocationManagerProxy onLocationChanged:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationListener;->onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->setHasRemoved(Z)V

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->d:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLocationChanged:ErrorCode= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Z
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$900()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    const/4 v0, 0x0

    # setter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->f:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$902(Z)Z

    .line 385
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    const-string/jumbo v2, "SDKonLocation Error Start AmapAPP Location "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Z
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$1000()Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    invoke-static {}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->Instance()Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$200()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper$1;-><init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->init(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;)I

    goto/16 :goto_0

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->d:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->a(Lcom/amap/api/location/AMapLocation;)V

    .line 402
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->setHasRemoved(Z)V

    goto/16 :goto_0

    .line 406
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SDKonLocation Error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAMapException()Lcom/amap/api/location/core/AMapLocException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/core/AMapLocException;->getErrorCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationListener;->onLocationFailed(I)V

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->setHasRemoved(Z)V

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OnceLocation.LocationListener.onProviderDisabled at: OnceLocationListenerWrapper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 346
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OnceLocation.LocationListener.onProviderEnabled at: OnceLocationListenerWrapper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 341
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OnceLocation.LocationListener.onStatusChanged at: OnceLocationListenerWrapper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public setHasRemoved(Z)V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "request once onLocationChanged:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->d:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->b:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # invokes: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$600(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)V

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LocationManagerProxy.destroy once"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/LocationManagerProxy;->destroy()V

    .line 332
    :cond_0
    return-void
.end method

.method public setLocationRequestTimestamp(J)V
    .locals 0

    .prologue
    .line 315
    iput-wide p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->c:J

    .line 316
    return-void
.end method
