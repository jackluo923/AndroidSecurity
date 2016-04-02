.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Inquiry_WorkPermit_Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$ItemXMLHandler;
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

.field mTableRowWorkPermitStatus:Landroid/widget/TableRow;

.field mTextViewCard_x0020_Expiry_x0020_Date:Landroid/widget/TextView;

.field mTextViewCard_x0020_Number:Landroid/widget/TextView;

.field mTextViewCategory:Landroid/widget/TextView;

.field mTextViewCompany_x0020_Name:Landroid/widget/TextView;

.field mTextViewCompany_x0020_Number:Landroid/widget/TextView;

.field mTextViewJob_x0020_Title:Landroid/widget/TextView;

.field mTextViewPaycard_x0020_Number:Landroid/widget/TextView;

.field mTextViewPayment_x0020_Number:Landroid/widget/TextView;

.field mTextViewPerson_x0020_Name:Landroid/widget/TextView;

.field mTextViewPerson_x0020_Number:Landroid/widget/TextView;

.field mTextViewStatus:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mTextViewTransaction_x0020_Number:Landroid/widget/TextView;

.field mTextViewTransaction_x0020_Type:Landroid/widget/TextView;

.field mTextViewWorkPermitStatus:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$ItemXMLHandler;

.field strCard_x0020_Expiry_x0020_Date:Ljava/lang/String;

.field strCard_x0020_Number:Ljava/lang/String;

.field strCategory:Ljava/lang/String;

.field strCompany_x0020_Name:Ljava/lang/String;

.field strCompany_x0020_Number:Ljava/lang/String;

.field strInputName:Ljava/lang/String;

.field strJob_x0020_Title:Ljava/lang/String;

.field strNumber:Ljava/lang/String;

.field strPaycard_x0020_Number:Ljava/lang/String;

.field strPayment_x0020_Number:Ljava/lang/String;

.field strPerson_x0020_Name:Ljava/lang/String;

.field strPerson_x0020_Number:Ljava/lang/String;

.field strStatus:Ljava/lang/String;

.field strTransaction_x0020_Number:Ljava/lang/String;

.field strTransaction_x0020_Type:Ljava/lang/String;

.field strWorkPermitStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strCompany_x0020_Number:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strCompany_x0020_Name:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strCategory:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strCard_x0020_Number:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strCard_x0020_Expiry_x0020_Date:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strTransaction_x0020_Type:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strPaycard_x0020_Number:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strPayment_x0020_Number:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strTransaction_x0020_Number:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strPerson_x0020_Number:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strJob_x0020_Title:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strPerson_x0020_Name:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strStatus:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strWorkPermitStatus:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strNumber:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strInputName:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->isDataRecieved:Z

    .line 44
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$ItemXMLHandler;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$ItemXMLHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;)Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$ItemXMLHandler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->myXMLHandler:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$ItemXMLHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 156
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 101
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 102
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mBundle:Landroid/os/Bundle;

    .line 103
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strNumber:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->strInputName:Ljava/lang/String;

    .line 105
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 112
    const v0, 0x7f03008d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f060252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mScrollView:Landroid/widget/ScrollView;

    .line 115
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f0604f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewCompany_x0020_Number:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f0604f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewCompany_x0020_Name:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f0604f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewCategory:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f0604fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewCard_x0020_Number:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f0604fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewCard_x0020_Expiry_x0020_Date:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f060500

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewTransaction_x0020_Type:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f060504

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewPaycard_x0020_Number:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f060506

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewPayment_x0020_Number:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f060502

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewTransaction_x0020_Number:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f060508

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewPerson_x0020_Number:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f06050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewJob_x0020_Title:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f06050c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewPerson_x0020_Name:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f06050e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewStatus:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f0604fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewWorkPermitStatus:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f0604f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTableRowWorkPermitStatus:Landroid/widget/TableRow;

    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTableRowWorkPermitStatus:Landroid/widget/TableRow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewTitle:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0900ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mImageViewHome:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_WorkPermit_Status;->mView:Landroid/view/View;

    return-object v0
.end method
