.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_PersonCompany_Details.java"


# instance fields
.field dtStart:Ljava/lang/String;

.field format:Ljava/text/SimpleDateFormat;

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

.field mTextViewAuthorisedSignature:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewLicenceExpiryDate:Landroid/widget/TextView;

.field mTextViewOwner:Landroid/widget/TextView;

.field mTextViewSponsor:Landroid/widget/TextView;

.field mTextViewStatus:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 49
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mBundle:Landroid/os/Bundle;

    .line 50
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 51
    new-instance v0, Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/PersonCompanyListVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    .line 52
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/PersonCompanyListVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    const v1, 0x7f060295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    const v1, 0x7f060297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    const v1, 0x7f060299

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewStatus:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    const v1, 0x7f06029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewAuthorisedSignature:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    const v1, 0x7f06029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewSponsor:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    const v1, 0x7f06029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewOwner:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    const v1, 0x7f0602a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewLicenceExpiryDate:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getCom_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getCOM_STATUS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewAuthorisedSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getAuth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewSponsor:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getSponsor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewOwner:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewLicenceExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PersonCompanyListVo;->getExpiry_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mView:Landroid/view/View;

    return-object v0

    .line 85
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_PersonCompany_Details;->mPersonCompanyListVo:Lae/gov/mol/vo/PersonCompanyListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PersonCompanyListVo;->getComNameA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->ToggleLayout(Z)V

    .line 101
    return-void
.end method
