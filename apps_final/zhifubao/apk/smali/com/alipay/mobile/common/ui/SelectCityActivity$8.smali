.class Lcom/alipay/mobile/common/ui/SelectCityActivity$8;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$8;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$8;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$8;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v2, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->province:Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$8;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v3, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$8;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 569
    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->finishThisTellPrePage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$11(Lcom/alipay/mobile/common/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method
