.class Lae/gov/mol/fragment/LabourServices/FragmentMySalary$4;
.super Ljava/lang/Object;
.source "FragmentMySalary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$4;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$4;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$4;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    const v2, 0x7f09025b

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$4;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    const v3, 0x7f09025c

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$7(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method
