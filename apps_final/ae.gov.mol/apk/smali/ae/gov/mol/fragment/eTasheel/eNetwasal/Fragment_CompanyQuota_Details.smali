.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_CompanyQuota_Details.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

.field mScrollView:Landroid/widget/ScrollView;

.field mTextViewApproved:Landroid/widget/TextView;

.field mTextViewCategory:Landroid/widget/TextView;

.field mTextViewCompanyAddress:Landroid/widget/TextView;

.field mTextViewCompanyAddress_one:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewLabourOffice:Landroid/widget/TextView;

.field mTextViewLabourOfficeCode:Landroid/widget/TextView;

.field mTextViewQuotaType:Landroid/widget/TextView;

.field mTextViewQuotaTypeName:Landroid/widget/TextView;

.field mTextViewUsed:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mBundle:Landroid/os/Bundle;

    .line 45
    new-instance v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-direct {v0}, Lae/gov/mol/vo/CompanyQuotaDetailsData;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    .line 46
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/CompanyQuotaDetailsData;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 54
    const v0, 0x7f030054

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mScrollView:Landroid/widget/ScrollView;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f06025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCompanyAddress:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewLabourOfficeCode:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f06025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewLabourOffice:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCategory:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f06025f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCompanyAddress_one:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewQuotaType:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewApproved:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f06026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewUsed:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    const v1, 0x7f060264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewQuotaTypeName:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCompanyAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewLabourOfficeCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getLabourOfficeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCategory:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewQuotaType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getQuotaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewApproved:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getApproved()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewUsed:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getUsed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mView:Landroid/view/View;

    return-object v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyNameEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewQuotaTypeName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getQuotaTypeEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getLabourOfficeEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getCompanyNameArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewQuotaTypeName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getQuotaTypeArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_CompanyQuota_Details;->mCompanyQuotaDetailsData:Lae/gov/mol/vo/CompanyQuotaDetailsData;

    invoke-virtual {v1}, Lae/gov/mol/vo/CompanyQuotaDetailsData;->getLabourOfficeArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
