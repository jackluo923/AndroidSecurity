.class public Lcom/alipay/mobile/common/ui/CityListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field mCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendsPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendsSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSearchResult:Z

.field private mLocationPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mLocationPosition:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mIsSearchResult:Z

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mFriendsSections:Ljava/util/List;

    .line 39
    iput-object p4, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mFriendsPositions:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 121
    if-gez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    .line 125
    sget v1, Lcom/alipay/android/phone/cityselect/R$id;->friends_list_header_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 126
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 101
    if-ltz p1, :cond_1

    .line 103
    iget v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mLocationPosition:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mLocationPosition:I

    if-eq v0, p1, :cond_1

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mIsSearchResult:Z

    if-eqz v0, :cond_2

    .line 105
    :cond_1
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 107
    :cond_2
    iput v1, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mLocationPosition:I

    .line 108
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getPositionForSection(I)I

    move-result v0

    .line 110
    if-eq v0, v1, :cond_3

    .line 111
    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 112
    const/4 v0, 0x2

    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 136
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mFriendsSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 137
    :cond_0
    const/4 v0, -0x1

    .line 139
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mFriendsPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 144
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 145
    :cond_0
    const/4 v0, -0x1

    .line 148
    :cond_1
    :goto_0
    return v0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mFriendsPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 148
    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mFriendsSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getSectionForPosition(I)I

    move-result v2

    .line 61
    if-nez p2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/android/phone/cityselect/R$layout;->lifepay_citylistview_item:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/common/ui/CityListAdapter;)V

    .line 65
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->friends_item_header_parent:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 64
    iput-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 67
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->friends_item_header_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 66
    iput-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 69
    sget v0, Lcom/alipay/android/phone/cityselect/R$id;->friends_item:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 68
    iput-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mCityText:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :goto_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/ui/CityListAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mIsSearchResult:Z

    if-nez v0, :cond_1

    .line 76
    iget-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 77
    iget-object v3, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mFriendsSections:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_1
    iget-object v1, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mCityText:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-object p2

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/common/ui/CityListAdapter$ViewHolder;->mHeaderLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 94
    instance-of v0, p1, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->configureHeaderView(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public refreshUi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mCityList:Ljava/util/List;

    .line 154
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->notifyDataSetChanged()V

    .line 155
    return-void
.end method

.method public setIsSearchResult(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/alipay/mobile/common/ui/CityListAdapter;->mIsSearchResult:Z

    .line 159
    return-void
.end method
