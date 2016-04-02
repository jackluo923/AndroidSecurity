.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_National_Labour_CardList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 142
    move-object v1, p2

    .line 144
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 145
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 146
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300a8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    .line 148
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    const v2, 0x7f0605bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 149
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    const v2, 0x7f0605bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 150
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/NationalLabourCardListVo;->getPersonCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->mLabourCardListVos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/NationalLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-object v1

    .line 152
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList$ViewHolder;

    goto :goto_0
.end method
