.class Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$4;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity.java"

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
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$4;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$4;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentType:I
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$4(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$4;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->refreashList(II)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$4;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$4;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    iget-object v2, v2, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$11(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
