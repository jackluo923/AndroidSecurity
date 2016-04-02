.class Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;
.super Ljava/lang/Object;
.source "SelectCityActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;

.field final synthetic val$catheCityList:Ljava/util/List;

.field final synthetic val$catheHotCityList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity_;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;->val$catheCityList:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;->val$catheHotCityList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;->val$catheCityList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$2;->val$catheHotCityList:Ljava/util/List;

    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->updatDatas(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->access$101(Lcom/alipay/mobile/common/ui/SelectCityActivity_;Ljava/util/List;Ljava/util/List;)V

    .line 107
    return-void
.end method
