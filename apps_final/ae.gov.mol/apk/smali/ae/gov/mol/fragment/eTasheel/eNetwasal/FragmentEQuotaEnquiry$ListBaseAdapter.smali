.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentEQuotaEnquiry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mTableRowThree:Landroid/widget/TableRow;

.field mTextViewTitleOne:Landroid/widget/TextView;

.field mTextViewTitleThree:Landroid/widget/TextView;

.field mTextViewTitleTwo:Landroid/widget/TextView;

.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 140
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 146
    move-object v1, p2

    .line 148
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 149
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 150
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 151
    const v2, 0x7f06028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mTextViewTitleOne:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f06028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mTextViewTitleTwo:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f060290

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mTextViewTitleThree:Landroid/widget/TextView;

    .line 154
    const v2, 0x7f06028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mTableRowThree:Landroid/widget/TableRow;

    .line 155
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    .line 156
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    const v2, 0x7f06028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;->mTextViewJobCode:Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    const v2, 0x7f06028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    .line 158
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    const v2, 0x7f060291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;->mTextViewDate:Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mTableRowThree:Landroid/widget/TableRow;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mTextViewTitleOne:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    const v4, 0x7f0900e3

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mTextViewTitleTwo:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    const v4, 0x7f0900e4

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;->mTextViewJobCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getJob_x0020_Code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-object v1

    .line 161
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry$ViewHolder;

    goto :goto_0
.end method
