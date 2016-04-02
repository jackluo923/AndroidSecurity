.class Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;
.super Ljava/lang/Object;
.source "LBSLocationWrap.java"

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$2()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "location failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->onLocationCallback(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    invoke-static {v1, v4, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;ZLcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    const-string/jumbo v1, "fail"

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->monitorLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->logger:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$2()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "location ok: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->proxy:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;)Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    const/4 v1, 0x1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->onLocationCallback(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    invoke-static {v0, v1, p1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;ZLcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;

    const-string/jumbo v1, "success"

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->monitorLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/LBSLocationWrap$1;->onLocationFailed(I)V

    goto :goto_0
.end method
