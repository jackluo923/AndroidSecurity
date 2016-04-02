.class public Lcom/alipay/android/app/template/view/widget/TBaseComponent;
.super Lcom/alipay/android/app/template/view/widget/TElement;
.source "TBaseComponent.java"


# instance fields
.field protected a:Ljava/util/List;

.field protected b:Landroid/view/ViewGroup;

.field protected c:Z

.field private d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    .line 27
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->p:Z

    .line 29
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->c:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->q:Z

    .line 35
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->j:Z

    .line 36
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    sget-object v1, Lcom/alipay/android/app/template/view/OverflowType;->scroll:Lcom/alipay/android/app/template/view/OverflowType;

    if-ne v0, v1, :cond_0

    .line 146
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->addView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    const-string/jumbo v1, "scrollview"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public addChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->p:Z

    .line 60
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 174
    iget-boolean v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->q:Z

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 177
    :cond_0
    iput-boolean v2, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->q:Z

    .line 179
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v1, v3, :cond_1

    move v0, v2

    .line 181
    :cond_1
    if-eqz v0, :cond_2

    .line 182
    invoke-static {}, Lcom/alipay/android/app/template/JniReferenceManager;->getInstance()Lcom/alipay/android/app/template/JniReferenceManager;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/template/JniReferenceManager;->clearReferences(I)V

    :cond_2
    move v1, v0

    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/TemplateViewGroup;->setIsDestory(Z)V

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/TemplateScrollView;->setIsDestory(Z)V

    .line 190
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 195
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 197
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    .line 200
    :cond_5
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    .line 201
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    .line 202
    if-eqz v1, :cond_7

    .line 203
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_7

    .line 204
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getNavElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->destroy()V

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->clearWindow()V

    .line 212
    :cond_7
    iput-object v4, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    goto :goto_0

    .line 193
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 194
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    goto :goto_1
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateWindow;->setIsExecutedFillView(Z)V

    .line 169
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 163
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->fillElementView(Landroid/app/Activity;)V

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    return-object v0
.end method

.method public getOffsetHeight()I
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->o:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->p:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->measureBody(Landroid/view/View;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->p:Z

    .line 93
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getOffsetHeight()I

    move-result v0

    return v0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a(Landroid/view/View;Z)V

    .line 90
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 91
    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->o:I

    goto :goto_0
.end method

.method public getOffsetWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->n:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->p:Z

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->measureBody(Landroid/view/View;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->p:Z

    .line 79
    :cond_1
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->getOffsetWidth()I

    move-result v0

    return v0
.end method

.method public getScrollView()Lcom/alipay/android/app/template/view/widget/TemplateScrollView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->d:Lcom/alipay/android/app/template/view/widget/TemplateScrollView;

    return-object v0
.end method

.method public inflateChildren(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->initView(Landroid/app/Activity;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    return-void

    .line 41
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 42
    iget-boolean v1, v0, Lcom/alipay/android/app/template/view/widget/TElement;->j:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 43
    check-cast v1, Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->inflateChildren(Landroid/app/Activity;)V

    .line 47
    :goto_1
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->a_()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->initView(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method public insertBefore(Lcom/alipay/android/app/template/view/widget/TElement;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->p:Z

    .line 140
    return-void
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "insertBefore"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v3, v2, v4

    const-class v3, Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "insertBefore"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setInnerHTML"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "innerHTML"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 119
    return-void
.end method

.method public removeChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->getElementView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->p:Z

    .line 70
    return-void
.end method

.method public setInnerHTML(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 133
    :cond_0
    return-void

    .line 123
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    .line 125
    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    goto :goto_0
.end method
