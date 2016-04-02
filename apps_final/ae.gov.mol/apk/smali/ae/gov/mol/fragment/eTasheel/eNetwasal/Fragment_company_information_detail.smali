.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_company_information_detail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompanyQuotaDetailsHandler:Lae/gov/xmlhandler/CompanyQuotaDetailsHandler;

.field mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

.field mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mLinearLayoutfragment_company_info_detail_scrollview_ll:Landroid/widget/LinearLayout;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/CompanyQuotaDetailsData;",
            ">;"
        }
    .end annotation
.end field

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mScrollView:Landroid/widget/ScrollView;

.field mTExtTextViewEmirate:Landroid/widget/TextView;

.field mTExtTextViewLabourOffice:Landroid/widget/TextView;

.field mTExtTextViewpoBoxNo:Landroid/widget/TextView;

.field mTextViewAbscond:Landroid/widget/TextView;

.field mTextViewApproved:Landroid/widget/TextView;

.field mTextViewCategory:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewFax:Landroid/widget/TextView;

.field mTextViewLicenseExpiryDate:Landroid/widget/TextView;

.field mTextViewLicenseNumber:Landroid/widget/TextView;

.field mTextViewLicenseType:Landroid/widget/TextView;

.field mTextViewLicenseissuedPlace:Landroid/widget/TextView;

.field mTextViewOldCompanyCode:Landroid/widget/TextView;

.field mTextViewPhone:Landroid/widget/TextView;

.field mTextViewQuotaType:Landroid/widget/TextView;

.field mTextViewStatus:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mTextViewUsed:Landroid/widget/TextView;

.field mTextViewtotalEmployee:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->strNumber:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->strInputName:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->isDataRecieved:Z

    .line 42
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mBundle:Landroid/os/Bundle;

    .line 96
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 97
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 98
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->strNumber:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->strInputName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 106
    const v0, 0x7f030034

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mScrollView:Landroid/widget/ScrollView;

    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mLinearLayoutfragment_company_info_detail_scrollview_ll:Landroid/widget/LinearLayout;

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewTitle:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0900c9

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewOldCompanyCode:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewStatus:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewLicenseNumber:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewLicenseExpiryDate:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewLicenseType:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewLicenseissuedPlace:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewPhone:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewFax:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTExtTextViewpoBoxNo:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTExtTextViewEmirate:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTExtTextViewLabourOffice:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewQuotaType:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewApproved:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewUsed:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewtotalEmployee:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewAbscond:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    const v1, 0x7f0600d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mTextViewCategory:Landroid/widget/TextView;

    .line 135
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_company_information_detail;->mView:Landroid/view/View;

    return-object v0
.end method
