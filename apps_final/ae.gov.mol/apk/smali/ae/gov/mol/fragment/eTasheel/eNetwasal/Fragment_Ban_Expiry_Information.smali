.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Ban_Expiry_Information.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSalaryPaidInfoHandler:Lae/gov/xmlhandler/SalaryPaidInfoHandler;

.field mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

.field mScrollView:Landroid/widget/ScrollView;

.field mTExtTextContractResidance:Landroid/widget/TextView;

.field mTExtTextContractTransportation:Landroid/widget/TextView;

.field mTExtTextSalary:Landroid/widget/TextView;

.field mTextViewCardExpiryDate:Landroid/widget/TextView;

.field mTextViewCardIssueDate:Landroid/widget/TextView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewContractPrinting:Landroid/widget/TextView;

.field mTextViewDescription:Landroid/widget/TextView;

.field mTextViewOfficeName:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewPersonNumber:Landroid/widget/TextView;

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

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->strNumber:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->strInputName:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->isDataRecieved:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mBundle:Landroid/os/Bundle;

    .line 88
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 89
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 90
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->strNumber:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 98
    const v0, 0x7f030030

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f060695

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mScrollView:Landroid/widget/ScrollView;

    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewTitle:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0900c9

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f060698

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f06069b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewOfficeName:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f06069d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f06069f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewCardIssueDate:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewPersonName:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewPersonNumber:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewDescription:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTextViewContractPrinting:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTExtTextSalary:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTExtTextContractResidance:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mTExtTextContractTransportation:Landroid/widget/TextView;

    .line 118
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_Ban_Expiry_Information;->mView:Landroid/view/View;

    return-object v0
.end method
