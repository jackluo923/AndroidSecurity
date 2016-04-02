.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentOwnerCompanyStatistics.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

.field mScrollView:Landroid/widget/ScrollView;

.field mTextViewAbscornding:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewComplaints:Landroid/widget/TextView;

.field mTextViewExpiresCard:Landroid/widget/TextView;

.field mTextViewLabourOffice:Landroid/widget/TextView;

.field mTextViewLicenseDate:Landroid/widget/TextView;

.field mTextViewTotalEmployee:Landroid/widget/TextView;

.field mTextViewWorkPermit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mBundle:Landroid/os/Bundle;

    .line 44
    new-instance v0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    .line 45
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090049

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 51
    const v1, 0x7f0300b5

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f0605fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mScrollView:Landroid/widget/ScrollView;

    .line 54
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 55
    const v1, 0x7f0605fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0605fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f06060c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewLabourOffice:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f060600

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewTotalEmployee:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f060602

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewAbscornding:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f060604

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewComplaints:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f060606

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewExpiresCard:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f060608

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewWorkPermit:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f06060a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewLicenseDate:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewWorkPermit:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getExpiredWorkPermits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewTotalEmployee:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getActiveEmployees()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewAbscornding:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getBALAGH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewComplaints:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getSHAKWA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewExpiresCard:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getExpiredLabourCards()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewLicenseDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getLicenseEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getCompanyEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getLabourOfficeEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getCompanyArabic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentOwnerCompanyStatistics;->mOwnerCompanyStatisticsVo:Lae/gov/mol/vo/OwnerCompanyStatisticsVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/OwnerCompanyStatisticsVo;->getLabourOfficeArabic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
