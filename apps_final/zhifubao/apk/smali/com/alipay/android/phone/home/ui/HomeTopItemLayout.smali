.class public Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;
.source "HomeTopItemLayout.java"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->a:Z

    .line 29
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->setOrientation(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public addInParent(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;)V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->a:Z

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->addHeaderView(Landroid/view/View;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->a:Z

    .line 64
    :cond_0
    return-void
.end method

.method getLineView()Landroid/view/View;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/openplatform/R$dimen;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 69
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    sget v2, Lcom/alipay/android/phone/openplatform/R$color;->f:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-object v1
.end method

.method public removeFromParent(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;)V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->a:Z

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1, p0}, Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;->removeHeaderView(Landroid/view/View;)Z

    .line 52
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->a:Z

    .line 57
    :cond_1
    return-void
.end method

.method public setAppList(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->removeAllViews()V

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->removeFromParent(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;)V

    .line 47
    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->addInParent(Lcom/alipay/mobile/commonui/widget/draggridview/GridViewWithHeaderAndFooter;)V

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 40
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->getLineView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->addView(Landroid/view/View;)V

    .line 43
    :cond_2
    new-instance v2, Lcom/alipay/android/phone/home/ui/HomeTopItemView;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/home/ui/HomeTopItemView;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/android/phone/home/ui/HomeTopItemView;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v2}, Lcom/alipay/android/phone/home/ui/HomeTopItemLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    goto :goto_0
.end method
