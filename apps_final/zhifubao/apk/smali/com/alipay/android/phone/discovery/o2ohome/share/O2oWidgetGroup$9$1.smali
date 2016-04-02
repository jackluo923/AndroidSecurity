.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 902
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    .line 905
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    .line 906
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->saveSelectCityInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 908
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->cityRemindView:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$29(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->hideView()V

    .line 910
    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v2

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$9;)Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 913
    :cond_0
    return-void
.end method
