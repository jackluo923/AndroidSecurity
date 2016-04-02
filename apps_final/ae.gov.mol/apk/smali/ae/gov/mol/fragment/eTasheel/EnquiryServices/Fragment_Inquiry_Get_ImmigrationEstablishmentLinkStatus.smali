.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mImageViewHome:Landroid/widget/ImageView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mScrollView:Landroid/widget/ScrollView;

.field mStrINTSTATUS:Ljava/lang/String;

.field mStrMOICOMCODE:Ljava/lang/String;

.field mStrMOICOMNAMEARB:Ljava/lang/String;

.field mStrMOICOMNAMEENG:Ljava/lang/String;

.field mStrMOLCOMCODE:Ljava/lang/String;

.field mStrMOLCOMNAMEARB:Ljava/lang/String;

.field mStrMOLCOMNAMEENG:Ljava/lang/String;

.field mStrREMARK:Ljava/lang/String;

.field mStrSTATUS:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewCompanyCodeMoi:Landroid/widget/TextView;

.field mTextViewCompanyCodeMol:Landroid/widget/TextView;

.field mTextViewCompanyInStatus:Landroid/widget/TextView;

.field mTextViewCompanyNameMoi:Landroid/widget/TextView;

.field mTextViewCompanyNameMol:Landroid/widget/TextView;

.field mTextViewCompanyRemark:Landroid/widget/TextView;

.field mTextViewCompanyStatus:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMCODE:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMNAMEARB:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOLCOMNAMEENG:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMCODE:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMNAMEARB:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrMOICOMNAMEENG:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrSTATUS:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrINTSTATUS:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mStrREMARK:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->strNumber:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->strInputName:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->isDataRecieved:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess$ItemXMLHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 90
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTags:Lae/gov/mol/helper/Tags;

    .line 91
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 92
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 93
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mBundle:Landroid/os/Bundle;

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->strNumber:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->strInputName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 101
    const v0, 0x7f030089

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f06048d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mScrollView:Landroid/widget/ScrollView;

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewTitle:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f060492

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyCodeMol:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f060494

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyNameMol:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f060496

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyCodeMoi:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f060498

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyNameMoi:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f06049a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyStatus:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f06049c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyInStatus:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f06049e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mTextViewCompanyRemark:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mImageViewHome:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_ImmigrationEstablishmentLinkStatus;->mView:Landroid/view/View;

    return-object v0
.end method
