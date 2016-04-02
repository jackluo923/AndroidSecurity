.class Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;
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
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mEditTextMobileNumber:Landroid/widget/EditText;
    invoke-static {v0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->access$0(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    # getter for: Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mEditTextMobileNumber:Landroid/widget/EditText;
    invoke-static {v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->access$0(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringMobileNumber:Ljava/lang/String;

    .line 214
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCustomFragmentActivity:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCheckBoxDidNotReceived:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCheckBoxDidIlligalDeduction:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    const-string v1, "3@4"

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCheckBoxComplaint:Ljava/lang/String;

    .line 225
    :cond_2
    :goto_1
    new-instance v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCheckBoxDidNotReceived:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    const-string v1, "3"

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCheckBoxComplaint:Ljava/lang/String;

    goto :goto_1

    .line 221
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mCheckBoxDidIlligalDeduction:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails$3;->this$0:Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;

    const-string v1, "4"

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMySalaryDetails;->mStringCheckBoxComplaint:Ljava/lang/String;

    goto :goto_1
.end method
