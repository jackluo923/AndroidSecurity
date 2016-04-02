.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_SalaryPaid_Information.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;
    }
.end annotation


# instance fields
.field id:I

.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mSalaryDetailHandler:Lae/gov/xmlhandler/MySalaryDetailHandler;

.field mSalaryDetailListVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryDetailVo;",
            ">;"
        }
    .end annotation
.end field

.field mSalaryPaidInfoHandler:Lae/gov/xmlhandler/SalaryPaidInfoHandler;

.field mSalaryPaidInfoVo:Lae/gov/mol/vo/SalaryPaidInfoVo;

.field mScrollView:Landroid/widget/ScrollView;

.field mStringFromDate:Ljava/lang/String;

.field mStringToDate:Ljava/lang/String;

.field mTExtTextContractResidance:Landroid/widget/TextView;

.field mTExtTextContractTransportation:Landroid/widget/TextView;

.field mTExtTextSalary:Landroid/widget/TextView;

.field mTableLayoutSalaryDetails:Landroid/widget/TableLayout;

.field mTableRow:Landroid/widget/TableRow;

.field mTextView1:Landroid/widget/TextView;

.field mTextView2:Landroid/widget/TextView;

.field mTextView3:Landroid/widget/TextView;

.field mTextView4:Landroid/widget/TextView;

.field mTextView5:Landroid/widget/TextView;

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
    .line 41
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->strNumber:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->strInputName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mStringFromDate:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mStringToDate:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->isDataRecieved:Z

    .line 294
    const/16 v0, 0xc9

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->id:I

    .line 41
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createRow(ZLae/gov/mol/vo/MySalaryDetailVo;I)V
    .locals 2
    .param p1, "isHeader"    # Z
    .param p2, "mMySalaryDetailVo"    # Lae/gov/mol/vo/MySalaryDetailVo;
    .param p3, "backgroundId"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->createTableRow()V

    .line 297
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 298
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 300
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    invoke-virtual {v0, p3}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 301
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {p2}, Lae/gov/mol/vo/MySalaryDetailVo;->getPERIOD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView2:Landroid/widget/TextView;

    invoke-virtual {p2}, Lae/gov/mol/vo/MySalaryDetailVo;->getFIXEDINCOME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView3:Landroid/widget/TextView;

    invoke-virtual {p2}, Lae/gov/mol/vo/MySalaryDetailVo;->getALLOWANCES()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView4:Landroid/widget/TextView;

    invoke-virtual {p2}, Lae/gov/mol/vo/MySalaryDetailVo;->getREFUNDAMOUNT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView5:Landroid/widget/TextView;

    invoke-virtual {p2}, Lae/gov/mol/vo/MySalaryDetailVo;->getAMOUNT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableLayoutSalaryDetails:Landroid/widget/TableLayout;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    invoke-virtual {v0, p3}, Landroid/widget/TableRow;->setBackgroundResource(I)V

    .line 309
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView1:Landroid/widget/TextView;

    const v1, 0x7f09023c

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView2:Landroid/widget/TextView;

    const v1, 0x7f09023d

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09023e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView4:Landroid/widget/TextView;

    const v1, 0x7f090101

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView5:Landroid/widget/TextView;

    const v1, 0x7f09023f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableLayoutSalaryDetails:Landroid/widget/TableLayout;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public createTableRow()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    .line 285
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    const v1, 0x7f0602d5

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView1:Landroid/widget/TextView;

    .line 287
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    const v1, 0x7f0606b3

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView2:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    const v1, 0x7f0606b4

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView3:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    const v1, 0x7f0606b5

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView4:Landroid/widget/TextView;

    .line 290
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableRow:Landroid/widget/TableRow;

    const v1, 0x7f0606b6

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextView5:Landroid/widget/TextView;

    .line 293
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mBundle:Landroid/os/Bundle;

    .line 106
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 107
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 108
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09005f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mStringFromDate:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090060

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mStringToDate:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->strNumber:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 116
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 121
    const v0, 0x7f0300c9

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f060695

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mScrollView:Landroid/widget/ScrollView;

    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewTitle:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f09015f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f060698

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f06069b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewOfficeName:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f06069d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f06069f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewCardIssueDate:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewPersonName:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewPersonNumber:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewDescription:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTextViewContractPrinting:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTExtTextSalary:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTExtTextContractResidance:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTExtTextContractTransportation:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    const v1, 0x7f0606b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mTableLayoutSalaryDetails:Landroid/widget/TableLayout;

    .line 142
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_SalaryPaid_Information;->mView:Landroid/view/View;

    return-object v0
.end method
