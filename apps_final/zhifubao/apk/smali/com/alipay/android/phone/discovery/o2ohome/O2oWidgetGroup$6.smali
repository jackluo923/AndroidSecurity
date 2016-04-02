.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;
.super Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;
.source "O2oWidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor",
        "<",
        "Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    .line 553
    invoke-direct {p0, p2, p3, p4}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    return-object v0
.end method


# virtual methods
.method public actionButtonClick()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->startRpcRequest(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$17(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    .line 658
    return-void
.end method

.method public execute(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 571
    new-instance v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;

    invoke-direct {v4}, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;-><init>()V

    .line 572
    iget-object v0, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->adCode:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    .line 573
    iget-object v0, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    .line 577
    :cond_0
    iget-wide v5, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->longitude:D

    iput-wide v5, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->x:D

    .line 578
    iget-wide v5, p1, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;->latitude:D

    iput-wide v5, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->y:D

    .line 579
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v5, "O2oWidgetGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "HomePage RPC : req.cityId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->cityId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " req.x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->x:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " req.y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->y:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    new-instance v5, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-virtual {v5, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->getBirdParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;->templateParams:Ljava/lang/String;

    .line 583
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v6, "O2oWidgetGroup"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 589
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$25(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    .line 590
    const-class v8, Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;

    .line 591
    invoke-interface {v0, v4}, Lcom/alipay/mobilecsa/common/service/rpc/service/HomePageService;->queryHomePage(Lcom/alipay/mobilecsa/common/service/rpc/request/HomePageReq;)Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    .line 592
    const-string/jumbo v4, "O2OHOME"

    const-string/jumbo v8, "HomePRC"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v6, v9, v6

    invoke-static {v4, v8, v6, v7}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorLogHelper;->performance(Ljava/lang/String;Ljava/lang/String;J)V

    .line 597
    if-nez v0, :cond_1

    move-object v0, v1

    .line 647
    :goto_0
    return-object v0

    .line 601
    :cond_1
    iget-boolean v4, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->success:Z

    if-eqz v4, :cond_2

    .line 603
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;J)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 636
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getTemplateInfo(Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;)Ljava/util/Map;

    move-result-object v1

    .line 637
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$InnerBirdNestFinish;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)V

    invoke-virtual {v5, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->buildTemplate(Ljava/util/Map;Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;)V

    goto :goto_0

    .line 643
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_network_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->showEmptyTip(Ljava/lang/String;)V

    .line 644
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "O2oWidgetGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "RPC result failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->desc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 647
    goto :goto_0
.end method

.method public bridge synthetic execute(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->execute(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;

    move-result-object v0

    return-object v0
.end method

.method public isHomePageEmpty()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isHomePageHasContent()Z
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$32(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRpcFinish()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 668
    return-void
.end method
