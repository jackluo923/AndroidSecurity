.class Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;

.field final synthetic val$index:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;II)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;

    iput p2, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;->val$type:I

    iput p3, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;

    iget v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;->val$type:I

    iget v2, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$1;->val$index:I

    # invokes: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->refreashList(II)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->access$001(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;II)V

    .line 86
    return-void
.end method
