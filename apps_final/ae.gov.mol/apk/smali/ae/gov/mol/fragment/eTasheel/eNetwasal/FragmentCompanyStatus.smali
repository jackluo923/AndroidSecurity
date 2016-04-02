.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentCompanyStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompanyBasicInfoHandler:Lae/gov/xmlhandler/CompanyBasicInfoHandler;

.field mCompanyBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

.field mCompanyStatusHandler:Lae/gov/xmlhandler/CompanyStatusHandler;

.field mCompanyStatusVo:Lae/gov/mol/vo/CompanyStatusVo;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompanyStatus:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->strNumber:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->strInputName:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->isDataRecieved:Z

    .line 40
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 70
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 71
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mBundle:Landroid/os/Bundle;

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->strNumber:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->strInputName:Ljava/lang/String;

    .line 74
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 80
    const v0, 0x7f03003a

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewTitle:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    const v1, 0x7f060113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    const v1, 0x7f060111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    const v1, 0x7f060116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mTextViewCompanyStatus:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyBasicInfoVo:Lae/gov/mol/vo/CompanyBasicInfoVo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mCompanyStatusVo:Lae/gov/mol/vo/CompanyStatusVo;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentCompanyStatus;->mView:Landroid/view/View;

    return-object v0
.end method
