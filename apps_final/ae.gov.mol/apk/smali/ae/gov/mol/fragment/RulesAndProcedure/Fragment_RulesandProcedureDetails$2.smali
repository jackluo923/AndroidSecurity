.class Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;
.super Ljava/lang/Object;
.source "Fragment_RulesandProcedureDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 97
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    invoke-direct {v1}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;-><init>()V

    .line 98
    .local v1, "mRulesandProcidureDetailsAndService":Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;
    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mServiceGroupDetailsVo:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/ServiceGroupDetailsVo;

    .line 99
    .local v2, "mServiceDetailVo":Lae/gov/mol/vo/ServiceGroupDetailsVo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "mBundle":Landroid/os/Bundle;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 110
    :goto_0
    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mRulesAndProcedureId:Ljava/lang/String;

    iget-object v4, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v4, v4, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mStringRulesandProcidureId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mRulesAndProcedureServiceId:Ljava/lang/String;

    invoke-virtual {v2}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->getService_code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->setArguments(Landroid/os/Bundle;)V

    .line 113
    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/4 v4, 0x1

    const/16 v5, 0x1001

    invoke-virtual {v3, v1, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 114
    return-void

    .line 102
    :pswitch_0
    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mRulesAndProcedureDetailTitle:Ljava/lang/String;

    invoke-virtual {v2}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->getService_name_eng()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v3, Lae/gov/mol/helper/Tags;->mRulesAndProcedureDetailTitle:Ljava/lang/String;

    invoke-virtual {v2}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->getService_name_arb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
