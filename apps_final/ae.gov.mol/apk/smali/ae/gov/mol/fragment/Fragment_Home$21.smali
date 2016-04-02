.class Lae/gov/mol/fragment/Fragment_Home$21;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$21;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 630
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$21;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    # getter for: Lae/gov/mol/fragment/Fragment_Home;->mLogin_DialogFragment:Lae/gov/mol/fragment/DialogFragment_Login;
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->access$0(Lae/gov/mol/fragment/Fragment_Home;)Lae/gov/mol/fragment/DialogFragment_Login;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/DialogFragment_Login;->showDialog(IZ)V

    .line 631
    return-void
.end method
