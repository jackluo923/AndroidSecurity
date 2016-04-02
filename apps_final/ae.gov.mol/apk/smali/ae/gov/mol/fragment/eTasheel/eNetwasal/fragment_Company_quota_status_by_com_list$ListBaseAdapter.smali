.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "fragment_Company_quota_status_by_com_list.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 157
    move-object v1, p2

    .line 159
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 160
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 161
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030038

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 162
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    .line 163
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    const v2, 0x7f060101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 164
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    const v2, 0x7f060103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 165
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getTransaction_x0020_Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getCompany_x0020_Code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-object v1

    .line 167
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$ViewHolder;

    goto :goto_0
.end method
