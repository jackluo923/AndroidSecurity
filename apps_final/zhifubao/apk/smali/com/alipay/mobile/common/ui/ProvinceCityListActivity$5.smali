.class Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;
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
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    .line 194
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
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->currentType:I
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$4(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->cacheProvince:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$12(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    iget-object v2, v2, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mAdapter:Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$8(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$9(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$5;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # invokes: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->setResultFinish()V
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$10(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V

    goto :goto_0
.end method
