.class Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$2;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;

    # invokes: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->initList()V
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;->access$101(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity_;)V

    .line 100
    return-void
.end method
