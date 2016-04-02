.class public Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_Absconding_List.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$ListBaseAdapter;,
        Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$ViewHolder;
    }
.end annotation


# instance fields
.field isDataRecieved:Z

.field mAbscondingListHandler:Lae/gov/xmlhandler/AbscondingListHandler;

.field mAbscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

.field mAbscondingListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AbscondingListVo;",
            ">;"
        }
    .end annotation
.end field

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field private mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

.field private mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mFragmentBundle:Landroid/os/Bundle;

.field mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$ListBaseAdapter;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStrCompanyNo:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewTitle:Landroid/widget/TextView;

.field mUserId:Ljava/lang/String;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->isDataRecieved:Z

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mUserId:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mStrCompanyNo:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mtitle:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;Lae/gov/xmlhandler/Company_information_Handler;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;)Lae/gov/xmlhandler/Company_information_Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCompany_information_Handler:Lae/gov/xmlhandler/Company_information_Handler;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;Lae/gov/mol/vo/Company_InformationVo;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    return-void
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;)Lae/gov/mol/vo/Company_InformationVo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCompany_InformationVo:Lae/gov/mol/vo/Company_InformationVo;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 79
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 80
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mFragmentBundle:Landroid/os/Bundle;

    .line 81
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mStrCompanyNo:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v0}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mUserId:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mtitle:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "minInflater"    # Landroid/view/LayoutInflater;
    .param p2, "mViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "mBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 89
    const v0, 0x7f03002d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mView:Landroid/view/View;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mTextViewTitle:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mView:Landroid/view/View;

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mListView:Landroid/widget/ListView;

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mListView:Landroid/widget/ListView;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$1;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mAbscondingListVos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 304
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mAbscondingListVos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mAbscondingListVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 306
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$ListBaseAdapter;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$ListBaseAdapter;

    .line 307
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    :cond_0
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AbscondingListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "mAbscondingListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AbscondingListVo;>;"
    if-eqz p1, :cond_0

    .line 290
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$2;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List$2;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_Absconding_List;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    :cond_0
    return-void
.end method
