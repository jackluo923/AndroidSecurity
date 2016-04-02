.class public Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "Fragment_eTasheel_Pager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;,
        Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;
    }
.end annotation


# static fields
.field public static final FRAGMENT_ENETWASAL:I = 0x2

.field public static final FRAGMENT_ESERVICES:I = 0x1

.field public static final FRAGMENT_PAGER_INDEX:Ljava/lang/String; = "FRAGMENT_SELECTED_INDEX"

.field public static final FRAGMENT_PENDING_TRANSACTION:I = 0x3

.field public static final FRAGMENT_RECENT_TRANSACTION:I = 0x4

.field public static mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;


# instance fields
.field private FRAGMENT_SELECTED_INDEX:I

.field private adapter:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;

.field height:I

.field isFirst:Ljava/lang/Boolean;

.field private mAlleServicesByKeyData:Lae/gov/mol/vo/AlleServicesData;

.field private mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

.field private mBundle:Landroid/os/Bundle;

.field public mCommonMethods:Lae/gov/mol/helper/CommonMethods;

.field private mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

.field private mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

.field private mFragment_eNetwasal:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

.field private mFragment_eServices:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

.field mImageViewBanner:Landroid/widget/ImageView;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

.field private mPendingTransactionsdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PendingTransactionsdata;",
            ">;"
        }
    .end annotation
.end field

.field private mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field private mRecentTransactionsdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/RecentTransactionsdata;",
            ">;"
        }
    .end annotation
.end field

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mTextViewHeader:Landroid/widget/TextView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 75
    iput v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->FRAGMENT_SELECTED_INDEX:I

    .line 77
    iput v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->width:I

    .line 78
    iput v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->height:I

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->isFirst:Ljava/lang/Boolean;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    return-object v0
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    return-object v0
.end method

