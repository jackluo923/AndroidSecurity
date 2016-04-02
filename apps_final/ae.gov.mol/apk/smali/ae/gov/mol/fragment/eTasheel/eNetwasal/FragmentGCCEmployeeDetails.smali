.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;
.super Landroid/support/v4/app/Fragment;
.source "FragmentGCCEmployeeDetails.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

.field mScrollView:Landroid/widget/ScrollView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewEntryDate:Landroid/widget/TextView;

.field mTextViewExpiryDate:Landroid/widget/TextView;

.field mTextViewJobDescription:Landroid/widget/TextView;

.field mTextViewPersonCode:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewSalary:Landroid/widget/TextView;

.field mTextViewSex:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->strNumber:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mBundle:Landroid/os/Bundle;

    .line 45
    new-instance v0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    .line 46
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

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

    .line 51
    const v0, 0x7f030078

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f060349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mScrollView:Landroid/widget/ScrollView;

    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f06034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f06034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewPersonName:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f06034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewSex:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f060359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewSalary:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f060351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f060353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewEntryDate:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f060355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewExpiryDate:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    const v1, 0x7f060357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewJobDescription:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getPersonCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewSalary:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getTotalSalary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewEntryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getCardIssueDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getCardExpiryDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mView:Landroid/view/View;

    return-object v0

    .line 78
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getPersonName_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewSex:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getSex_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewJobDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getJobType_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getPersonName_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewSex:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getSex_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mTextViewJobDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeeDetails;->mGccEmployeesByCompanyCodeDetailsVo:Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/GCCEmployeesByCompanyCodeDetailsVo;->getJobType_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
