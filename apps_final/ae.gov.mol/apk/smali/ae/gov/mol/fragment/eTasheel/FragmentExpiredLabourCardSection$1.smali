.class Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;
.super Ljava/lang/Object;
.source "FragmentExpiredLabourCardSection.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->listViewOnClick()V
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
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x2

    const v3, 0x7f090047

    const/16 v5, 0x1001

    const/4 v4, 0x1

    .line 75
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    invoke-direct {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;-><init>()V

    .line 76
    .local v0, "mFragment":Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;
    if-nez p3, :cond_1

    .line 78
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->setArguments(Landroid/os/Bundle;)V

    .line 80
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->molFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-ne p3, v4, :cond_2

    .line 84
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->setArguments(Landroid/os/Bundle;)V

    .line 86
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->molFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0

    .line 88
    :cond_2
    if-ne p3, v6, :cond_0

    .line 90
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->setArguments(Landroid/os/Bundle;)V

    .line 92
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection$1;->this$0:Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/FragmentExpiredLabourCardSection;->molFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v1, v0, v4, v5}, Lae/gov/mol/helper/CustomFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    goto :goto_0
.end method
