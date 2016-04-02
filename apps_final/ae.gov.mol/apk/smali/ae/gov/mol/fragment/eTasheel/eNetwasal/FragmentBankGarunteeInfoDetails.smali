.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;
.super Landroid/support/v4/app/Fragment;
.source "FragmentBankGarunteeInfoDetails.java"


# instance fields
.field mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

.field mBundle:Landroid/os/Bundle;

.field mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

.field mTextViewBankName:Landroid/widget/TextView;

.field mTextViewCertificateNumber:Landroid/widget/TextView;

.field mTextViewCompanyCategory:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewDate:Landroid/widget/TextView;

.field mTextViewRefundAmount:Landroid/widget/TextView;

.field mTextViewTotalEmployee:Landroid/widget/TextView;

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

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->strNumber:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBundle:Landroid/os/Bundle;

    .line 44
    new-instance v0, Lae/gov/mol/vo/BankGuaranteeInfoVo;

    invoke-direct {v0}, Lae/gov/mol/vo/BankGuaranteeInfoVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    .line 45
    new-instance v0, Lae/gov/mol/vo/Company_InformationVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Company_InformationVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 46
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/BankGuaranteeInfoVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    .line 47
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004c

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Company_InformationVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f060086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCompanyCategory:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f06008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewTotalEmployee:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f06008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCertificateNumber:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f060090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewBankName:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewRefundAmount:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewDate:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompamy_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCompanyCategory:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getComapany_category()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewTotalEmployee:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getTotalEmployees()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCertificateNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->getBANK_GRNT_NO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewBankName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->getBANKNAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewRefundAmount:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->getREFUNDAMOUNT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mBankGuaranteeInfoVo:Lae/gov/mol/vo/BankGuaranteeInfoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/BankGuaranteeInfoVo;->getBANK_GRNT_DATE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mView:Landroid/view/View;

    return-object v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_name_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentBankGarunteeInfoDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_name_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
