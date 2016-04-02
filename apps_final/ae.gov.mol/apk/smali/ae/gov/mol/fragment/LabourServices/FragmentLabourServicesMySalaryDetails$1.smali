.class Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$1;
.super Ljava/lang/Object;
.source "FragmentLabourServicesMySalaryDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$1;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->removeBack()V

    .line 148
    return-void
.end method
