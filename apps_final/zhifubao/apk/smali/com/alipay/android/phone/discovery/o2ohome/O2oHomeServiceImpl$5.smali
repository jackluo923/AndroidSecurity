.class Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;
.super Ljava/lang/Object;
.source "O2oHomeServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 314
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$7()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scan over 5s :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mBeaconManager:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$9(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeBeaconManager;->switchListenStatus(I)V

    .line 316
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->mIsBeaconReturn:Z
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$11(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Z)V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$5;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    .line 320
    :cond_0
    return-void
.end method
