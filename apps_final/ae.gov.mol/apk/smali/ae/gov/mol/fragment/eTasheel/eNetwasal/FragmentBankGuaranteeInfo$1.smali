.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo$1;
.super Ljava/lang/Object;
.source "FragmentBankGuaranteeInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "Position"    # I
    .param p4, "id"    # J
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
    .line 94
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;-><init>()V

    .line 95
    .local v1, "mFragmentComplaintDetails":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    const v3, 0x7f09004a

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "Values "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/BankGuaranteeInfoVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->getBANKNAME()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->setArguments(Landroid/os/Bundle;)V

    .line 100
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {v2, v1, v3, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 101
    return-void
.end method
