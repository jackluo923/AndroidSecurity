.class public abstract Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;
.super Landroid/widget/SimpleExpandableListAdapter;
.source "ExpandableCommissionListAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/misc/ExpandableCommissionListHeaderAdapter;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field public listView:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 35
    invoke-direct/range {v1 .. v10}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->c:Ljava/util/HashMap;

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->listView:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

    .line 38
    iput-object p3, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->a:Ljava/util/List;

    .line 39
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->b:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public abstract configureGroupHeader(Landroid/view/View;III)V
.end method

.method public configureHeader(Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->configureGroupHeader(Landroid/view/View;III)V

    .line 62
    return-void
.end method

.method public abstract getChildItemView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->getChildItemView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getGroupClickStatus(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getGroupItemView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->getGroupItemView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderState(II)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-ltz p1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->getChildrenCount(I)I

    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_1

    .line 49
    const/4 v0, 0x2

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->listView:Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/misc/ExpandableCommissionListView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setGroupClickStatus(II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ExpandableCommissionListAdapter;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
