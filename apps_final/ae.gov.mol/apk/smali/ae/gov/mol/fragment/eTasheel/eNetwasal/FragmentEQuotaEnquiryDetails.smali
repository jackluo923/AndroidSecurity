.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;
.super Landroid/support/v4/app/Fragment;
.source "FragmentEQuotaEnquiryDetails.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

.field mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

.field mTextViewApproved:Landroid/widget/TextView;

.field mTextViewCategory:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewDescription:Landroid/widget/TextView;

.field mTextViewGender:Landroid/widget/TextView;

.field mTextViewJobCode:Landroid/widget/TextView;

.field mTextViewNumberOfEmployee:Landroid/widget/TextView;

.field mTextViewRequested:Landroid/widget/TextView;

.field mTextViewTransactionNumber:Landroid/widget/TextView;

.field mTextViewUsed:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->strNumber:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mBundle:Landroid/os/Bundle;

    .line 47
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    .line 48
    new-instance v0, Lae/gov/mol/vo/Company_InformationVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Company_InformationVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 49
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    .line 50
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004c

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Company_InformationVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v0, 0x7f03005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewCategory:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewNumberOfEmployee:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewJobCode:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewDescription:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewGender:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewRequested:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewApproved:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewUsed:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompamy_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewCategory:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getComapany_category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewNumberOfEmployee:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getTotalEmployees()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getTransaction_x0020_Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewJobCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getJob_x0020_Code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewGender:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getGENDER()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewRequested:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getRequested()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewApproved:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getApproved()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewUsed:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getUsed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mView:Landroid/view/View;

    return-object v0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_name_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentEQuotaEnquiryDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_name_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
