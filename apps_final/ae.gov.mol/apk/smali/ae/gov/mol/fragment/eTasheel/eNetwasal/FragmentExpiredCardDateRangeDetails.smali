.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;
.super Landroid/support/v4/app/Fragment;
.source "FragmentExpiredCardDateRangeDetails.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

.field mScrollView:Landroid/widget/ScrollView;

.field mStringCompanyName:Ljava/lang/String;

.field mTextViewCardExpiryDate:Landroid/widget/TextView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewCardType:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewLicenseNumber:Landroid/widget/TextView;

.field mTextViewName:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewPassportNumber:Landroid/widget/TextView;

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

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->strNumber:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mStringCompanyName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mBundle:Landroid/os/Bundle;

    .line 46
    new-instance v0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    .line 47
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v0, 0x7f03006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewLicenseNumber:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCardType:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewName:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewNationality:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewPassportNumber:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewPassportNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getPassportNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getExpiryDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewLicenseNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mView:Landroid/view/View;

    return-object v0

    .line 74
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getNationalityArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getPersonNameEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCardType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getCardTypeEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getNationalityArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getPersonNameEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mTextViewCardType:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardDateRangeDetails;->mExpiredCard_DateRangeVo:Lae/gov/mol/vo/ExpiredCard_DateRangeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_DateRangeVo;->getCardTypeArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
