.class Lae/gov/mol/fragment/LabourServices/FragmentMyContract$4;
.super Ljava/lang/Object;
.source "FragmentMyContract.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$4;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$4;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$4;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    const v2, 0x7f09025b

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMyContract$4;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    const v3, 0x7f09025d

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->access$3(Lae/gov/mol/fragment/LabourServices/FragmentMyContract;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
