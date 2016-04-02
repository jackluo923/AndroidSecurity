.class public Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;
.super Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;
.source "DefaultAutoScrollMoreListAdapter.java"


# instance fields
.field public autoScrollMoreListener:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter$AutoScrollMoreListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/misc/AutoScrollMoreListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getFailView()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoadingView()Landroid/view/View;
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    sget v1, Lcom/alipay/android/phone/wealth/common/R$layout;->default_load_more:I

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method protected itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 53
    return-void
.end method

.method protected onAutoLoadMore()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->autoScrollMoreListener:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter$AutoScrollMoreListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter;->autoScrollMoreListener:Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter$AutoScrollMoreListener;

    invoke-interface {v0}, Lcom/alipay/mobile/wealth/common/component/DefaultAutoScrollMoreListAdapter$AutoScrollMoreListener;->onAutoScrollMore()V

    .line 43
    :cond_0
    return-void
.end method

.method protected onRetry()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
