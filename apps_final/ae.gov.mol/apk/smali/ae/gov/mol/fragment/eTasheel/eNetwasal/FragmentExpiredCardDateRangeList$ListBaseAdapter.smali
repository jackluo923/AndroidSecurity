.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentExpiredCardDateRangeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mTextViewTitleOne:Landroid/widget/TextView;

.field mTextViewTitleThree:Landroid/widget/TextView;

.field mTextViewTitleTwo:Landroid/widget/TextView;

.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 148
    move-object v1, p2

    .line 150
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 151
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 152
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    const v2, 0x7f06028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mTextViewTitleOne:Landroid/widget/TextView;

    .line 154
    const v2, 0x7f06028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mTextViewTitleTwo:Landroid/widget/TextView;

    .line 155
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    .line 157
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    const v2, 0x7f06028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 158
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    const v2, 0x7f06028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;->mTextViewTransactionName:Landroid/widget/TextView;

    .line 159
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    const v2, 0x7f060291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;->mTextViewDate:Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mTextViewTitleOne:Landroid/widget/TextView;

    const v3, 0x7f0900d7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mTextViewTitleTwo:Landroid/widget/TextView;

    const v3, 0x7f090104

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;->mTextViewDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 181
    :goto_1
    return-object v1

    .line 163
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    goto :goto_0

    .line 171
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;->mTextViewTransactionName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getCardTypeEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 174
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ViewHolder;->mTextViewTransactionName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeList;->mExpiredCard_DateRangeVo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getCardTypeArabic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
