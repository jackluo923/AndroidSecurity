.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentCompanyTransactionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mTextViewTitleOne:Landroid/widget/TextView;

.field mTextViewTitleThree:Landroid/widget/TextView;

.field mTextViewTitleTwo:Landroid/widget/TextView;

.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v0

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
    .locals 4
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
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

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

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mTextViewTitleOne:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f06028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mTextViewTitleTwo:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f060290

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mTextViewTitleThree:Landroid/widget/TextView;

    .line 154
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    .line 156
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    const v2, 0x7f06028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    const v2, 0x7f06028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;->mTextViewTransactionName:Landroid/widget/TextView;

    .line 158
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    const v2, 0x7f060291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;->mTextViewDate:Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mTextViewTitleOne:Landroid/widget/TextView;

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mTextViewTitleTwo:Landroid/widget/TextView;

    const v3, 0x7f0900b1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyTransactionList;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyTransactionList;->getTransactionNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;->mTextViewDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyTransactionList;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyTransactionList;->getSubmitDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 178
    :goto_1
    return-object v1

    .line 161
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    goto :goto_0

    .line 169
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;->mTextViewTransactionName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyTransactionList;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyTransactionList;->getTransactionTypeEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ViewHolder;->mTextViewTransactionName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->mArrayList:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyTransactionList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/CompanyTransactionList;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyTransactionList;->getTransactionTypeArabic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
