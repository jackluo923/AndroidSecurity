.class Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$3;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$3;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$3;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # invokes: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->setResultFinish()V
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$10(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V

    .line 164
    return-void
.end method
