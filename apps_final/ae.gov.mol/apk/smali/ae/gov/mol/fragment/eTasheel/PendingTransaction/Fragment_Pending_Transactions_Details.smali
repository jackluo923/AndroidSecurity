.class public Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Pending_Transactions_Details.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;
    }
.end annotation


# instance fields
.field private mBackProcess:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;

.field private mBundle:Landroid/os/Bundle;

.field private mButtonDelete:Landroid/widget/Button;

.field private mButtonPayment:Landroid/widget/Button;

.field private mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field private mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

.field private mPendingTransactionPosition:I

.field private mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

.field private mTextViewAddDate:Landroid/widget/TextView;

.field private mTextViewCompanyName:Landroid/widget/TextView;

.field private mTextViewCompanyNumber:Landroid/widget/TextView;

.field private mTextViewPaymentPage:Landroid/widget/TextView;

.field private mTextViewServiceName:Landroid/widget/TextView;

.field private mTextViewServiceNumber:Landroid/widget/TextView;

.field private mTextViewTitle:Landroid/widget/TextView;

.field private mTextViewTransactionId:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/vo/PendingTransactionsdata;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Lae/gov/mol/helper/CommonMethods;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionPosition:I

    return v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mBundle:Landroid/os/Bundle;

    .line 70
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/PendingTransactionsdata;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09004e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionPosition:I

    .line 72
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 73
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 74
    new-instance v0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mBackProcess:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const v0, 0x7f0300b7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewTitle:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f06061e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewCompanyNumber:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f06061f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f060621

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewServiceNumber:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f060622

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewServiceName:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f060624

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewTransactionId:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f060625

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewAddDate:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f060626

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewPaymentPage:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f060629

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mButtonPayment:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mButtonPayment:Landroid/widget/Button;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$1;-><init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    const v1, 0x7f060627

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mButtonDelete:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mButtonDelete:Landroid/widget/Button;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$2;-><init>(Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewCompanyNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v1}, Lae/gov/mol/vo/PendingTransactionsdata;->getCompany_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewCompanyName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v1}, Lae/gov/mol/vo/PendingTransactionsdata;->getCom_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewServiceNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v1}, Lae/gov/mol/vo/PendingTransactionsdata;->getService_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewServiceName:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v1}, Lae/gov/mol/vo/PendingTransactionsdata;->getService_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewTransactionId:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v1}, Lae/gov/mol/vo/PendingTransactionsdata;->getTranid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewAddDate:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v1}, Lae/gov/mol/vo/PendingTransactionsdata;->getAdd_date()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mTextViewPaymentPage:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mPendingTransactionsdata:Lae/gov/mol/vo/PendingTransactionsdata;

    invoke-virtual {v1}, Lae/gov/mol/vo/PendingTransactionsdata;->getPaymentPage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected removePendingPaymentTransaction()V
    .locals 4

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details;->mBackProcess:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transactions_Details$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method
