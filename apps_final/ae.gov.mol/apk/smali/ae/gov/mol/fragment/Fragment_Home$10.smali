.class Lae/gov/mol/fragment/Fragment_Home$10;
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
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$10;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 454
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$10;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    iget-object v0, v0, Lae/gov/mol/fragment/Fragment_Home;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_Home$10;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    const v2, 0x7f0901b4

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/Fragment_Home;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 455
    return-void
.end method
