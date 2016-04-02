.class Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$1;
.super Ljava/lang/Object;
.source "Fragment_Recent_Transactions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$1;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "Position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;-><init>()V

    .line 64
    .local v1, "mFragment_Transactions_Details":Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$1;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$1;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions_Details;->setArguments(Landroid/os/Bundle;)V

    .line 67
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions$1;->this$0:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {v2, v1, v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 68
    return-void
.end method
