.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_Enq_Bank_Garuntee_details.java"


# instance fields
.field mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

.field mBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

.field mBundle:Landroid/os/Bundle;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mImageViewHome:Landroid/widget/ImageView;

.field mScrollView:Landroid/widget/ScrollView;

.field mTextViewBankGrantDate:Landroid/widget/TextView;

.field mTextViewBankGrantNo:Landroid/widget/TextView;

.field mTextViewBankName:Landroid/widget/TextView;

.field mTextViewCategory:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewEmirate:Landroid/widget/TextView;

.field mTextViewLabourOffice:Landroid/widget/TextView;

.field mTextViewLicenseNumber:Landroid/widget/TextView;

.field mTextViewRefundAmount:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBundle:Landroid/os/Bundle;

    .line 54
    new-instance v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    .line 55
    new-instance v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    .line 56
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 66
    const v0, 0x7f030080

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f060401

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mScrollView:Landroid/widget/ScrollView;

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f060404

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f06040a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewBankGrantNo:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f060410

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewBankGrantDate:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f06040e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewRefundAmount:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f06040c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewBankName:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f060408

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewLabourOffice:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f060406

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mImageViewHome:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->getCOMPANY_CODE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewBankGrantNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->getBANK_GRNT_NO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewBankGrantDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->getBANK_GRNT_DATE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewRefundAmount:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->getREFUNDAMOUNT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewBankName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;->getBANKNAME()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewLabourOffice:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->getLabour_Office()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mView:Landroid/view/View;

    return-object v0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->getCom_Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Enq_Bank_Garuntee_details;->mBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;->getCom_name_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
