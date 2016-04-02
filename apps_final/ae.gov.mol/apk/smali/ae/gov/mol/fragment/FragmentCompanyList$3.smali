.class Lae/gov/mol/fragment/FragmentCompanyList$3;
.super Ljava/lang/Object;
.source "FragmentCompanyList.java"

# interfaces
.implements Lae/gov/mol/helper/CustomFragment$CompanyWebserviceStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FragmentCompanyList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FragmentCompanyList;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FragmentCompanyList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentCompanyList$3;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCompanyWebserviceStatus(Z)Z
    .locals 1
    .param p1, "isSucess"    # Z

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentCompanyList$3;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    # invokes: Lae/gov/mol/fragment/FragmentCompanyList;->setCompanyList()Z
    invoke-static {v0}, Lae/gov/mol/fragment/FragmentCompanyList;->access$3(Lae/gov/mol/fragment/FragmentCompanyList;)Z

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
