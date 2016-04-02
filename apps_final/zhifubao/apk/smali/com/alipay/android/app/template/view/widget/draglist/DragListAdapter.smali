.class public Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DragListAdapter.java"


# instance fields
.field protected a:Ljava/util/ArrayList;

.field protected b:Landroid/app/Activity;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->c:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->d:I

    .line 32
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "drag_handle"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->d:I

    .line 34
    return-void
.end method


# virtual methods
.method public clearAllViews()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 79
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 89
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    .line 81
    iget-object v3, v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->view:Landroid/view/View;

    .line 82
    if-eqz v3, :cond_2

    .line 83
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 84
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->getItem(I)Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    .line 94
    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->view:Landroid/view/View;

    if-nez v1, :cond_1

    .line 95
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v5, 0x422c0000    # 43.0f

    sget v6, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v9, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 99
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v9, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v1, Landroid/view/View;

    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const v6, -0x333334

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v1, Landroid/view/View;

    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const v6, -0x333334

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    const/16 v1, 0x10

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    const/high16 v1, 0x41700000    # 15.0f

    sget v6, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 112
    invoke-virtual {v5, v1, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 113
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    iget-object v7, v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->payment:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isOppoDevice()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    const-string/jumbo v7, "#333333"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    :cond_0
    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v9, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 122
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v8, "item"

    const-string/jumbo v9, "drawable"

    const-string/jumbo v10, "com.alipay.android.app"

    invoke-static {v1, v8, v9, v10}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v8, "drag_handle"

    invoke-static {v1, v8}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 124
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->c:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iput-object v4, v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->view:Landroid/view/View;

    .line 131
    :cond_1
    iget-object v1, v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 132
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 133
    iget v5, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->d:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->c:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_4

    .line 135
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :goto_2
    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->view:Landroid/view/View;

    return-object v0

    :cond_2
    move v1, v3

    .line 124
    goto :goto_0

    :cond_3
    move v1, v3

    .line 133
    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    check-cast p1, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->c:Z

    .line 46
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->a:Ljava/util/ArrayList;

    .line 42
    return-void
.end method
