.class public Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_Pending_Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ViewHolder;
    }
.end annotation


# instance fields
.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;

.field mListViewPendingTreansaction:Landroid/widget/ListView;

.field mPendingTransactionsdata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PendingTransactionsdata;",
            ">;"
        }
    .end annotation
.end field

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/os/Bundle;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
    .locals 1
    .param p0, "fragment_eTasheel_Pager"    # Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 78
    new-instance v0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;-><init>()V

    .line 79
    .local v0, "f":Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
    invoke-virtual {v0, p1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->setArguments(Landroid/os/Bundle;)V

    .line 80
    iput-object p0, v0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 81
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 50
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0602d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mListViewPendingTreansaction:Landroid/widget/ListView;

    .line 60
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mListViewPendingTreansaction:Landroid/widget/ListView;

    new-instance v2, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$1;-><init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 150
    return-void
.end method

.method public updateView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PendingTransactionsdata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "mPendingTransactionsdatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/PendingTransactionsdata;>;"
    if-eqz p1, :cond_0

    .line 157
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mPendingTransactionsdata:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    new-instance v0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;

    .line 160
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mListViewPendingTreansaction:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mListViewPendingTreansaction:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    :cond_0
    return-void
.end method
