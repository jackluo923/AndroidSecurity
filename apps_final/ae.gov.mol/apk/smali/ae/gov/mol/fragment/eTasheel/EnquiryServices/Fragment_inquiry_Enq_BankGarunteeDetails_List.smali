.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_inquiry_Enq_BankGarunteeDetails_List.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field private mBankGuaranteeDetailHandler:Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;

.field mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

.field mBankGuaranteeVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeVo;

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mEnq_GetBankGuaranteeHandler:Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mImageViewHome:Landroid/widget/ImageView;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;",
            ">;"
        }
    .end annotation
.end field

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->strNumber:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->strInputName:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->isDataRecieved:Z

    .line 49
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mBankGuaranteeDetailHandler:Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;)Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mBankGuaranteeDetailHandler:Lae/gov/xmlhandler/Enq_GetBankGuaranteeDetailHandler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mEnq_GetBankGuaranteeHandler:Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;)Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mEnq_GetBankGuaranteeHandler:Lae/gov/xmlhandler/Enq_GetBankGuaranteeHandler;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 78
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 79
    new-instance v0, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mBankGuaranteeDetailVo:Lae/gov/mol/vo/Enq_GetBankGuaranteeDetailVo;

    .line 80
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mBundle:Landroid/os/Bundle;

    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->strNumber:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->strInputName:Ljava/lang/String;

    .line 83
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 90
    const v0, 0x7f030081

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mTextViewTitle:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mImageViewHome:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mView:Landroid/view/View;

    const v1, 0x7f060414

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mListView:Landroid/widget/ListView;

    .line 106
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$2;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 289
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 291
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$ListBaseAdapter;

    .line 292
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_inquiry_Enq_BankGarunteeDetails_List$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    :cond_0
    return-void
.end method
