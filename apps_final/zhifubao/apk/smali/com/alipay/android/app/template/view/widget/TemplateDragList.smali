.class public Lcom/alipay/android/app/template/view/widget/TemplateDragList;
.super Lcom/alipay/android/app/template/view/widget/TBaseComponent;
.source "TemplateDragList.java"


# instance fields
.field private d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

.field private p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

.field private q:I

.field private r:Z

.field private s:Ljava/util/List;

.field private t:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

.field private u:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

.field private v:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->r:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->s:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList$1;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->t:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    .line 164
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList$2;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->u:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

    .line 171
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$3;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList$3;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->v:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->b:Landroid/view/ViewGroup;

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 82
    return-void
.end method

.method public addChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->fillElementView(Landroid/app/Activity;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->init()V

    .line 121
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    .line 122
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->s:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->setList(Ljava/util/List;)V

    .line 123
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->getInstance()Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;

    move-result-object v2

    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->s:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    :goto_0
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->startEditMode(I)V

    .line 125
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->t:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDropListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DropListener;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->u:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setRemoveListener(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$RemoveListener;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->v:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDragScrollProfile(Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->s:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    const/high16 v2, 0x422c0000    # 43.0f

    sget v4, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 135
    :goto_1
    mul-int/2addr v2, v0

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->q:I

    .line 136
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->q:I

    if-lez v2, :cond_0

    .line 137
    iget v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->q:I

    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    .line 138
    invoke-virtual {v5}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->q:I

    .line 139
    const/4 v2, 0x4

    if-lt v0, v2, :cond_3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 140
    :goto_2
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->q:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    sget v4, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    iput-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDividerHeight(I)V

    .line 144
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x333334

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->d:Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->notifyDataSetChanged()V

    .line 147
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->r:Z

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    .line 150
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 124
    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 139
    goto :goto_2

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public getValue()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 86
    const-string/jumbo v1, ""

    .line 88
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->getCount()I

    move-result v4

    move v2, v0

    .line 90
    :goto_0
    if-lt v2, v4, :cond_1

    :cond_0
    move v6, v0

    move-object v0, v1

    move v1, v6

    .line 100
    if-eqz v1, :cond_3

    .line 103
    :goto_1
    return-object v0

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->getItem(I)Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    move-result-object v3

    .line 92
    iget v5, v3, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->value:I

    if-eq v2, v5, :cond_2

    .line 93
    const/4 v0, 0x1

    .line 95
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->value:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_0

    .line 103
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setList"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "list"

    invoke-virtual {p1, v1, v2, v6, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setEditMode"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "editMode"

    invoke-virtual {p1, v1, v2, v6, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 53
    return-void
.end method

.method public removeChild(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->remove(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->setEditMode(Z)V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->p:Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->notifyDataSetChanged()V

    .line 60
    :cond_0
    return-void
.end method

.method public setList(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getVarJson()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "switch_seq"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->r:Z

    .line 66
    :cond_0
    new-instance v1, Lcom/alipay/android/app/json/JSONArray;

    invoke-direct {v1, p1}, Lcom/alipay/android/app/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v2

    .line 68
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 75
    return-void

    .line 69
    :cond_1
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    new-instance v4, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;

    invoke-direct {v4}, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;-><init>()V

    .line 71
    iput-object v3, v4, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->payment:Ljava/lang/String;

    .line 72
    iput v0, v4, Lcom/alipay/android/app/template/view/widget/TemplateDragList$Payment;->value:I

    .line 73
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->s:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
