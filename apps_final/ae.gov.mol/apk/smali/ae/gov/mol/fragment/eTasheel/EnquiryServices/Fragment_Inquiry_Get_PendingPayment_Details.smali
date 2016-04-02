.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;
.super Landroid/support/v4/app/Fragment;
.source "Fragment_Inquiry_Get_PendingPayment_Details.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

.field mImageViewHome:Landroid/widget/ImageView;

.field mTextViewCardExpiry:Landroid/widget/TextView;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewDescription:Landroid/widget/TextView;

.field mTextViewEmpCardNo:Landroid/widget/TextView;

.field mTextViewPayCardNo:Landroid/widget/TextView;

.field mTextViewPersonName:Landroid/widget/TextView;

.field mTextViewTransactionNo:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 47
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mBundle:Landroid/os/Bundle;

    .line 48
    new-instance v0, Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetPendingPayment;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    .line 49
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004b

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/Enq_GetPendingPayment;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const v0, 0x7f03008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f060255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f060257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f0604a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewTransactionNo:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f0604a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewPersonName:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f0604a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewDescription:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f0604aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewPayCardNo:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f0604ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewEmpCardNo:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f0604ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewCardExpiry:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mImageViewHome:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getEMP_COM_COMPANY_CODE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewTransactionNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getTRANS_NO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewEmpCardNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getEMP_CARD_NO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewCardExpiry:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getEMP_CARD_EXPIRY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewPayCardNo:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getPAYCARD_NO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mView:Landroid/view/View;

    return-object v0

    .line 87
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getCOM_NAME_ENG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getPER_NAME_ENG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getWPDESCE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getCOM_NAME_ARB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewPersonName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getPER_NAME_ARB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mTextViewDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_Get_PendingPayment_Details;->mEnq_GetPendingPayment:Lae/gov/mol/vo/Enq_GetPendingPayment;

    invoke-virtual {v1}, Lae/gov/mol/vo/Enq_GetPendingPayment;->getWPDESCA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
