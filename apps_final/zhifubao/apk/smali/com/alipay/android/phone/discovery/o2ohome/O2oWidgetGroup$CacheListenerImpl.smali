.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategoryFinish(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;)V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 524
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getMenus()Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 526
    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->uiCity:Landroid/util/Pair;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method

.method public onPromoInfoFinish(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->pullRefreshFinished()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V

    .line 535
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;->getPromoInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateActivityView(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$7(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V

    .line 538
    :cond_0
    return-void
.end method

.method public onRecommendFinish(Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;)V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$8(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    .line 544
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotGoodsAdapter:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$9(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 545
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->searBoxTitle:Ljava/lang/String;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->setSearchBarHintText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$10(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Ljava/lang/String;)V

    .line 547
    :cond_0
    return-void
.end method
