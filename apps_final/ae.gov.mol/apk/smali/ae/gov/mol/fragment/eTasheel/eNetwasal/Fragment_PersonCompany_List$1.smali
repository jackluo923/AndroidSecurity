.class Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$1;
.super Ljava/lang/Object;
.source "Fragment_PersonCompany_List.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;

    .line 88
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
    .line 91
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;-><init>()V

    .line 92
    .local v1, "mFragment_PersonCompany_Details":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;

    const v3, 0x7f09004a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->setArguments(Landroid/os/Bundle;)V

    .line 95
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {v2, v1, v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 96
    return-void
.end method
