.class Lcom/alipay/mobile/common/ui/SelectCityActivity_$1;
.super Ljava/lang/Object;
.source "SelectCityActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity_$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity_;

    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity_;->access$001(Lcom/alipay/mobile/common/ui/SelectCityActivity_;)V

    .line 93
    return-void
.end method
