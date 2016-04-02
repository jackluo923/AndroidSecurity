.class Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;
.super Ljava/lang/Object;
.source "Fragment_RulesandProcedureDetailsAndService.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v1, "mBundle":Landroid/os/Bundle;
    const-string v0, ""

    .line 129
    .local v0, "bundleValue":Ljava/lang/String;
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 130
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mServicesVo:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p3, v5}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->getChildItem(Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    const v3, 0x7f090051

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mStringRulesandProcidureDetailTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v2, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mAndService_Childitem:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;

    invoke-virtual {v2, v1}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;->setArguments(Landroid/os/Bundle;)V

    .line 144
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v2, v2, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mAndService_Childitem:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService_Childitem;

    const/16 v4, 0x1001

    invoke-virtual {v2, v3, v5, v4}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 146
    return-void

    .line 133
    :cond_1
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    if-nez v2, :cond_0

    .line 135
    iget-object v2, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v3, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$2;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v3, v3, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mServicesVo:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->getChildItem(Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
