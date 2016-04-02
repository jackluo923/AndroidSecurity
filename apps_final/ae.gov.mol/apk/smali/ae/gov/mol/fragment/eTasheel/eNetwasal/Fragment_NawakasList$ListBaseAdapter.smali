.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_NawakasList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 129
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 135
    move-object v1, p2

    .line 137
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 138
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 139
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0300aa

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 140
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    .line 141
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    const v2, 0x7f0605c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;->mTextViewNawakesType:Landroid/widget/TextView;

    .line 142
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    const v2, 0x7f0605c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 143
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;->mTextViewNawakesType:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/NawakasDataVo;->getNawakasTypeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/NawakasDataVo;->getTransactionNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-object v1

    .line 145
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList$ViewHolder;

    goto :goto_0
.end method
