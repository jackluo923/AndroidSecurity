.class Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$1;
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
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentType:I
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$4(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->finish()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentType:I
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$4(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->refreashList(II)V

    goto :goto_0
.end method
