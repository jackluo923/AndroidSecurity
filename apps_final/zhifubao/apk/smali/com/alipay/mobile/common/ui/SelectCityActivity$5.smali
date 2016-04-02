.class Lcom/alipay/mobile/common/ui/SelectCityActivity$5;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity;->mIndexer:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$9(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v1, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity;->mIndexer:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$9(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setSelection(I)V

    .line 497
    :cond_0
    return-void
.end method
