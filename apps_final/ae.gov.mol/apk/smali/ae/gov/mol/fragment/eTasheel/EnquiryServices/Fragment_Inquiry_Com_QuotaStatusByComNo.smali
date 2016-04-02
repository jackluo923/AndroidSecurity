.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_Inquiry_Com_QuotaStatusByComNo.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

.field mCompanyVo:Lae/gov/mol/vo/CompanyVo;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mImageViewHome:Landroid/widget/ImageView;

.field mTextViewApproved:Landroid/widget/TextView;

.field mTextViewCancelled:Landroid/widget/TextView;

.field mTextViewCategory:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompany_x0020_Code:Landroid/widget/TextView;

.field mTextViewDescription:Landroid/widget/TextView;

.field mTextViewGENDER:Landroid/widget/TextView;

.field mTextViewJob_x0020_Code:Landroid/widget/TextView;

.field mTextViewLabourOffice:Landroid/widget/TextView;

.field mTextViewRequested:Landroid/widget/TextView;

.field mTextViewTransaction_x0020_Number:Landroid/widget/TextView;

.field mTextViewUsed:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 54
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mBundle:Landroid/os/Bundle;

    .line 56
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    .line 57
    new-instance v0, Lae/gov/mol/vo/CompanyVo;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const v0, 0x7f03007f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewTransaction_x0020_Number:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCompany_x0020_Code:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewJob_x0020_Code:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewDescription:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewGENDER:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewRequested:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewApproved:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewUsed:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCancelled:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewLabourOffice:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f0603ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCategory:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewTransaction_x0020_Number:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getTransaction_x0020_Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCompany_x0020_Code:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getCompany_x0020_Code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewJob_x0020_Code:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getJob_x0020_Code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewGENDER:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getGENDER()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewRequested:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getRequested()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewApproved:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getApproved()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewUsed:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getUsed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCancelled:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyQuotaListByCompanyVo:Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaListByCompanyVo;->getCancelled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCategory:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyVo;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mImageViewHome:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mView:Landroid/view/View;

    return-object v0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyVo;->getCompany_Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyVo;->getLabour_Office()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Company Name in English"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyVo;->getCompany_Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyVo;->getCompany_Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Company Name in Arabic"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/CompanyVo;->getCompany_Name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Com_QuotaStatusByComNo;->mCompanyVo:Lae/gov/mol/vo/CompanyVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyVo;->getLabour_Office()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
