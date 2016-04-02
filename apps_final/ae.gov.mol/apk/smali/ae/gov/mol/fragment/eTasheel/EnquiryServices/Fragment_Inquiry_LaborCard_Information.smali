.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Inquiry_LaborCard_Information.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetnationalitiesVo;",
            ">;"
        }
    .end annotation
.end field

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mGetNationalitiesHandler:Lae/gov/xmlhandler/GetNationalitiesHandler;

.field mImageViewHome:Landroid/widget/ImageView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mScrollView:Landroid/widget/ScrollView;

.field mTexViewlicense:Landroid/widget/TextView;

.field mTextViewBirthCountry:Landroid/widget/TextView;

.field mTextViewBirthDate:Landroid/widget/TextView;

.field mTextViewBirthPlace:Landroid/widget/TextView;

.field mTextViewCardExpiryDate:Landroid/widget/TextView;

.field mTextViewCardIssueDate:Landroid/widget/TextView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewCardType:Landroid/widget/TextView;

.field mTextViewCardTypeCode:Landroid/widget/TextView;

.field mTextViewClassification:Landroid/widget/TextView;

.field mTextViewComjob_code:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewNationalityCode:Landroid/widget/TextView;

.field mTextViewNationalityCodeIm:Landroid/widget/TextView;

.field mTextViewPassportExpiryDate:Landroid/widget/TextView;

.field mTextViewPassportNumber:Landroid/widget/TextView;

.field mTextViewPassportPlace:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewSEX:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mTextViewcardStatus:Landroid/widget/TextView;

.field mTextViewcomCategory:Landroid/widget/TextView;

.field mTextViewcomName:Landroid/widget/TextView;

.field mTextViewcompanyCode:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;

.field strBirthCountry:Ljava/lang/String;

.field strBirthDate:Ljava/lang/String;

.field strBirthPlaceArb:Ljava/lang/String;

.field strBirthPlaceEng:Ljava/lang/String;

.field strCardExpiryDate:Ljava/lang/String;

.field strCardIssueDate:Ljava/lang/String;

.field strCardNumber:Ljava/lang/String;

.field strCardTypeA:Ljava/lang/String;

.field strCardTypeCode:Ljava/lang/String;

.field strCardTypeE:Ljava/lang/String;

.field strClassificationArb:Ljava/lang/String;

.field strClassificationEng:Ljava/lang/String;

.field strGenArb:Ljava/lang/String;

.field strGenEng:Ljava/lang/String;

.field strInputName:Ljava/lang/String;

.field strNationality:Ljava/lang/String;

.field strNationalityCode:Ljava/lang/String;

.field strNationalityCodeIm:Ljava/lang/String;

.field strNumber:Ljava/lang/String;

.field strPassportExpiryDate:Ljava/lang/String;

.field strPassportNumber:Ljava/lang/String;

.field strPassportPlaceArb:Ljava/lang/String;

.field strPassportPlaceEng:Ljava/lang/String;

.field strPersonNameArabic:Ljava/lang/String;

.field strPersonNameEnglish:Ljava/lang/String;

.field strSEX:Ljava/lang/String;

.field strcardStatus:Ljava/lang/String;

.field strcomCategory:Ljava/lang/String;

.field strcomNameArb:Ljava/lang/String;

.field strcomNameEng:Ljava/lang/String;

.field strcompanyCode:Ljava/lang/String;

.field strjob_code:Ljava/lang/String;

.field strlicense:Ljava/lang/String;

.field strnationality_arb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardNumber:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardTypeE:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardTypeA:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardExpiryDate:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardIssueDate:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPersonNameArabic:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPersonNameEnglish:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strSEX:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strnationality_arb:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strNationality:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strNationalityCode:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strNationalityCodeIm:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPassportNumber:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPassportExpiryDate:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strBirthCountry:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strBirthDate:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strBirthPlaceEng:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strBirthPlaceArb:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPassportPlaceEng:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strPassportPlaceArb:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strCardTypeCode:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcompanyCode:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcardStatus:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcomNameArb:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcomNameEng:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strcomCategory:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strjob_code:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strlicense:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strClassificationEng:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strClassificationArb:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strGenEng:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strGenArb:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strNumber:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->isDataRecieved:Z

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strInputName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$ItemXMLHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 190
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 133
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 134
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mBundle:Landroid/os/Bundle;

    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strNumber:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->strInputName:Ljava/lang/String;

    .line 137
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 139
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 143
    const v0, 0x7f03007e

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mScrollView:Landroid/widget/ScrollView;

    .line 146
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewCardType:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewCardIssueDate:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewPersonName:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewSEX:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewNationality:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewNationalityCode:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewNationalityCodeIm:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewPassportNumber:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewPassportExpiryDate:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewBirthCountry:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewBirthDate:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewBirthPlace:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewPassportPlace:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewCardTypeCode:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewcompanyCode:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewcardStatus:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewcomName:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewcomCategory:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewComjob_code:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTexViewlicense:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewTitle:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f0603bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewClassification:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mImageViewHome:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_LaborCard_Information;->mView:Landroid/view/View;

    return-object v0
.end method
