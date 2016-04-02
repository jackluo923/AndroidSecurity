.class public Lcom/alipay/mobile/common/utils/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 19
    if-nez v3, :cond_0

    .line 37
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    .line 26
    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 28
    invoke-virtual {v5, v1, v1}, Landroid/view/View;->measure(II)V

    .line 29
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
