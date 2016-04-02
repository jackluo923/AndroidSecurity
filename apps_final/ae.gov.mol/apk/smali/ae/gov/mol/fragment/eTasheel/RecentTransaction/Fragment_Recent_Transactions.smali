.class public Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_Recent_Transactions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ViewHolder;
    }
.end annotation


# instance fields
.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;

.field mListViewRecentTransactions:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRecentTransactionsdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/RecentTransactionsdata;",
            ">;"
        }
    .end annotation
.end field

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/os/Bundle;)Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
    .locals 1
    .param p0, "fragment_eTasheel_Pager"    # Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 76
    new-instance v0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;-><init>()V

    .line 77
    .local v0, "f":Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
    invoke-virtual {v0, p1}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->setArguments(Landroid/os/Bundle;)V

    .line 78
    iput-object p0, v0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 79
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 49
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f030067

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0602d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mListViewRecentTransactions:Landroid/widget/ListView;

    .line 58
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mListViewRecentTransactions:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$1;-><init>(Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 148
    return-void
.end method

.method public updateView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/RecentTransactionsdata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "mRecentTransactionsdatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/RecentTransactionsdata;>;"
    if-eqz p1, :cond_0

    .line 152
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    new-instance v0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;

    .line 155
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mListViewRecentTransactions:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mListViewRecentTransactions:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    :cond_0
    return-void
.end method
