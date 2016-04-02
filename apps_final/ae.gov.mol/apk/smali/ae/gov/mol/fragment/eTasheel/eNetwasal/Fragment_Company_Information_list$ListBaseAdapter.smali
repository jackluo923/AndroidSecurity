.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_Company_Information_list.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    move-object v1, p2

    .line 149
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 150
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 151
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 152
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    .line 153
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    const v2, 0x7f0600f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 154
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    const v2, 0x7f0600fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 173
    :goto_1
    return-object v1

    .line 157
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyNameEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 166
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyNameArabic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
