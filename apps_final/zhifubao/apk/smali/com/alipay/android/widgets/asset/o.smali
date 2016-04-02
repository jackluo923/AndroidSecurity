.class final Lcom/alipay/android/widgets/asset/o;
.super Ljava/lang/Object;
.source "WealthHomeBroadcastReceiver.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail()V
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getadvertisement fail"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public final onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 4

    .prologue
    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "getadvertisement success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rpcTimeOut:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v3}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->c(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",needShowAdvert:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v3}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->e(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v0, p1}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 288
    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v2}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->c(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->d(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/o;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->f(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V

    .line 292
    :cond_1
    return-void
.end method
