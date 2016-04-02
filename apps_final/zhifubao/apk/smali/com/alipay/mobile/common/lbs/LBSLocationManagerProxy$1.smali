.class Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gpsEnable:Z

.field final synthetic val$locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

.field final synthetic val$miniInterval:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Lcom/alipay/mobile/common/lbs/LBSLocationListener;Landroid/content/Context;JZ)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iput-object p2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    iput-object p3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$context:Landroid/content/Context;

    iput-wide p4, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$miniInterval:J

    iput-boolean p6, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$gpsEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".requestLocationUpdates( listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")listener count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;
    invoke-static {v3}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$miniInterval:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "use lastLocation:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationListener;->onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 156
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v5, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;

    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-direct {v5, v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;-><init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->setLocationRequestTimestamp(J)V

    .line 142
    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$gpsEnable:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/location/LocationManagerProxy;->setGpsEnable(Z)V

    .line 143
    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->g:Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/location/LocationManagerProxy;->getInstance(Landroid/content/Context;)Lcom/amap/api/location/LocationManagerProxy;

    move-result-object v0

    const-string/jumbo v1, "lbs"

    const-wide/16 v2, -0x1

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/location/LocationManagerProxy;->requestLocationData(Ljava/lang/String;JFLcom/amap/api/location/AMapLocationListener;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->h:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->val$locationListener:Lcom/alipay/mobile/common/lbs/LBSLocationListener;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;->this$0:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->k:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$500(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1$1;-><init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$1;)V

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->b:J
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$400()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
