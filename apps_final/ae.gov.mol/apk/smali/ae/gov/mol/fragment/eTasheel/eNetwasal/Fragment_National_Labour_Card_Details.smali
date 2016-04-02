.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_National_Labour_Card_Details.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

.field mScrollView:Landroid/widget/ScrollView;

.field mTextViewCardExpireDate:Landroid/widget/TextView;

.field mTextViewCardIssueDate:Landroid/widget/TextView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewJobType:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

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
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->strNumber:Ljava/lang/String;

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
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mBundle:Landroid/os/Bundle;

    .line 47
    new-instance v0, Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/NationalLabourCardListVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    .line 48
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/NationalLabourCardListVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    .line 49
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
    const v0, 0x7f0300a5

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mScrollView:Landroid/widget/ScrollView;

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewPersonName:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewSex:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewSalary:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewCardIssueDate:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewCardExpireDate:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewNationality:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    const v1, 0x7f0605af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewJobType:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getPersonCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewSalary:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getTotalSalary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewCardIssueDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getCardIssueDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewCardExpireDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getCardExpiryDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mView:Landroid/view/View;

    return-object v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getPersonName_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewSex:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getSex_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getNat_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewJobType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getJobType_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getPersonName_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewSex:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getSex_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getNat_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mTextViewJobType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/Fragment_National_Labour_Card_Details;->mLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->getJobType_arb()Ljava/lang/String;

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
