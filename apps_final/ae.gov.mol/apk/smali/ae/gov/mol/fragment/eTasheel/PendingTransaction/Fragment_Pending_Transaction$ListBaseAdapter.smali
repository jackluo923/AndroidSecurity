.class public Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "Fragment_Pending_Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBaseAdapter"
.end annotation


# instance fields
.field holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mPendingTransactionsdata:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mPendingTransactionsdata:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    move-object v1, p2

    .line 112
    .local v1, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 113
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03005e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 115
    new-instance v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    invoke-direct {v2, v3}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;-><init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    .line 116
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    const v2, 0x7f0602c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 117
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    const v2, 0x7f0602c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 118
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    const v2, 0x7f0602c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;->mImageViewStatus:Landroid/widget/ImageView;

    .line 119
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mPendingTransactionsdata:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/PendingTransactionsdata;->getCompany_code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 135
    :goto_1
    return-object v1

    .line 121
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    goto :goto_0

    .line 126
    :pswitch_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mPendingTransactionsdata:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/PendingTransactionsdata;->getCom_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :pswitch_1
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->holder:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;

    iget-object v3, v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mPendingTransactionsdata:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/PendingTransactionsdata;->getCom_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
