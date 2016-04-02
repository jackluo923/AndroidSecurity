.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/discovery/o2ohome/LocationCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    .line 1177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationViewParent()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$43(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pageContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$43(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_body:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationResult(ZLcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    .prologue
    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 1190
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 1191
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 1208
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 1194
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->getHomeRpcParam(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_HIDE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 1197
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->launchRpcRequest(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->isHomePageHasContent()Z
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$32(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->location_unable:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1201
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 1203
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->locationCityMgr:Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;->EM_STYLE_FAILURE:Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr;->showLocationView(Lcom/alipay/android/phone/discovery/o2ohome/view/LocationView$emStyleType;)V

    .line 1204
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$14;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->callCitySelect(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$33(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Landroid/app/Activity;)V

    goto :goto_0
.end method
