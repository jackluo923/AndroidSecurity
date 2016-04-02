.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_ProPerson_Details.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

.field mScrollView:Landroid/widget/ScrollView;

.field mTextViewCardExpDate:Landroid/widget/TextView;

.field mTextViewCompanyCategory:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewLabourCardNumber:Landroid/widget/TextView;

.field mTextViewLabourOffice:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewPersonCode:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewTotalEmployee:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

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
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mBundle:Landroid/os/Bundle;

    .line 47
    new-instance v0, Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/PRO_DetailsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    .line 48
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090049

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/PRO_DetailsVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 54
    const v1, 0x7f0300bb

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f06064b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mScrollView:Landroid/widget/ScrollView;

    .line 57
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v1, 0x7f06064e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f060650

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f060654

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewLabourOffice:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f060656

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewTotalEmployee:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f060659

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f06065f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewLabourCardNumber:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f060661

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCardExpDate:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f06065b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewPersonName:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f060652

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCompanyCategory:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f06065d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewNationality:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewTotalEmployee:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getTotalEmployees()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getPersonCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewLabourCardNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getLaborCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCardExpDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCardExpiryDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCompanyCategory:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCompanyCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCompanyName_eng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getLaborOffice_eng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getPersonName_eng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getNationality_eng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getCompanyName_arb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getLaborOffice_arb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getPersonName_arb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_ProPerson_Details;->mPro_DetailsVo:Lae/gov/mol/vo/PRO_DetailsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/PRO_DetailsVo;->getNationality_arb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
