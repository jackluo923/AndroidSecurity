.class public Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;
.super Landroid/widget/LinearLayout;
.source "CategoryView.java"


# instance fields
.field private cellsView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private lineCount:I

.field private final totalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->totalCount:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->lineCount:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->totalCount:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->lineCount:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->totalCount:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->lineCount:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private getUiData(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v2, v0, 0x8

    .line 96
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 101
    :cond_0
    return-object v1

    .line 97
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->context:Landroid/content/Context;

    .line 46
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->setBackgroundColor(I)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->setOrientation(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public initCells(Ljava/util/List;Ljava/lang/String;Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x2

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->getUiData(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 65
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->removeAllViews()V

    .line 67
    const/4 v0, 0x0

    move v1, v2

    .line 68
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 87
    return-void

    .line 69
    :cond_0
    iget v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->lineCount:I

    rem-int v4, v1, v4

    if-nez v4, :cond_1

    .line 70
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    :cond_1
    new-instance v4, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;-><init>(Landroid/content/Context;)V

    .line 75
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setGravity(I)V

    .line 76
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4, p3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setOnClickCallback(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;)V

    .line 78
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    invoke-virtual {v4, p4}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    :cond_2
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 84
    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resetDatas(Ljava/util/List;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 53
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 61
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setData(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public updateCell(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->cellsView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    return-void

    .line 105
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    .line 106
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setCategoryImage()V

    .line 108
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->setCategoryRedHot()V

    goto :goto_0
.end method
