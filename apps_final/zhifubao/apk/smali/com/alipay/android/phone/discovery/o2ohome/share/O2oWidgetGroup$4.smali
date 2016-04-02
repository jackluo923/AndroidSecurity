.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;->showSwitch:Z

    if-eqz v0, :cond_0

    .line 648
    const-string/jumbo v0, "&ext_search_has_switch=YES"

    move-object v1, v0

    .line 652
    :goto_0
    const-string/jumbo v0, "alipays://platformapi/startApp?appId=20000238&target=classify&categoryShowName="

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\u5168\u90e8\u5206\u7c7b"

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->encoderUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->buildLbsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->getShareParamString()Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$20(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->goUrl(Ljava/lang/String;)V

    .line 655
    return-void

    .line 650
    :cond_0
    const-string/jumbo v0, "&ext_search_has_switch=NO"

    move-object v1, v0

    goto :goto_0
.end method