.method static synthetic access$10(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Lae/gov/mol/vo/AlleServicesData;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    return-void
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eNetwasal:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    return-object v0
.end method

.method static synthetic access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eServices:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    return-object v0
.end method

.method static synthetic access$4(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$7(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/helper/PostParseGet;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    return-object v0
.end method

.method static synthetic access$9(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/vo/AlleServicesData;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    return-object v0
.end method

.method public static finishActivity()V
    .locals 1

    .prologue
    .line 522
    sget-object v0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    if-eqz v0, :cond_0

    .line 523
    sget-object v0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->finish()V

    .line 525
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs CallBackProcess(Landroid/content/Context;[Ljava/lang/Integer;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 477
    :try_start_0
    new-instance v0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;

    invoke-direct {v0, p0, p1}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/content/Context;)V

    .line 478
    .local v0, "mBackProcess":Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;
    invoke-virtual {v0, p2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v0    # "mBackProcess":Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$BackProcess;
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public GetDeviceHeight()V
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 488
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->width:I

    .line 489
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->height:I

    .line 490
    iget v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->height:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->height:I

    .line 491
    return-void
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 300
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->finish()V

    goto :goto_0
.end method

.method public getAlleServicesByKeyData()Lae/gov/mol/vo/AlleServicesData;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesByKeyData:Lae/gov/mol/vo/AlleServicesData;

    return-object v0
.end method

.method public getEServiceRenewLabourCard()Lae/gov/mol/vo/ServiceDataVo;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesVo;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesVo;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 515
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesData;->getD()Lae/gov/mol/vo/AlleServicesVo;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/vo/AlleServicesVo;->getServices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ServiceDataVo;

    .line 518
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v2, 0x7f03005f

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->setContentView(I)V

    .line 101
    sput-object p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eTasheel_Pager:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 102
    new-instance v2, Lae/gov/mol/helper/CommonMethods;

    invoke-direct {v2, p0}, Lae/gov/mol/helper/CommonMethods;-><init>(Lae/gov/mol/helper/CustomFragmentActivity;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    .line 103
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->GetDeviceHeight()V

    .line 104
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    .line 105
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    const-string v3, "FRAGMENT_SELECTED_INDEX"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->FRAGMENT_SELECTED_INDEX:I

    .line 107
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    const v3, 0x7f090045

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lae/gov/mol/vo/OwnerstatisticsVo;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mOwnerstatisticsVo:Lae/gov/mol/vo/OwnerstatisticsVo;

    .line 111
    :goto_0
    const v2, 0x7f0602c5

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f060758

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mTextViewHeader:Landroid/widget/TextView;

    .line 113
    const v2, 0x7f0602c7

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mImageViewBanner:Landroid/widget/ImageView;

    .line 114
    const v2, 0x7f060757

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 116
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$1;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mImageViewBanner:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mTextViewHeader:Landroid/widget/TextView;

    const v3, 0x7f090088

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 126
    const v2, 0x7f060069

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lae/gov/mol/helper/PagerSlidingTabStrip;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    .line 127
    const v2, 0x7f06006a

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "mArrayListIconTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 132
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f09008b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013b

    const v4, 0x7f02013c

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 133
    .local v1, "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f09009c

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02011a

    const v4, 0x7f02011b

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 136
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901aa

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020145

    const v4, 0x7f020146

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 139
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f09009b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02014f

    const v4, 0x7f020150

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 142
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_1
    new-instance v2, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->adapter:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;

    .line 161
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->adapter:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 162
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 163
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->FRAGMENT_SELECTED_INDEX:I

    if-lez v2, :cond_3

    iget v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->FRAGMENT_SELECTED_INDEX:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 164
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    .line 168
    :goto_2
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 169
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 171
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setDividerColor(I)V

    .line 172
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {v2, p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 175
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    invoke-static {p0, v2}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->newInstance(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/os/Bundle;)Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    .line 176
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    invoke-static {p0, v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->newInstance(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/os/Bundle;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eServices:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    .line 177
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    invoke-static {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;->newInstance(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/os/Bundle;)Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eNetwasal:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    .line 178
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    invoke-static {p0, v2}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->newInstance(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/os/Bundle;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    .line 179
    new-instance v2, Lae/gov/mol/vo/AlleServicesData;

    invoke-direct {v2}, Lae/gov/mol/vo/AlleServicesData;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    .line 180
    new-instance v2, Lae/gov/mol/vo/AlleServicesData;

    invoke-direct {v2}, Lae/gov/mol/vo/AlleServicesData;-><init>()V

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->setAlleServicesByKeyData(Lae/gov/mol/vo/AlleServicesData;)V

    .line 182
    new-instance v2, Lae/gov/mol/helper/PostParseGet;

    invoke-direct {v2, p0}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 183
    new-array v2, v9, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->CallBackProcess(Landroid/content/Context;[Ljava/lang/Integer;)V

    .line 186
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->FRAGMENT_SELECTED_INDEX:I

    if-ne v2, v6, :cond_5

    .line 187
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 211
    :cond_0
    :goto_3
    return-void

    .line 109
    .end local v0    # "mArrayListIconTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mBundle:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 146
    .restart local v0    # "mArrayListIconTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    :cond_2
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f09009b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02014f

    const v4, 0x7f020150

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 147
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901aa

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020145

    const v4, 0x7f020146

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 150
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f09009c

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02011a

    const v4, 0x7f02011b

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 153
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f09008b

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013b

    const v4, 0x7f02013c

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 156
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 166
    :cond_3
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v5}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    goto/16 :goto_2

    .line 190
    :cond_4
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_3

    .line 192
    :cond_5
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->FRAGMENT_SELECTED_INDEX:I

    if-ne v2, v7, :cond_7

    .line 193
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    .line 196
    :cond_6
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    .line 198
    :cond_7
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->FRAGMENT_SELECTED_INDEX:I

    if-ne v2, v8, :cond_9

    .line 199
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 200
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    .line 202
    :cond_8
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    .line 204
    :cond_9
    iget v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->FRAGMENT_SELECTED_INDEX:I

    if-ne v2, v9, :cond_0

    .line 205
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 206
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3

    .line 208
    :cond_a
    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_3
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 310
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 315
    if-nez p3, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->isFirst:Ljava/lang/Boolean;

    .line 318
    :cond_0
    return-void

    .line 316
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "Position"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 323
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    if-nez p1, :cond_1

    .line 325
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->updateView(Ljava/util/ArrayList;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-ne p1, v2, :cond_2

    .line 327
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->updateView(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 328
    :cond_2
    if-eq p1, v3, :cond_0

    .line 330
    if-ne p1, v4, :cond_0

    .line 331
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eServices:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->updateView(Lae/gov/mol/vo/AlleServicesData;)V

    goto :goto_0

    .line 334
    :cond_3
    if-nez p1, :cond_4

    .line 335
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eServices:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesData:Lae/gov/mol/vo/AlleServicesData;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;->updateView(Lae/gov/mol/vo/AlleServicesData;)V

    goto :goto_0

    .line 336
    :cond_4
    if-eq p1, v2, :cond_0

    .line 338
    if-ne p1, v3, :cond_5

    .line 340
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;->updateView(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 341
    :cond_5
    if-ne p1, v4, :cond_0

    .line 343
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;->updateView(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public removePendingTranscation(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 495
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 497
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mPendingTransactionsdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 495
    :cond_0
    monitor-exit v1

    .line 502
    :cond_1
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 288
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0602c4

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 289
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 290
    if-eqz p2, :cond_0

    .line 291
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 292
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 294
    return-void
.end method

.method public setAlleServicesByKeyData(Lae/gov/mol/vo/AlleServicesData;)V
    .locals 0
    .param p1, "mAlleServicesByKeyData"    # Lae/gov/mol/vo/AlleServicesData;

    .prologue
    .line 505
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mAlleServicesByKeyData:Lae/gov/mol/vo/AlleServicesData;

    .line 506
    return-void
.end method
