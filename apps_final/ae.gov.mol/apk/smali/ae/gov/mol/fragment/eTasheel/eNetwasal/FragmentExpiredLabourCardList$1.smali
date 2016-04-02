.class Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;
.super Ljava/lang/Object;
.source "FragmentExpiredLabourCardList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "Id"    # J
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
    .local p1, "mAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v8, 0x7f09005b

    const v7, 0x7f090055

    .line 64
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 65
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Lae/gov/mol/vo/ExpiredCard_infoVo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 66
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mFragmentBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selectedIndex"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "index":I
    if-nez v0, :cond_1

    .line 68
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-class v5, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v3, "mIntent":Landroid/content/Intent;
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v4

    iget-object v4, v4, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mFragmentBundle:Landroid/os/Bundle;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v6

    iget-object v6, v6, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-virtual {v4, v7}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mStrCompanyNo:Ljava/lang/String;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-virtual {v4, v8}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-virtual {v4, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v0    # "index":I
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v0    # "index":I
    :cond_1
    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    .line 75
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-class v5, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .restart local v3    # "mIntent":Landroid/content/Intent;
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v4

    iget-object v4, v4, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mFragmentBundle:Landroid/os/Bundle;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v6

    iget-object v6, v6, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-virtual {v4, v7}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mStrCompanyNo:Ljava/lang/String;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-virtual {v4, v8}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v4}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    invoke-virtual {v4, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;

    invoke-direct {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;-><init>()V

    .line 84
    .local v2, "mFragment_ExpiredCard_Labour_Card":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v1, "mBundle":Landroid/os/Bundle;
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    const v5, 0x7f09004a

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mExpiredLabourCardListVos:Ljava/util/ArrayList;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    const v5, 0x7f09004c

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;
    invoke-static {v5}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;)Lae/gov/mol/vo/ExpiredCard_infoVo;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    invoke-virtual {v2, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->setArguments(Landroid/os/Bundle;)V

    .line 88
    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList$1;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v5, 0x1

    const/16 v6, 0x1001

    invoke-virtual {v4, v2, v5, v6}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto/16 :goto_0
.end method
