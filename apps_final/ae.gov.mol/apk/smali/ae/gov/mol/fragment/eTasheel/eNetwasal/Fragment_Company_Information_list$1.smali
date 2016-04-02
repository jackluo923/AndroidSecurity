.class Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;
.super Ljava/lang/Object;
.source "Fragment_Company_Information_list.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 101
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;-><init>()V

    .line 102
    .local v0, "mFragment_company_information_detail":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mBundle:Landroid/os/Bundle;

    .line 103
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v2, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    const v3, 0x7f09004a

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->setArguments(Landroid/os/Bundle;)V

    .line 106
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Company_Information_list;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v2, 0x1

    const/16 v3, 0x1001

    invoke-virtual {v1, v0, v2, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 107
    return-void
.end method
