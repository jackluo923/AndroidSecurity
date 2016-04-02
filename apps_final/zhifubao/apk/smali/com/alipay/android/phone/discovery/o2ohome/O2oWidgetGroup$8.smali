.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 836
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 837
    const-string/jumbo v0, "target"

    const-string/jumbo v2, "searchHome"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    const-string/jumbo v0, "mrp"

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getCoordinate()Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;

    move-result-object v2

    .line 843
    const-string/jumbo v3, "ext_adCode"

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string/jumbo v0, "ext_longitude"

    const-string/jumbo v3, "%.6f"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string/jumbo v0, "ext_latitude"

    const-string/jumbo v3, "%.6f"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, v2, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Coordinate;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string/jumbo v0, "ext_search_session_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string/jumbo v0, "ext_search_query_index"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 848
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$8;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->showSwitch:Z

    if-eqz v0, :cond_1

    .line 849
    const-string/jumbo v0, "ext_search_has_switch"

    const-string/jumbo v2, "YES"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "20000238"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 852
    return-void
.end method
