.class Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$2;
.super Ljava/lang/Object;
.source "FragmentLabourServicesMySalaryDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mArrayListRaButtonVos:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/MySalaryRadioButtonVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/MySalaryRadioButtonVo;->getDetail_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringRadioButtonComplaint:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$2;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mArrayListRaButtonVos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/MySalaryRadioButtonVo;

    invoke-virtual {v0}, Lae/gov/mol/vo/MySalaryRadioButtonVo;->getDetail_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringRadioButtonComplaint:Ljava/lang/String;

    .line 186
    return-void
.end method
