.class public Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_Recent_Transactions_Details.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

.field mTextViewDate:Landroid/widget/TextView;

.field mTextViewTransactionName:Landroid/widget/TextView;

.field mTextViewTransactionNumber:Landroid/widget/TextView;

.field mTextViewTransactionStatus:Landroid/widget/TextView;

.field mTextViewTransactionType:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mBundle:Landroid/os/Bundle;

    .line 39
    new-instance v0, Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-direct {v0}, Lae/gov/mol/vo/RecentTransactionsdata;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    .line 40
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090048

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/RecentTransactionsdata;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v1, 0x7f0300bf

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    const v1, 0x7f060670

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewDate:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f060674

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionName:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f060676

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f060678

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionType:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f06067d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionStatus:Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getTran_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 73
    :goto_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getTransactionNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionType:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getService_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    return-object v0

    .line 61
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getService_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getService_arabic_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mTextViewTransactionStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v2}, Lae/gov/mol/vo/RecentTransactionsdata;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
