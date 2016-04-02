.class Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;
.super Ljava/lang/Object;
.source "O2oHomeServiceImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/discovery/o2ohome/util/LBSWrapListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 5

    .prologue
    .line 222
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V

    .line 224
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    .line 225
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$7()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LBS location is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 228
    :cond_1
    new-instance v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;

    invoke-direct {v0}, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;-><init>()V

    .line 229
    invoke-virtual {p2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->latitude:Ljava/lang/String;

    .line 230
    invoke-virtual {p2}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->longitude:Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$7()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LBSSuccess latitude: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    iget-object v4, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->latitude:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "==longitude:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;->longitude:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->executeRpc(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$8(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    goto :goto_0
.end method
