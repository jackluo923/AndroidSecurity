.class Lae/gov/mol/fragment/FragmentCompanyList$2;
.super Ljava/lang/Object;
.source "FragmentCompanyList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FragmentCompanyList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lae/gov/mol/fragment/FragmentCompanyList;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FragmentCompanyList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentCompanyList$2;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    .line 167
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
    .line 171
    .local p1, "mAdapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v4, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    iget-object v5, p0, Lae/gov/mol/fragment/FragmentCompanyList$2;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    # getter for: Lae/gov/mol/fragment/FragmentCompanyList;->mArrayListSearch:Ljava/util/ArrayList;
    invoke-static {v5}, Lae/gov/mol/fragment/FragmentCompanyList;->access$0(Lae/gov/mol/fragment/FragmentCompanyList;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 172
    .local v0, "OrignalPosition":I
    new-instance v3, Lae/gov/mol/fragment/Fragment_DashboardSlider;

    invoke-direct {v3}, Lae/gov/mol/fragment/Fragment_DashboardSlider;-><init>()V

    .line 173
    .local v3, "mFragment_DashboardSlider":Lae/gov/mol/fragment/Fragment_DashboardSlider;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v2, "mBundle":Landroid/os/Bundle;
    const-string v4, "Pages"

    sget-object v5, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v4, "Position"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {v3, v2}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->setArguments(Landroid/os/Bundle;)V

    .line 177
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentCompanyList$2;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v4, v4, Lae/gov/mol/fragment/FragmentCompanyList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const/4 v5, 0x1

    const/16 v6, 0x1001

    invoke-virtual {v4, v3, v5, v6}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 180
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentCompanyList$2;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    invoke-virtual {v4}, Lae/gov/mol/fragment/FragmentCompanyList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 181
    const-string v5, "input_method"

    .line 180
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 182
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lae/gov/mol/fragment/FragmentCompanyList$2;->this$0:Lae/gov/mol/fragment/FragmentCompanyList;

    iget-object v4, v4, Lae/gov/mol/fragment/FragmentCompanyList;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 183
    return-void
.end method
