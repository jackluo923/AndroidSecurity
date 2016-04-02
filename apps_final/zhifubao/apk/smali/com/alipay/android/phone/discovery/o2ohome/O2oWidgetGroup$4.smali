.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRefresh()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 350
    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_framework_pullrefresh_overview:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 348
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APOverView;

    return-object v0
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 334
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "O2oWidgetGroup"

    const-string/jumbo v2, "PullRefreshView-onRefresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->apPullRefreshView:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$19(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->autoRefresh()V

    .line 337
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getLastLocation()Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->startLocationTaskWithListener()V

    goto :goto_0
.end method
