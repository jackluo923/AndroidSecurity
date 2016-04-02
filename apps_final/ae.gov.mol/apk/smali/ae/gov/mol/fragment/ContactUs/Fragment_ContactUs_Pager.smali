.class public Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "Fragment_ContactUs_Pager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;,
        Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;
    }
.end annotation


# static fields
.field public static CurrentPage:I


# instance fields
.field isFirst:Ljava/lang/Boolean;

.field protected mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

.field mFragmentContactUsNearBy:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

.field mFragmentOffice:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field private mPagerAdapter:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mServiceCenterDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceCenterData;",
            ">;"
        }
    .end annotation
.end field

.field mServiceCenterListHandler:Lae/gov/xmlhandler/ServiceCenterListHandler;

.field protected mServiceCenterVo:Lae/gov/mol/vo/ServiceCenterData;

.field mTextViewHeader:Landroid/widget/TextView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->CurrentPage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->isFirst:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)Lae/gov/mol/helper/PagerSlidingTabStripContect;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    return-object v0
.end method


# virtual methods
.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 192
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->setContentView(I)V

    .line 75
    const v0, 0x7f0601bc

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 76
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mTextViewHeader:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f060757

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$1;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$1;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mTextViewHeader:Landroid/widget/TextView;

    const v1, 0x7f090069

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->GetNewInstance()Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentOffice:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    .line 87
    invoke-static {}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->GetNewInstance()Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentContactUsNearBy:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    .line 88
    new-instance v0, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 89
    new-instance v0, Lae/gov/mol/vo/ContactUsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ContactUsVo;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    .line 90
    new-instance v0, Lae/gov/mol/vo/ServiceCenterData;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceCenterData;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterVo:Lae/gov/mol/vo/ServiceCenterData;

    .line 91
    const v0, 0x7f0601bf

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    .line 92
    const v0, 0x7f0601c0

    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 93
    new-instance v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mPagerAdapter:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;

    .line 94
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mPagerAdapter:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 95
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 97
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setIndicatorColor(I)V

    .line 98
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setUnderlineColor(I)V

    .line 100
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setDividerColor(I)V

    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    invoke-virtual {v0, p0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 102
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mPagerAdapter:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;

    invoke-virtual {v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 105
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    new-instance v1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$2;

    invoke-direct {v1, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$2;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)V

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 113
    new-instance v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;

    invoke-direct {v0, p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;-><init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 201
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 209
    if-nez p3, :cond_0

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentOffice:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->updateView(Lae/gov/mol/vo/ContactUsVo;)V

    .line 215
    :goto_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->isFirst:Ljava/lang/Boolean;

    .line 217
    :cond_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentContactUsNearBy:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterVo:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->updateView(Lae/gov/mol/vo/ServiceCenterData;)V

    goto :goto_0

    .line 215
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "Position"    # I

    .prologue
    .line 224
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    if-nez p1, :cond_0

    .line 226
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentOffice:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->updateView(Lae/gov/mol/vo/ContactUsVo;)V

    .line 227
    sput p1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->CurrentPage:I

    .line 241
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentContactUsNearBy:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterVo:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->updateView(Lae/gov/mol/vo/ServiceCenterData;)V

    .line 230
    sput p1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->CurrentPage:I

    goto :goto_0

    .line 233
    :cond_1
    if-nez p1, :cond_2

    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentContactUsNearBy:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mServiceCenterVo:Lae/gov/mol/vo/ServiceCenterData;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->updateView(Lae/gov/mol/vo/ServiceCenterData;)V

    .line 235
    sput p1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->CurrentPage:I

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentOffice:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mContactUsVo:Lae/gov/mol/vo/ContactUsVo;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentOffice;->updateView(Lae/gov/mol/vo/ContactUsVo;)V

    .line 238
    sput p1, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->CurrentPage:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->onResume()V

    .line 174
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 182
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0601bd

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 183
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 184
    if-eqz p2, :cond_0

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 186
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 187
    return-void
.end method
