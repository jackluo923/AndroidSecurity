.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_nawakaslist_details.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

.field mScrollView:Landroid/widget/ScrollView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewPersonCode:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewSubmitDate:Landroid/widget/TextView;

.field mTextViewTransactionNumber:Landroid/widget/TextView;

.field mTextViewTypeCode:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mBundle:Landroid/os/Bundle;

    .line 44
    new-instance v0, Lae/gov/mol/vo/NawakasDataVo;

    invoke-direct {v0}, Lae/gov/mol/vo/NawakasDataVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    .line 45
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NawakasDataVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 53
    const v0, 0x7f0300ab

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mScrollView:Landroid/widget/ScrollView;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewTypeCode:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewSubmitDate:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewPersonName:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    const v1, 0x7f0605da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewNationality:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getTransactionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewTypeCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getNawakasTypeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewSubmitDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getSubmitDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getPersonCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mView:Landroid/view/View;

    return-object v0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getPersonNameEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getNationalityEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getPersonNameArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_nawakaslist_details;->mNawakasDataVo:Lae/gov/mol/vo/NawakasDataVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NawakasDataVo;->getNationalityArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
