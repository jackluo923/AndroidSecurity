.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentEmpBanExpiryDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mEmpBanExpiryDateHandler:Lae/gov/xmlhandler/EmpBanExpiryDateHandler;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewBanExpiryDate:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->strNumber:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->strInputName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->isDataRecieved:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 89
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 63
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 64
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mBundle:Landroid/os/Bundle;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->strNumber:Ljava/lang/String;

    .line 67
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 73
    const v0, 0x7f030050

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewTitle:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    const v1, 0x7f06022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mTextViewBanExpiryDate:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mBanExpiryDateVo:Lae/gov/mol/vo/EmpBanExpiryDateVo;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEmpBanExpiryDate;->mView:Landroid/view/View;

    return-object v0
.end method
