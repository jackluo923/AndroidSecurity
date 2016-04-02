.class public Lcom/alipay/android/phone/home/ui/StrategicView;
.super Lcom/alipay/android/phone/home/manager/AppItemView;
.source "StrategicView.java"


# instance fields
.field private a:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/manager/AppItemView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1, v2}, Lcom/alipay/android/phone/home/manager/AppItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 22
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->m:I

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/StrategicView;->addView(Landroid/view/View;)V

    .line 24
    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/StrategicView;->a:Landroid/widget/AbsListView;

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/StrategicView;->a:Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/StrategicView;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 34
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/StrategicView;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/StrategicView;->a:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 39
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 43
    :cond_1
    invoke-super {p0, v0, p2}, Lcom/alipay/android/phone/home/manager/AppItemView;->onMeasure(II)V

    goto :goto_0
.end method
