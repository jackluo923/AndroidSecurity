.class Lae/gov/mol/fragment/Fragment_Home$4;
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
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$4;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$4;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    # getter for: Lae/gov/mol/fragment/Fragment_Home;->mTextViewUserName:Landroid/widget/TextView;
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->access$1(Lae/gov/mol/fragment/Fragment_Home;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$4;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f090123

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$4;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    new-instance v1, Lae/gov/mol/fragment/Fragment_Profile;

    invoke-direct {v1}, Lae/gov/mol/fragment/Fragment_Profile;-><init>()V

    const/4 v2, 0x1

    const/16 v3, 0x1001

    invoke-virtual {v0, v1, v2, v3}, Lae/gov/mol/MolFragmentActivity;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$4;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$4;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f0900c8

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
