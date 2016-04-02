.class Lae/gov/mol/fragment/Fragment_Home$1;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Home;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$1;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$1;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$1;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    # getter for: Lae/gov/mol/fragment/Fragment_Home;->mLogin_DialogFragment:Lae/gov/mol/fragment/DialogFragment_Login;
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->access$0(Lae/gov/mol/fragment/Fragment_Home;)Lae/gov/mol/fragment/DialogFragment_Login;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->showDialog(IZ)V

    .line 261
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$1;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->Logout(Landroid/content/Context;)V

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$1;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    invoke-virtual {v0}, Lae/gov/mol/fragment/Fragment_Home;->SetUserLoginStatus()V

    goto :goto_0
.end method
