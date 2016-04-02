.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentPaymentReceiptDetails.java"


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStringFromDate:Ljava/lang/String;

.field mStringToDate:Ljava/lang/String;

.field mTextViewCompanyCode:Landroid/widget/TextView;

.field mTextViewCompanyName:Landroid/widget/TextView;

.field mTextViewReceiptDate:Landroid/widget/TextView;

.field mTextViewReceiptNumber:Landroid/widget/TextView;

.field mTextViewTitle:Landroid/widget/TextView;

.field mTextViewTotal:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->strNumber:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->strInputName:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mStringFromDate:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mStringToDate:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->isDataRecieved:Z

    .line 20
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mBundle:Landroid/os/Bundle;

    .line 50
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mBundle:Landroid/os/Bundle;

    .line 51
    new-instance v0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    .line 52
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004a

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v0, 0x7f0300b6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewTitle:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f090159

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060613

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewCompanyCode:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060611

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060615

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewReceiptNumber:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060617

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewReceiptDate:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mView:Landroid/view/View;

    const v1, 0x7f060619

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewTotal:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewCompanyCode:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->getCompanyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewReceiptNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->getReceiptNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewReceiptDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->getReceiptDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewTotal:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-static {}, Lae/gov/mol/MolApplication;->getLanguage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mView:Landroid/view/View;

    return-object v0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->getCompanyNameEnglish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentPaymentReceiptDetails;->mPaymentReceiptDetailsVo:Lae/gov/mol/vo/PaymentReceiptDetailsVo;

    invoke-virtual {v1}, Lae/gov/mol/vo/PaymentReceiptDetailsVo;->getCompanyNameArabic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
