.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_Inquiry_GetMissionWork_Permit_Details.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

.field mImageViewHome:Landroid/widget/ImageView;

.field mTableRowLink:Landroid/widget/TableRow;

.field mTableRowTransactionNumber:Landroid/widget/TableRow;

.field mTextViewCardExpiry:Landroid/widget/TextView;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewLink:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewPayCardNumber:Landroid/widget/TextView;

.field mTextViewPendingPayment:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewRequiredGrant:Landroid/widget/TextView;

.field mTextViewTransactionNumber:Landroid/widget/TextView;

.field mTextViewWorkPermitNumber:Landroid/widget/TextView;

.field mTextViewcomname:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 57
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mBundle:Landroid/os/Bundle;

    .line 58
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    .line 59
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 68
    const v0, 0x7f030083

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f06041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060422

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewWorkPermitNumber:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060425

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewTransactionNumber:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060427

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewPersonName:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060429

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewNationality:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f06042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewCardExpiry:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f06042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewPayCardNumber:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060430

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewLink:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f06041c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewcomname:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f06041e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewPendingPayment:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060420

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewRequiredGrant:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f06042e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTableRowLink:Landroid/widget/TableRow;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060423

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTableRowTransactionNumber:Landroid/widget/TableRow;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mImageViewHome:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getCompanyno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewWorkPermitNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getWorkPermitNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewTransactionNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getTransactionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getNationality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewCardExpiry:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getEmp_card_expiry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewPayCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getPayCard_No()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewLink:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewPendingPayment:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->getPendingpayment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewRequiredGrant:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->getRequiredGrnt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTableRowTransactionNumber:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTableRowLink:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 110
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mView:Landroid/view/View;

    return-object v0

    .line 112
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getPersonNameEng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewcomname:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->getComnameeng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mGetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->getPersonNameArb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->mTextViewcomname:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit_Details;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->getComnamearb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
