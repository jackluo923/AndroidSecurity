.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentPaymentReceiptList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field mTextViewtitleOne:Landroid/widget/TextView;

.field mTextViewtitleTwo:Landroid/widget/TextView;

.field mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;->mArrayList:Ljava/util/ArrayList;

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
    .locals 5
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
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 146
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    .line 148
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    const v2, 0x7f06028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 149
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    const v2, 0x7f06028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;->mTextViewReceiptNumber:Landroid/widget/TextView;

    .line 150
    const v2, 0x7f06028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mTextViewtitleOne:Landroid/widget/TextView;

    .line 151
    const v2, 0x7f06028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mTextViewtitleTwo:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mTextViewtitleOne:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    const v4, 0x7f09010a

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mTextViewtitleTwo:Landroid/widget/TextView;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    const v4, 0x7f090162

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->getPersonCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;->mTextViewReceiptNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->getReceiptNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-object v1

    .line 154
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ListBaseAdapter;->mViewHolder:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptList$ViewHolder;

    goto :goto_0
.end method
