.class Lae/gov/mol/fragment/Fragment_Home$8;
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
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$8;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 437
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$8;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_Home$8;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v2}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lae/gov/mol/fragment/Fragment_Home;->access$3(Lae/gov/mol/fragment/Fragment_Home;Landroid/content/Intent;)V

    .line 438
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$8;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$8;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    # getter for: Lae/gov/mol/fragment/Fragment_Home;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lae/gov/mol/fragment/Fragment_Home;->access$4(Lae/gov/mol/fragment/Fragment_Home;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/Fragment_Home;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method
