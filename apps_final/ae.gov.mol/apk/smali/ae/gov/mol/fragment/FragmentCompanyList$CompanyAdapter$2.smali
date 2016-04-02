.class Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;
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
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    iput p2, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->val$position:I

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/OwnerstatisticsVo;->getTOTALABSCONDING()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/OwnerstatisticsVo;->getEMPLOYEES()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v0

    new-instance v1, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;

    iget-object v2, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v2}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;-><init>(Lae/gov/mol/fragment/FragmentCompanyList;)V

    invoke-static {v0, v1}, Lae/gov/mol/fragment/FragmentCompanyList;->access$1(Lae/gov/mol/fragment/FragmentCompanyList;Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;)V

    .line 280
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mBackProcess:Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList;->access$2(Lae/gov/mol/fragment/FragmentCompanyList;)Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v0

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->val$position:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/OwnerstatisticsVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/OwnerstatisticsVo;->getCOMPANYCODE()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter$2;->this$1:Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;
    invoke-static {v3}, Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;->access$0(Lae/gov/mol/fragment/FragmentCompanyList$CompanyAdapter;)Lae/gov/mol/fragment/FragmentCompanyList;

    move-result-object v3

    iget-object v3, v3, Lae/gov/mol/fragment/FragmentCompanyList;->mAbscondingList:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/FragmentCompanyList$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    :cond_0
    return-void
.end method
