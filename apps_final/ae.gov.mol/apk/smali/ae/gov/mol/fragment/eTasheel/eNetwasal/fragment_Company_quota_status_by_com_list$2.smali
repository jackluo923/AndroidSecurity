.class Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$2;
.super Ljava/lang/Object;
.source "fragment_Company_quota_status_by_com_list.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    .line 107
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
    .line 110
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;-><init>()V

    .line 111
    .local v1, "mFragment_Inquiry_Com_QuotaStatusByComNo":Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    const v3, 0x7f09004a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    const v3, 0x7f090041

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->setArguments(Landroid/os/Bundle;)V

    .line 115
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list$2;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/fragment_Company_quota_status_by_com_list;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {v2, v1, v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 116
    return-void
.end method
