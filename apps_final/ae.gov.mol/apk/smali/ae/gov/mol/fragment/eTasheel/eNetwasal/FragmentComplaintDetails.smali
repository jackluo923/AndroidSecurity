.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;
.super Landroid/support/v4/app/Fragment;
.source "FragmentComplaintDetails.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

.field mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewComplaintDate:Landroid/widget/TextView;

.field mTextViewComplaintNumber:Landroid/widget/TextView;

.field mTextViewComplaintResult:Landroid/widget/TextView;

.field mTextViewComplaintType:Landroid/widget/TextView;

.field mTextViewContactPerson:Landroid/widget/TextView;

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

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->strNumber:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mBundle:Landroid/os/Bundle;

    .line 43
    new-instance v0, Lae/gov/mol/vo/ComplaintsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ComplaintsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    .line 44
    new-instance v0, Lae/gov/mol/vo/Company_InformationVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Company_InformationVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 45
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ComplaintsVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    .line 46
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004c

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Company_InformationVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    const v0, 0x7f030044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    const v1, 0x7f060193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    const v1, 0x7f060191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    const v1, 0x7f060195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintNumber:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    const v1, 0x7f060197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintDate:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    const v1, 0x7f060199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintType:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    const v1, 0x7f06019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintResult:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    const v1, 0x7f06019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewContactPerson:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompamy_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ComplaintsVo;->getDOC_NO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ComplaintsVo;->getSHAKWADATE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewContactPerson:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ComplaintsVo;->getCONTACT_PERSON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mView:Landroid/view/View;

    return-object v0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_name_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ComplaintsVo;->getSHAKWATYPEENG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintResult:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ComplaintsVo;->getSHAKWARESULTENG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Company_InformationVo;->getCompany_name_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ComplaintsVo;->getSHAKWATYPEARB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mTextViewComplaintResult:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentComplaintDetails;->mComplaintsVo:Lae/gov/mol/vo/ComplaintsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ComplaintsVo;->getSHAKWARESULTARB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
