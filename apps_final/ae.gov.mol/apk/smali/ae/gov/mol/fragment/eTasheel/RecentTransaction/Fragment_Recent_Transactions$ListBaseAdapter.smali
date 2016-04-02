.class public Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_Recent_Transactions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 107
    move-object v1, p2

    .line 109
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 110
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 111
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030069

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 112
    new-instance v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    .line 113
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    const v2, 0x7f0602dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 114
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    const v2, 0x7f0602de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;->mTextViewTransactionType:Landroid/widget/TextView;

    .line 115
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    const v2, 0x7f0602df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;->mImageViewTransactionStatus:Landroid/widget/ImageView;

    .line 116
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getTransactionNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 133
    :goto_1
    return-object v1

    .line 118
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    goto :goto_0

    .line 124
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;->mTextViewTransactionType:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getService_arabic_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;->mTextViewTransactionType:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getService_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
