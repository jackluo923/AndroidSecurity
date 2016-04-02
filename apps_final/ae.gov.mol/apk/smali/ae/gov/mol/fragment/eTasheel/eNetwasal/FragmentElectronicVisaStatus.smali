.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentElectronicVisaStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field private mHandler:Lae/gov/xmlhandler/ElectronicVisaStatusHandler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewDateOfSubmit:Landroid/widget/TextView;

.field mTextViewEmirate:Landroid/widget/TextView;

.field mTextViewLocation:Landroid/widget/TextView;

.field mTextViewStatus:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mTextViewTransactionNumber:Landroid/widget/TextView;

.field mTextViewTransactionType:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strTransactionNumber:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->strTransactionNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->strInputName:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->isDataRecieved:Z

    .line 36
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Lae/gov/xmlhandler/ElectronicVisaStatusHandler;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mHandler:Lae/gov/xmlhandler/ElectronicVisaStatusHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/xmlhandler/ElectronicVisaStatusHandler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mHandler:Lae/gov/xmlhandler/ElectronicVisaStatusHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Lae/gov/mol/vo/ElectronicVisaStatusVo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ElectronicVisaStatusVo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 99
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 68
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 69
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mBundle:Landroid/os/Bundle;

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->strTransactionNumber:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->strInputName:Ljava/lang/String;

    .line 72
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 78
    const v0, 0x7f03004f

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTitle:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    const v1, 0x7f060219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    const v1, 0x7f060223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewDateOfSubmit:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    const v1, 0x7f06021d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    const v1, 0x7f06021f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewEmirate:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    const v1, 0x7f06021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewTransactionType:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    const v1, 0x7f060221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewLocation:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    const v1, 0x7f060225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mTextViewStatus:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->mElectronicVisaStatusVo:Lae/gov/mol/vo/ElectronicVisaStatusVo;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentElectronicVisaStatus;->view:Landroid/view/View;

    return-object v0
.end method
