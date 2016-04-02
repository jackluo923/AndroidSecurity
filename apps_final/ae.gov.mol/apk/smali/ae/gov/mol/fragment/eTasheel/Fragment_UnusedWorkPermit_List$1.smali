.class Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;
.super Ljava/lang/Object;
.source "Fragment_UnusedWorkPermit_List.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 110
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-class v2, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v1

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mFragmentBundle:Landroid/os/Bundle;

    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mStrCompanyNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/GetUnusedWP;

    invoke-virtual {v1}, Lae/gov/mol/vo/GetUnusedWP;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List$1;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;

    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/eTasheel/Fragment_UnusedWorkPermit_List;->startActivity(Landroid/content/Intent;)V

    .line 119
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
