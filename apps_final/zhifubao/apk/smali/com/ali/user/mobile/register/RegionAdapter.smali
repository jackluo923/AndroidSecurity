.class public Lcom/ali/user/mobile/register/RegionAdapter;
.super Landroid/widget/BaseAdapter;
.source "RegionAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/register/RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/register/RegionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/register/RegionAdapter;->a:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/ali/user/mobile/register/RegionAdapter;->b:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/ali/user/mobile/register/RegionAdapter;->a:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 45
    if-nez p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->region:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 47
    new-instance v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;-><init>(Lcom/ali/user/mobile/register/RegionAdapter;)V

    .line 48
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contact_item_head:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 49
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contact_item_header_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mHeaderText:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->region_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mRegionDivider:Landroid/view/View;

    .line 51
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->region_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mRegiontNameText:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->region_number:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mRegionNubmerText:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/RegionAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/RegionInfo;

    .line 58
    iget-boolean v2, v0, Lcom/ali/user/mobile/register/RegionInfo;->isDisplayLetter:Z

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v2, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mRegionDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v2, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ali/user/mobile/register/RegionInfo;->mCharacter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    :goto_1
    iget-object v2, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mRegiontNameText:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ali/user/mobile/register/RegionInfo;->mRegionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mRegionNubmerText:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-object p2

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v2, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v2, v1, Lcom/ali/user/mobile/register/RegionAdapter$ViewHolder;->mRegionDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method
