.class Lae/gov/mol/fragment/FragmentEmployeeList$2;
.super Ljava/lang/Object;
.source "FragmentEmployeeList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FragmentEmployeeList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FragmentEmployeeList;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FragmentEmployeeList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentEmployeeList$2;->this$0:Lae/gov/mol/fragment/FragmentEmployeeList;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentEmployeeList$2;->this$0:Lae/gov/mol/fragment/FragmentEmployeeList;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentEmployeeList;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/MolFragmentActivity;->removeBack()V

    .line 181
    return-void
.end method
