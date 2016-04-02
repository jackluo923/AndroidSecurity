.class public Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Inquiry_GetMissionWork_Permit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mBundle:Landroid/os/Bundle;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field private mGetMissionWorkPermit_Handler:Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;

.field mImageViewHome:Landroid/widget/ImageView;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetMissionWorkPermit;",
            ">;"
        }
    .end annotation
.end field

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

.field missionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

.field strInputName:Ljava/lang/String;

.field strNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->strNumber:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->strInputName:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->isDataRecieved:Z

    .line 48
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mGetMissionWorkPermit_Handler:Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;)Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mGetMissionWorkPermit_Handler:Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 130
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 79
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 80
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->missionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    .line 81
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mBundle:Landroid/os/Bundle;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->strNumber:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mBundle:Landroid/os/Bundle;

    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->strInputName:Ljava/lang/String;

    .line 84
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 85
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 92
    const v0, 0x7f030084

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mTextViewTitle:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mTextViewTitle:Landroid/widget/TextView;

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mView:Landroid/view/View;

    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mImageViewHome:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mImageViewHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$1;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mView:Landroid/view/View;

    const v1, 0x7f060434

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mListView:Landroid/widget/ListView;

    .line 107
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$2;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 294
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 296
    new-instance v0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$ListBaseAdapter;

    .line 297
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/EnquiryServices/Fragment_Inquiry_GetMissionWork_Permit$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    :cond_0
    return-void
.end method
