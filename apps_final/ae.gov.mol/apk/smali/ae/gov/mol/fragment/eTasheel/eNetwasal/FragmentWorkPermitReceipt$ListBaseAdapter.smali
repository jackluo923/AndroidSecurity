.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentWorkPermitReceipt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mTableRow:Landroid/widget/TableRow;

.field mTextViewTitle_PersonName:Landroid/widget/TextView;

.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 144
    move-object v1, p2

    .line 146
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 147
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 149
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

    .line 150
    const v2, 0x7f06028c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mTableRow:Landroid/widget/TableRow;

    .line 151
    const v2, 0x7f06028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mTextViewTitle_PersonName:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mTextViewTitle_PersonName:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    const v4, 0x7f0900e5

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

    const v2, 0x7f06028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mTableRow:Landroid/widget/TableRow;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 160
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 172
    :goto_1
    return-object v1

    .line 157
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getPer_name_eng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 165
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ViewHolder;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getPer_name_arb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
