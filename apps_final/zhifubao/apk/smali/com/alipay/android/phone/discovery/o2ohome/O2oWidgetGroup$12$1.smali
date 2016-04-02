.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    .line 1134
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    .line 1135
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->saveSelectCityInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 1137
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$41(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->hideView()V

    .line 1139
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$12;)Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 1142
    :cond_0
    return-void
.end method
