.class public Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProvinceCityListAdapter.java"


# static fields
.field public static final TYPE_CITY:I = 0x0

.field public static final TYPE_PROVINCE:I = 0x1


# instance fields
.field private citys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentType:I

.field private mContext:Landroid/content/Context;

.field private mdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentData:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private getCitys(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->mdata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    return-object v0
.end method

.method private getProvinces()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->mdata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 110
    return-object v3

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->mdata:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    iget v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 53
    if-nez p2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/cityselect/R$layout;->provincecitylist_item:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v1, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;)V

    .line 56
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->provincecity_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 57
    iget-object v0, v1, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v2, v1, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :cond_0
    :goto_1
    return-object p2

    .line 60
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 64
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentType:I

    if-nez v0, :cond_0

    .line 65
    if-nez p2, :cond_3

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/cityselect/R$layout;->citylist_item:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v1, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;)V

    .line 68
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->city_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, v1, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    .line 69
    iget-object v0, v1, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_2
    iget-object v2, v1, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;->mApTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_2
.end method

.method public setData(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->mdata:Ljava/util/List;

    .line 88
    iput p2, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentType:I

    .line 89
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->provinces:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->getProvinces()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->provinces:Ljava/util/List;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->provinces:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentData:Ljava/util/List;

    .line 97
    :cond_2
    :goto_0
    return-void

    .line 94
    :cond_3
    if-nez p2, :cond_2

    .line 95
    invoke-direct {p0, p3}, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->getCitys(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListAdapter;->currentData:Ljava/util/List;

    goto :goto_0
.end method
