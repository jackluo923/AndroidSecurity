.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentInspectionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

.field mInspectionRequestHandler:Lae/gov/xmlhandler/InspectionRequestHandler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewPassportNumber:Landroid/widget/TextView;

.field mTextViewPersonCode:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strPersonCode:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->strPersonCode:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->strInputName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->isDataRecieved:Z

    .line 36
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 94
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 65
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 66
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mBundle:Landroid/os/Bundle;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->strPersonCode:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->strInputName:Ljava/lang/String;

    .line 69
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 75
    const v0, 0x7f030091

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewTitle:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    const v1, 0x7f06051c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    const v1, 0x7f06051e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewPersonName:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    const v1, 0x7f060526

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    const v1, 0x7f060524

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    const v1, 0x7f060520

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewNationality:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    const v1, 0x7f060522

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mTextViewPassportNumber:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->mInspectionRequestAndStatusVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentInspectionRequest;->view:Landroid/view/View;

    return-object v0
.end method
