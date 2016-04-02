.class Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;
.super Ljava/lang/Object;
.source "Fragment_ENetwasalForm.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "mView"    # Landroid/view/View;
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
    const v6, 0x7f090061

    const/4 v5, 0x1

    .line 153
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/PersonCompanyListVo;

    .line 155
    .local v1, "mPersonCompanyList":Lae/gov/mol/vo/PersonCompanyListVo;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCurrentScrrenFormType:I
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 157
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;-><init>()V

    .line 158
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mBundleForDateForm:Landroid/os/Bundle;

    .line 159
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mBundleForDateForm:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getCom_code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 161
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameE()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mStringCompanyName:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mBundleForDateForm:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-virtual {v3, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "English >>>>>>>>>>>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mBundleForDateForm:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    const v4, 0x7f090046

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strEnterTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mBundleForDateForm:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v4, v4, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->strIsFrom:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mBundleForDateForm:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;->setArguments(Landroid/os/Bundle;)V

    .line 174
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const/16 v3, 0x1001

    invoke-virtual {v2, v0, v5, v3}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 186
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;
    :goto_1
    return-void

    .line 165
    .restart local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;
    :cond_1
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v2, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mBundleForDateForm:Landroid/os/Bundle;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-virtual {v3, v6}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameA()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mStringCompanyName:Ljava/lang/String;

    .line 168
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Arabic >>>>>>>>>>>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v0    # "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEnetwasalDateForm;
    :cond_2
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 178
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getCom_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->ShowDetailScreen(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "umar_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->mStringCompanyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_4
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v2

    if-nez v2, :cond_3

    .line 181
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm$2;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getCom_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->ShowDetailScreen(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method
