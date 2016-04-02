.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentWorkPermitReceiptDetails.java"


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringCompanyName:Ljava/lang/String;

.field mStringCompanyNumber:Ljava/lang/String;

.field mStringFromDate:Ljava/lang/String;

.field mStringToDate:Ljava/lang/String;

.field mTextViewCardNumber:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewCompanyNumber:Landroid/widget/TextView;

.field mTextViewDate:Landroid/widget/TextView;

.field mTextViewName:Landroid/widget/TextView;

.field mTextViewNationality:Landroid/widget/TextView;

.field mTextViewPayCardNumber:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->strNumber:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->strInputName:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringFromDate:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringToDate:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->isDataRecieved:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringCompanyNumber:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringCompanyName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mBundle:Landroid/os/Bundle;

    .line 56
    new-instance v0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-direct {v0}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringCompanyNumber:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f090061

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringCompanyName:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 61
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v0, 0x7f0300d5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewTitle:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090156

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060749

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f06074b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f06074d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewName:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f06074f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewNationality:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060751

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060753

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewDate:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060755

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewPayCardNumber:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringCompanyNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringCompanyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringCompanyName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mStringCompanyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getCard_no()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v2}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getEmp_card_expiry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lae/gov/mol/helper/CommonMethods;->FormateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewPayCardNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getPaycardno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_2
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mView:Landroid/view/View;

    return-object v0

    .line 93
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getPer_name_eng()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getDesc_english()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getPer_name_arb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mTextViewNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentWorkPermitReceiptDetails;->mWorkPermitReceiptByComCodeVo:Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/WorkPermitReceiptByComCodeVo;->getDesc_arabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
