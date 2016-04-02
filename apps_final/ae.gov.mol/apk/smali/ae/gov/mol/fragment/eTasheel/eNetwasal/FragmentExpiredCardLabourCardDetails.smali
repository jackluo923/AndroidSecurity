.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;
.super Landroid/support/v4/app/Fragment;
.source "FragmentExpiredCardLabourCardDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$BackProcessRenewCard;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mButtonRenewCard:Landroid/widget/Button;

.field mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

.field mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

.field mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

.field private mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mScrollView:Landroid/widget/ScrollView;

.field private mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

.field mTextViewCardDescription:Landroid/widget/TextView;

.field mTextViewCardExpiryDate:Landroid/widget/TextView;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewCategory:Landroid/widget/TextView;

.field mTextViewCompanyAddress:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyLicenseNumber:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompanyStatus:Landroid/widget/TextView;

.field mTextViewEmployeeCount:Landroid/widget/TextView;

.field mTextViewLabourOffice:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewPassportNo:Landroid/widget/TextView;

.field mTextViewPersonCode:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->strNumber:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->isDataRecieved:Z

    .line 34
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)Lae/gov/mol/helper/PostParseGet;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;Lae/gov/mol/vo/ServiceDataVo;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)Lae/gov/mol/vo/ServiceDataVo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    return-object v0
.end method


# virtual methods
.method public CalleServiceDetail()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    const-class v2, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-static {}, Lae/gov/mol/MolApplication;->getmTags()Lae/gov/mol/helper/Tags;

    move-result-object v1

    iget-object v1, v1, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mServiceDataVo:Lae/gov/mol/vo/ServiceDataVo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    const v1, 0x7f090055

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->startActivity(Landroid/content/Intent;)V

    .line 237
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 238
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 239
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mBundle:Landroid/os/Bundle;

    .line 75
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 76
    new-instance v0, Lae/gov/mol/helper/PostParseGet;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 77
    new-instance v0, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ExpiredLabourCardListVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    .line 78
    new-instance v0, Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ExpiredCard_infoVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004c

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ExpiredCard_infoVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 86
    const v0, 0x7f03006d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090142

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mScrollView:Landroid/widget/ScrollView;

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewPersonCode:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewPersonName:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewNationality:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060319

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f06031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCardDescription:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f0602ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyAddress:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060307

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewLabourOffice:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewEmployeeCount:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f06030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCategory:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f06030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyStatus:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewPassportNo:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f060305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyLicenseNumber:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f06031d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    const v1, 0x7f06031e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mButtonRenewCard:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mButtonRenewCard:Landroid/widget/Button;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewPersonCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getPersonCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCompanyAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewEmployeeCount:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getEmployeeCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCategory:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewPassportNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getPassportNo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyLicenseNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCom_license_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCardExpiryDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardExpiryDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mView:Landroid/view/View;

    return-object v0

    .line 134
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getPersonName_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getNatioanlity_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCardDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardDescription_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCompanyName_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getLabourOffice_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCOM_STATUS_ENG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getPersonName_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getNationality_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCardDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredLabourCardListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredLabourCardListVo;->getCardDescription_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCompanyName_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getLabourOffice_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mTextViewCompanyStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredCardLabourCardDetails;->mExpiredCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/ExpiredCard_infoVo;->getCOM_STATUS_ARB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
