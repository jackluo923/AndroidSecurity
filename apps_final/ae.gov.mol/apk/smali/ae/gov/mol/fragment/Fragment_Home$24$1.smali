.class Lae/gov/mol/fragment/Fragment_Home$24$1;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/Fragment_Home$24;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_Home$24;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$24$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$24;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 791
    const-string v1, "umar English"

    invoke-static {v1}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$24$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$24;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home$24;->access$0(Lae/gov/mol/fragment/Fragment_Home$24;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v1

    iget-object v1, v1, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v2, "ar"

    invoke-static {v1, v2}, Lae/gov/mol/MolApplication;->SetLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$24$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$24;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home$24;->access$0(Lae/gov/mol/fragment/Fragment_Home$24;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/fragment/Fragment_Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 794
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$24$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$24;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home$24;->access$0(Lae/gov/mol/fragment/Fragment_Home$24;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 795
    const/high16 v1, 0x14010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 796
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$24$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$24;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home$24;->access$0(Lae/gov/mol/fragment/Fragment_Home$24;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/fragment/Fragment_Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 797
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$24$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$24;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home$24;->access$0(Lae/gov/mol/fragment/Fragment_Home$24;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/fragment/Fragment_Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 798
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$24$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$24;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home$24;->access$0(Lae/gov/mol/fragment/Fragment_Home$24;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/fragment/Fragment_Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 799
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$24$1;->this$1:Lae/gov/mol/fragment/Fragment_Home$24;

    # getter for: Lae/gov/mol/fragment/Fragment_Home$24;->this$0:Lae/gov/mol/fragment/Fragment_Home;
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home$24;->access$0(Lae/gov/mol/fragment/Fragment_Home$24;)Lae/gov/mol/fragment/Fragment_Home;

    move-result-object v1

    invoke-virtual {v1, v0}, Lae/gov/mol/fragment/Fragment_Home;->startActivity(Landroid/content/Intent;)V

    .line 800
    return-void
.end method
