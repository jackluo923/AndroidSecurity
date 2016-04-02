.class Lae/gov/mol/fragment/LabourServices/FragmentMySalary$2;
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
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentMySalary$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    # invokes: Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->showDatePickerTo()V
    invoke-static {v0}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->access$6(Lae/gov/mol/fragment/LabourServices/FragmentMySalary;)V

    .line 142
    return-void
.end method
