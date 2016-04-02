.class Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;
.super Ljava/lang/Object;
.source "Fragment_eNetwasal.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->listViewOnClick()V
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 81
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v3}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090099

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v5}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 91
    if-nez p3, :cond_3

    .line 94
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;-><init>()V

    .line 95
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900c9

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->setArguments(Landroid/os/Bundle;)V

    .line 99
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 101
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;
    :cond_3
    const/4 v3, 0x1

    if-ne p3, v3, :cond_4

    .line 104
    new-instance v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;-><init>()V

    .line 105
    .local v2, "mFragment_ENetwasal_CompanyQuota_Details":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09013f

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;->setArguments(Landroid/os/Bundle;)V

    .line 109
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v2, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 111
    .end local v2    # "mFragment_ENetwasal_CompanyQuota_Details":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasal_CompanyQuota_Details;
    :cond_4
    const/4 v3, 0x2

    if-ne p3, v3, :cond_5

    .line 113
    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;-><init>()V

    .line 114
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090140

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090145

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setArguments(Landroid/os/Bundle;)V

    .line 118
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 120
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    :cond_5
    const/4 v3, 0x3

    if-ne p3, v3, :cond_6

    .line 122
    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;-><init>()V

    .line 123
    .restart local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900d7

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setArguments(Landroid/os/Bundle;)V

    .line 127
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 129
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    :cond_6
    const/4 v3, 0x4

    if-ne p3, v3, :cond_7

    .line 131
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;-><init>()V

    .line 132
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090142

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v4

    iget-object v4, v4, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v5

    invoke-virtual {v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getEServiceRenewLabourCard()Lae/gov/mol/vo/ServiceDataVo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->setArguments(Landroid/os/Bundle;)V

    .line 137
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 139
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;
    :cond_7
    const/4 v3, 0x5

    if-ne p3, v3, :cond_8

    .line 141
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;-><init>()V

    .line 142
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090143

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;->setArguments(Landroid/os/Bundle;)V

    .line 146
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 148
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_CardList;
    :cond_8
    const/4 v3, 0x6

    if-ne p3, v3, :cond_9

    .line 150
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;-><init>()V

    .line 151
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090144

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;->setArguments(Landroid/os/Bundle;)V

    .line 155
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 158
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_NawakasList;
    :cond_9
    const/4 v3, 0x7

    if-ne p3, v3, :cond_a

    .line 160
    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;-><init>()V

    .line 161
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090150

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900b2

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setArguments(Landroid/os/Bundle;)V

    .line 165
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 167
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    :cond_a
    const/16 v3, 0x8

    if-ne p3, v3, :cond_b

    .line 169
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;-><init>()V

    .line 170
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090151

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;->setArguments(Landroid/os/Bundle;)V

    .line 174
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 176
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyCategoryInfo;
    :cond_b
    const/16 v3, 0x9

    if-ne p3, v3, :cond_c

    .line 178
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;-><init>()V

    .line 179
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090152

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->setArguments(Landroid/os/Bundle;)V

    .line 183
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 185
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;
    :cond_c
    const/16 v3, 0xa

    if-ne p3, v3, :cond_e

    .line 187
    const-string v0, ""

    .line 188
    .local v0, "mCompanyNo":Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    if-eqz v3, :cond_d

    .line 189
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_d
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f0900fe

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090153

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v3, v4, v5, v6, v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->showDateScreenForm(Ljava/lang/String;Ljava/lang/String;Lae/gov/mol/vo/OwnerstatisticsVo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v0    # "mCompanyNo":Ljava/lang/String;
    :cond_e
    const/16 v3, 0xb

    if-ne p3, v3, :cond_10

    .line 196
    const-string v0, ""

    .line 197
    .restart local v0    # "mCompanyNo":Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    if-eqz v3, :cond_f

    .line 198
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v3}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_f
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f0900fe

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090154

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v3, v4, v5, v6, v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->showDateScreenForm(Ljava/lang/String;Ljava/lang/String;Lae/gov/mol/vo/OwnerstatisticsVo;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v0    # "mCompanyNo":Ljava/lang/String;
    :cond_10
    const/16 v3, 0xc

    if-ne p3, v3, :cond_11

    .line 204
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;-><init>()V

    .line 205
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090155

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;->setArguments(Landroid/os/Bundle;)V

    .line 209
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 211
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceipt;
    :cond_11
    const/16 v3, 0xd

    if-ne p3, v3, :cond_12

    .line 213
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;-><init>()V

    .line 214
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090111

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->setArguments(Landroid/os/Bundle;)V

    .line 218
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 220
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;
    :cond_12
    const/16 v3, 0xe

    if-ne p3, v3, :cond_13

    .line 222
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;-><init>()V

    .line 223
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090157

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09010a

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;->setArguments(Landroid/os/Bundle;)V

    .line 227
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 230
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_OwnerCompanyDetails_List;
    :cond_13
    const/16 v3, 0xf

    if-ne p3, v3, :cond_14

    .line 232
    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;-><init>()V

    .line 233
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09022f

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900d7

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setArguments(Landroid/os/Bundle;)V

    .line 237
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 239
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    :cond_14
    const/16 v3, 0x10

    if-ne p3, v3, :cond_15

    .line 241
    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;-><init>()V

    .line 242
    .restart local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090159

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f090162

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setArguments(Landroid/os/Bundle;)V

    .line 246
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 248
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    :cond_15
    const/16 v3, 0x11

    if-ne p3, v3, :cond_16

    .line 250
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;-><init>()V

    .line 251
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09015a

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;->setArguments(Landroid/os/Bundle;)V

    .line 255
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 257
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiry;
    :cond_16
    const/16 v3, 0x12

    if-ne p3, v3, :cond_17

    .line 259
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;-><init>()V

    .line 260
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09015b

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;->setArguments(Landroid/os/Bundle;)V

    .line 264
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 266
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaints;
    :cond_17
    const/16 v3, 0x13

    if-ne p3, v3, :cond_18

    .line 268
    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;-><init>()V

    .line 269
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09015c

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;->setArguments(Landroid/os/Bundle;)V

    .line 273
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 275
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGuaranteeInfo;
    :cond_18
    const/16 v3, 0x14

    if-ne p3, v3, :cond_19

    .line 277
    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;-><init>()V

    .line 278
    .local v1, "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09015d

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09010a

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setArguments(Landroid/os/Bundle;)V

    .line 282
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 284
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    :cond_19
    const/16 v3, 0x15

    if-ne p3, v3, :cond_1a

    .line 286
    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-direct {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;-><init>()V

    .line 287
    .restart local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f09003d

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09015e

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09010a

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "screen_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setArguments(Landroid/os/Bundle;)V

    .line 291
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->molFragmentActivity:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0

    .line 293
    .end local v1    # "mFragment":Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;
    :cond_1a
    const/16 v3, 0x16

    if-ne p3, v3, :cond_0

    .line 295
    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v5, 0x7f0900d7

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    const v6, 0x7f09015f

    invoke-virtual {v5, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    const-string v7, ""

    invoke-virtual {v3, v4, v5, v6, v7}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->showDateScreenForm(Ljava/lang/String;Ljava/lang/String;Lae/gov/mol/vo/OwnerstatisticsVo;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
