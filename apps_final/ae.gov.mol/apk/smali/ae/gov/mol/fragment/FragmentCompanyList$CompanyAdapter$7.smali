.class Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;
.super Ljava/lang/Object;
.source "FragmentCompanyList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    iput p2, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;->val$position:I

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 402
    new-instance v1, Lae/gov/mol/fragment/FragmenViolationList;

    invoke-direct {v1}, Lae/gov/mol/fragment/FragmenViolationList;-><init>()V

    .line 403
    .local v1, "mFragmenViolationList":Lae/gov/mol/fragment/FragmenViolationList;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v2

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v3, v2, Lae/gov/mol/helper/Tags;->mCompanyViolation:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v2

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static {v2}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerstatisticsVo;->getmViolationStatsVo()Lae/gov/mol/vo/ViolationStatsVo;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 405
    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/FragmenViolationList;->setArguments(Landroid/os/Bundle;)V

    .line 406
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$7;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v2

    iget-object v2, v2, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-virtual {v2, v1, v3, v4}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 407
    return-void
.end method
