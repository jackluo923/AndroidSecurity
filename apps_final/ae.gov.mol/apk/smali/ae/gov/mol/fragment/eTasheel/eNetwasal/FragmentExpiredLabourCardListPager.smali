.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;
.super Lae/gov/mol/helper/CustomFragment;
.source "FragmentExpiredLabourCardListPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;
    }
.end annotation


# static fields
.field public static EXPIRED_LABOUR_CARD_0:I

.field public static EXPIRED_LABOUR_CARD_2:I

.field public static EXPIRED_LABOUR_CARD_3:I

.field public static EXPIRED_LABOUR_CARD_STATUS:I


# instance fields
.field private adapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;

.field index:I

.field isDataRecieved:Z

.field isFirst:Ljava/lang/Boolean;

.field mCard_infoVo:Lae/gov/mol/vo/ExpiredCard_infoVo;

.field public mCard_infoVo_0:Lae/gov/mol/vo/ExpiredCard_infoVo;

.field public mCard_infoVo_2:Lae/gov/mol/vo/ExpiredCard_infoVo;

.field public mCard_infoVo_3:Lae/gov/mol/vo/ExpiredCard_infoVo;

.field mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field private mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

.field mExListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

.field mExpiredLabourCardListHandler:Lae/gov/xmlhandler/ExpiredLabourCardListHandler;

.field public mExpiredLabourCardListVos_0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredLabourCardListVo;",
            ">;"
        }
    .end annotation
.end field

.field public mExpiredLabourCardListVos_2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredLabourCardListVo;",
            ">;"
        }
    .end annotation
.end field

.field public mExpiredLabourCardListVos_3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredLabourCardListVo;",
            ">;"
        }
    .end annotation
.end field

.field mExpired_LabourCard_Info_Handler:Lae/gov/xmlhandler/Expired_LabourCard_Info_Handler;

.field mExpiryStatus:I

.field mFragmentBundle:Landroid/os/Bundle;

.field private mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

.field private mFragmentExpiredLabourCardList_2:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

.field private mFragmentExpiredLabourCardList_3:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

.field mListView:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mStrCompanyNo:Ljava/lang/String;

.field mTags:Lae/gov/mol/helper/Tags;

.field mTextViewTitle:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private pager:Landroid/support/v4/view/ViewPager;

.field strInputName:Ljava/lang/String;

.field private tabs:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->EXPIRED_LABOUR_CARD_0:I

    .line 62
    const/4 v0, 0x2

    sput v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->EXPIRED_LABOUR_CARD_2:I

    .line 63
    const/4 v0, 0x3

    sput v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->EXPIRED_LABOUR_CARD_3:I

    .line 64
    const/4 v0, -0x1

    sput v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->EXPIRED_LABOUR_CARD_STATUS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mStrCompanyNo:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->strInputName:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->index:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->isDataRecieved:Z

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->isFirst:Ljava/lang/Boolean;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_3:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    return-object v0
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_2:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 189
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 190
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/CustomFragmentActivity;

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 109
    new-instance v0, Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 110
    new-instance v0, Lae/gov/mol/vo/ExpiredLabourCardListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ExpiredLabourCardListVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExListVo:Lae/gov/mol/vo/ExpiredLabourCardListVo;

    .line 111
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentBundle:Landroid/os/Bundle;

    .line 112
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mStrCompanyNo:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090047

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiryStatus:I

    .line 114
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentBundle:Landroid/os/Bundle;

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->strInputName:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentBundle:Landroid/os/Bundle;

    const-string v1, "selectedIndex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->index:I

    .line 116
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_0:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_2:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_3:Ljava/util/ArrayList;

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f02013c

    const v8, 0x7f02013b

    const v7, 0x7f02011b

    const v6, 0x7f02011a

    const/4 v5, 0x0

    .line 125
    const v2, 0x7f030070

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    .line 127
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    const v3, 0x7f060758

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mTextViewTitle:Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mTextViewTitle:Landroid/widget/TextView;

    const v3, 0x7f090142

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    const v3, 0x7f060069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    .line 131
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    const v3, 0x7f06006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->pager:Landroid/support/v4/view/ViewPager;

    .line 134
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    .line 135
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->setArguments(Landroid/os/Bundle;)V

    .line 137
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_2:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    .line 138
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_2:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->setArguments(Landroid/os/Bundle;)V

    .line 140
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->newInstance(Lae/gov/mol/helper/CustomFragmentActivity;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_3:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    .line 141
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_3:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->setArguments(Landroid/os/Bundle;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "mArrayListIconTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f0901d1

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02014f

    const v4, 0x7f020150

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 146
    .local v1, "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901d2

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8, v9}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 149
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901d3

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6, v7}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 152
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_0
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->adapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->adapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 168
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 169
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 170
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setIndicatorColor(I)V

    .line 171
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setUnderlineColor(I)V

    .line 173
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setDividerColor(I)V

    .line 174
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {v2, p0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 176
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->adapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;

    invoke-virtual {v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 180
    :cond_0
    new-instance v2, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 182
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mView:Landroid/view/View;

    return-object v2

    .line 155
    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    :cond_1
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f0901d3

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020145

    const v4, 0x7f020146

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 156
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901d2

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6, v7}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 159
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901d1

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8, v9}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 162
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 422
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 425
    if-nez p3, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->isFirst:Ljava/lang/Boolean;

    .line 429
    :cond_0
    return-void

    .line 426
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "Position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 432
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    if-nez p1, :cond_1

    .line 434
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_3:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_3:Ljava/util/ArrayList;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_3:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->updateView(Ljava/util/ArrayList;Lae/gov/mol/vo/ExpiredCard_infoVo;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    if-ne p1, v2, :cond_2

    .line 436
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_2:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_2:Ljava/util/ArrayList;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_2:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->updateView(Ljava/util/ArrayList;Lae/gov/mol/vo/ExpiredCard_infoVo;)V

    goto :goto_0

    .line 437
    :cond_2
    if-ne p1, v3, :cond_0

    .line 438
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_0:Ljava/util/ArrayList;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_0:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->updateView(Ljava/util/ArrayList;Lae/gov/mol/vo/ExpiredCard_infoVo;)V

    goto :goto_0

    .line 441
    :cond_3
    if-nez p1, :cond_4

    .line 442
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_0:Ljava/util/ArrayList;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_0:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->updateView(Ljava/util/ArrayList;Lae/gov/mol/vo/ExpiredCard_infoVo;)V

    goto :goto_0

    .line 443
    :cond_4
    if-ne p1, v2, :cond_5

    .line 444
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_2:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_2:Ljava/util/ArrayList;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_2:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->updateView(Ljava/util/ArrayList;Lae/gov/mol/vo/ExpiredCard_infoVo;)V

    goto :goto_0

    .line 445
    :cond_5
    if-ne p1, v3, :cond_0

    .line 446
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_3:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mExpiredLabourCardListVos_3:Ljava/util/ArrayList;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mCard_infoVo_3:Lae/gov/mol/vo/ExpiredCard_infoVo;

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;->updateView(Ljava/util/ArrayList;Lae/gov/mol/vo/ExpiredCard_infoVo;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 352
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragment;->onResume()V

    .line 353
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ExpiredLabourCardListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "mExpiredLabourCardListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ExpiredLabourCardListVo;>;"
    if-eqz p1, :cond_0

    .line 339
    new-instance v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$1;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$1;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 347
    :cond_0
    return-void
.end method
