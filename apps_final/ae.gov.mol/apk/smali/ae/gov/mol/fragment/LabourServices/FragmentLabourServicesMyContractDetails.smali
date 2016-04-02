.class public Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "FragmentLabourServicesMyContractDetails.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mImageViewBanner:Landroid/widget/ImageView;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mMyContactVo:Lae/gov/mol/vo/MyContactVo;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mStringAllowanceOther2:Ljava/lang/String;

.field mStringAllowanceOther3:Ljava/lang/String;

.field mStringAllowanceOther4:Ljava/lang/String;

.field mStringAllowanceResidence:Ljava/lang/String;

.field mStringAllowanceTransport:Ljava/lang/String;

.field mStringBasicSalary:Ljava/lang/String;

.field mStringCardEndDate:Ljava/lang/String;

.field mStringCardNumber:Ljava/lang/String;

.field mStringCardStartDate:Ljava/lang/String;

.field mStringContractEndDate:Ljava/lang/String;

.field mStringContractStartDate:Ljava/lang/String;

.field mStringContractType:Ljava/lang/String;

.field mStringJobDescription:Ljava/lang/String;

.field mStringTotalSalary:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewAllowanceOther2:Landroid/widget/TextView;

.field mTextViewAllowanceOther3:Landroid/widget/TextView;

.field mTextViewAllowanceOther4:Landroid/widget/TextView;

.field mTextViewAllowanceResidence:Landroid/widget/TextView;

.field mTextViewAllowanceTransport:Landroid/widget/TextView;

.field mTextViewBasicSalary:Landroid/widget/TextView;

.field mTextViewCardEndDate:Landroid/widget/TextView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewCardStartDate:Landroid/widget/TextView;

.field mTextViewContractEndDate:Landroid/widget/TextView;

.field mTextViewContractStartDate:Landroid/widget/TextView;

.field mTextViewContractType:Landroid/widget/TextView;

.field mTextViewHeader:Landroid/widget/TextView;

.field mTextViewJobDescription:Landroid/widget/TextView;

.field mTextViewTotalSalary:Landroid/widget/TextView;

.field public provider:Ljava/lang/String;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringCardNumber:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringCardStartDate:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringCardEndDate:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringContractType:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringContractStartDate:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringContractEndDate:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringJobDescription:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringBasicSalary:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringTotalSalary:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringAllowanceResidence:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringAllowanceTransport:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringAllowanceOther2:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringAllowanceOther3:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mStringAllowanceOther4:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    .line 76
    move-object v0, p0

    .line 78
    .local v0, "currentActivity":Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f03009d

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->setContentView(I)V

    .line 81
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v1

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTags:Lae/gov/mol/helper/Tags;

    .line 82
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v2, v2, Lae/gov/mol/helper/Tags;->mMyContactVo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lae/gov/mol/vo/MyContactVo;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    .line 85
    const v1, 0x7f060758

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901df

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const v1, 0x7f06032c

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mImageViewBanner:Landroid/widget/ImageView;

    .line 87
    const v1, 0x7f060757

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 88
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails$1;-><init>(Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f060552

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f060554

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewCardStartDate:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f060556

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewCardEndDate:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f06055a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewContractType:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f06055c

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewContractStartDate:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f06055e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewContractEndDate:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f060560

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewJobDescription:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f060562

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewBasicSalary:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f060564

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewTotalSalary:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f060566

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceResidence:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f060568

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceTransport:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f06056a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceOther2:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f06056c

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceOther3:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f06056e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceOther4:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewCardStartDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getCardStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewCardEndDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getCardExpiry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewContractType:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getContractType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewContractStartDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getContractStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewContractEndDate:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getContractEndDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewJobDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getJobDescriptionEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewBasicSalary:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getBasicSalary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewTotalSalary:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getTotalSalary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceResidence:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getAllowance1ResidenceEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceTransport:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getAllowanceTransportEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceOther2:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getAllowance2ResidenceEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceOther3:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getAllowance3ResidenceEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mTextViewAllowanceOther4:Landroid/widget/TextView;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/FragmentLabourServicesMyContractDetails;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/MyContactVo;->getAllowance4ResidenceEnglish()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 140
    return-void
.end method
