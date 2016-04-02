.class Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$2;

.field final synthetic val$finalCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

.field final synthetic val$finalHotCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity$2;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$2;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->val$finalCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    iput-object p3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->val$finalHotCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$2;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->val$finalCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$100(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$2;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->val$finalHotCityVOList:Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$200(Lcom/alipay/mobile/common/ui/SelectCityActivity;Lcom/alipay/mobile/common/ui/cityselect/model/CityVOList;)V

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$2;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$300(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$2;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    .line 257
    return-void
.end method
