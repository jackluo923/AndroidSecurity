.class Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategoryFinish(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;)V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->pullRefreshFinished()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)V

    .line 352
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getMenus()Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateCategoryView(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V

    .line 354
    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->uiCity:Landroid/util/Pair;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setUiCity(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onPromoInfoFinish(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public onRecommendFinish(Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->homeRpcData:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->updateHotItemsView(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$7(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V

    .line 369
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup$CacheListenerImpl;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;

    invoke-virtual {p1}, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;->searBoxTitle:Ljava/lang/String;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->setSearchBarHintText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;->access$8(Lcom/alipay/android/phone/discovery/o2ohome/share/O2oWidgetGroup;Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method
