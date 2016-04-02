.class Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

.field private final synthetic val$finalCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

.field private final synthetic val$finalHotCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->val$finalCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    iput-object p3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->val$finalHotCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->val$finalCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->updateCityListData(Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$6(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->val$finalHotCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->updateHotCityListData(Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$7(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->initData()V
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$8(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$1;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    .line 257
    return-void
.end method
