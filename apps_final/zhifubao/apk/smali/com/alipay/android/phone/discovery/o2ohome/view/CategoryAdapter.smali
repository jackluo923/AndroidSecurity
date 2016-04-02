.class public Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;
.super Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;
.source "CategoryAdapter.java"


# instance fields
.field private actionExpandParam:Ljava/lang/String;

.field private categoryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

.field private onCellViewClick:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

.field private removedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->removedViews:Ljava/util/LinkedList;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->actionExpandParam:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->onCellViewClick:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->context:Landroid/app/Activity;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->categoryData:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->categoryData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public clearCategoryData()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->categoryData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    return-void
.end method

.method public createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 57
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 61
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    iget-object v1, v1, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;->data:Ljava/util/Map;

    const-string/jumbo v3, "menus"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 66
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->getPageSize()I

    move-result v3

    .line 67
    mul-int v4, p2, v3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 68
    add-int/lit8 v1, p2, 0x1

    mul-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 69
    mul-int/2addr v3, p2

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONArray;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->removedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;

    .line 73
    if-eqz v0, :cond_2

    .line 74
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->actionExpandParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->resetDatas(Ljava/util/List;Ljava/lang/String;)V

    .line 80
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_1
    return-object v0

    .line 76
    :cond_2
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->context:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;-><init>(Landroid/content/Context;)V

    .line 77
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->actionExpandParam:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->onCellViewClick:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    const-string/jumbo v5, "offlinetaobao"

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;->initCells(Ljava/util/List;Ljava/lang/String;Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroyView(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 88
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->removedViews:Ljava/util/LinkedList;

    check-cast p3, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryView;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 94
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public realCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->categoryData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setActionExpandParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->actionExpandParam:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    .line 40
    return-void
.end method

.method public setOnCellViewClick(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryAdapter;->onCellViewClick:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    .line 103
    return-void
.end method
