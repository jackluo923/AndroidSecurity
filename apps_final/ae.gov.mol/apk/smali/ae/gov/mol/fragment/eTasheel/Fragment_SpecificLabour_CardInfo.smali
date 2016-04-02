.class public Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_SpecificLabour_CardInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mScrollView:Landroid/widget/ScrollView;

.field mTableRowCardStatus:Landroid/widget/TableRow;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewBalagh:Landroid/widget/TextView;

.field mTextViewCardExpireDate:Landroid/widget/TextView;

.field mTextViewCardStatus:Landroid/widget/TextView;

.field mTextViewCardType:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyLicanseExpireDate:Landroid/widget/TextView;

.field mTextViewCompanyLicanseNumber:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewDescription:Landroid/widget/TextView;

.field mTextViewExpireDate:Landroid/widget/TextView;

.field mTextViewIssueDate:Landroid/widget/TextView;

.field mTextViewJob:Landroid/widget/TextView;

.field mTextViewLabourOffice:Landroid/widget/TextView;

.field mTextViewLabourcardNo:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewPassportNumber:Landroid/widget/TextView;

.field mTextViewPersonCode:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mTextViewTransactionNumber:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mstrBalagh:Ljava/lang/String;

.field mstrCOM_LICENSE_END:Ljava/lang/String;

.field mstrCOM_LICENSE_NO:Ljava/lang/String;

.field mstrCard_x0020_Status:Ljava/lang/String;

.field mstrcard_type_arb:Ljava/lang/String;

.field mstrcard_type_eng:Ljava/lang/String;

.field mstrcom_name_arb:Ljava/lang/String;

.field mstrcom_name_eng:Ljava/lang/String;

.field mstrdesc_arabic:Ljava/lang/String;

.field mstremp_card_expiry:Ljava/lang/String;

.field mstremp_card_issue:Ljava/lang/String;

.field mstremp_card_no:Ljava/lang/String;

.field mstremp_com_company_code:Ljava/lang/String;

.field mstrjob_name_a:Ljava/lang/String;

.field mstrjob_name_e:Ljava/lang/String;

.field mstrnationality_arb:Ljava/lang/String;

.field mstrnationality_eng:Ljava/lang/String;

.field mstroffice_name_arb:Ljava/lang/String;

.field mstroffice_name_eng:Ljava/lang/String;

.field mstrper_name_arb:Ljava/lang/String;

.field mstrper_name_eng:Ljava/lang/String;

.field mstrper_passport_exp:Ljava/lang/String;

.field mstrper_passport_no:Ljava/lang/String;

.field mstrpercode:Ljava/lang/String;

.field mstrtrans_no:Ljava/lang/String;

.field private myXMLHandler:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->strNumber:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->strInputName:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->isDataRecieved:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_no:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_issue:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_card_expiry:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrdesc_arabic:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_name_eng:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_name_arb:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_no:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrper_passport_exp:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrnationality_eng:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrnationality_arb:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstremp_com_company_code:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcom_name_eng:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcom_name_arb:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCOM_LICENSE_NO:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCOM_LICENSE_END:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrCard_x0020_Status:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstroffice_name_arb:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstroffice_name_eng:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrjob_name_a:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrjob_name_e:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrtrans_no:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrBalagh:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrpercode:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcard_type_arb:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mstrcard_type_eng:Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$ItemXMLHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 164
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 165
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 166
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 118
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTags:Lae/gov/mol/helper/Tags;

    .line 119
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 120
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mBundle:Landroid/os/Bundle;

    .line 121
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->strNumber:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->strInputName:Ljava/lang/String;

    .line 123
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 129
    const v0, 0x7f0300cd

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mScrollView:Landroid/widget/ScrollView;

    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTitle:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPersonName:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewJob:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewNationality:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewPassportNumber:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewExpireDate:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardType:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewIssueDate:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewLabourOffice:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewLabourcardNo:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardExpireDate:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCardStatus:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewDescription:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyLicanseNumber:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewCompanyLicanseExpireDate:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    const v1, 0x7f0606e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mTextViewBalagh:Landroid/widget/TextView;

    .line 155
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_SpecificLabour_CardInfo;->mView:Landroid/view/View;

    return-object v0
.end method
