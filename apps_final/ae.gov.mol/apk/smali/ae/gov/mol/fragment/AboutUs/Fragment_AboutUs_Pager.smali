.class public Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "Fragment_AboutUs_Pager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;,
        Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$MyPagerAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$MyPagerAdapter;

.field height:I

.field isFirst:Ljava/lang/Boolean;

.field mBackProcess:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;

.field mFragmentContactUs:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

.field mFragment_News:Lae/gov/mol/fragment/AboutUs/FragmentNews;

.field mFragment_VisionAndMission:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

.field mFragment_ministers_message:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

.field mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

.field mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

.field mNewsVo:Lae/gov/mol/vo/NewsVo;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field mTextViewHeader:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field mimImageViewHeaderHome:Landroid/widget/ImageView;

.field ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->isFirst:Ljava/lang/Boolean;

    .line 58
    iput v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->height:I

    .line 59
    iput v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->width:I

    .line 49
    return-void
.end method


# virtual methods
.method public GetDeviceHeight()V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 373
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 375
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->width:I

    .line 376
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->height:I

    .line 377
    iget v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->height:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->height:I

    .line 378
    return-void
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 256
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lae/gov/mol/MolFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v0, "mIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->startActivity(Landroid/content/Intent;)V

    .line 386
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->finish()V

    .line 387
    invoke-super {p0}, Lae/gov/mol/helper/CustomFragmentActivity;->onBackPressed()V

    .line 388
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f020140

    const v8, 0x7f02013f

    const v7, 0x7f02013a

    const v6, 0x7f020139

    const/4 v5, 0x0

    .line 81
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v2, 0x7f03002c

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->GetDeviceHeight()V

    .line 85
    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f060758

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mTextViewHeader:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f060757

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mimImageViewHeaderHome:Landroid/widget/ImageView;

    .line 88
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mimImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$1;-><init>(Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v2, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 96
    new-instance v2, Lae/gov/mol/helper/PostParseGet;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 97
    new-instance v2, Lae/gov/mol/vo/MOLGoalVo;

    invoke-direct {v2}, Lae/gov/mol/vo/MOLGoalVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mMolGoalVo:Lae/gov/mol/vo/MOLGoalVo;

    .line 98
    new-instance v2, Lae/gov/mol/vo/NewsVo;

    invoke-direct {v2}, Lae/gov/mol/vo/NewsVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    .line 99
    new-instance v2, Lae/gov/mol/vo/MinisterMessageVo;

    invoke-direct {v2}, Lae/gov/mol/vo/MinisterMessageVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->ministerMessageVo:Lae/gov/mol/vo/MinisterMessageVo;

    .line 100
    new-instance v2, Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-direct {v2}, Lae/gov/mol/vo/MOL_Vission_MissionVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mMol_Vission_MissionVo:Lae/gov/mol/vo/MOL_Vission_MissionVo;

    .line 101
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mTextViewHeader:Landroid/widget/TextView;

    const v3, 0x7f09008d

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->newInstance()Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_VisionAndMission:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    .line 103
    invoke-static {}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->newInstance()Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_ministers_message:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    .line 104
    invoke-static {}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->newInstance()Lae/gov/mol/fragment/AboutUs/FragmentNews;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_News:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    .line 105
    invoke-static {}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->newInstance()Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragmentContactUs:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    .line 107
    const v2, 0x7f060069

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lae/gov/mol/helper/PagerSlidingTabStrip;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    .line 108
    const v2, 0x7f06006a

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->pager:Landroid/support/v4/view/ViewPager;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "mArrayListIconTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 113
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f090091

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8, v9}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 114
    .local v1, "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f090097

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020163

    const v4, 0x7f020164

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 117
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f090098

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6, v7}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 121
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0900a3

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020147

    const v4, 0x7f020148

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 124
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_0
    new-instance v2, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$MyPagerAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->adapter:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$MyPagerAdapter;

    .line 142
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->adapter:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 143
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 144
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->pager:Landroid/support/v4/view/ViewPager;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 145
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v5}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    .line 146
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 147
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 149
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setDividerColor(I)V

    .line 150
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {v2, p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 151
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    const/high16 v3, 0x1060000

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 153
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->adapter:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$MyPagerAdapter;

    invoke-virtual {v3}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$MyPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 157
    :cond_0
    invoke-static {}, Lae/gov/mol/MolApplication;->getmNewsVo()Lae/gov/mol/vo/NewsVo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    invoke-static {}, Lae/gov/mol/MolApplication;->getmMol_Vission_MissionVo()Lae/gov/mol/vo/MOL_Vission_MissionVo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 159
    invoke-static {}, Lae/gov/mol/MolApplication;->getMinisterMessageVo()Lae/gov/mol/vo/MinisterMessageVo$MinistersMessageData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    invoke-static {}, Lae/gov/mol/MolApplication;->getmMolGoalVo()Lae/gov/mol/vo/MOLGoalVo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 161
    :cond_1
    new-instance v2, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;-><init>(Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;)V

    iput-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mBackProcess:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;

    .line 162
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mBackProcess:Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    :goto_1
    return-void

    .line 128
    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    :cond_2
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f0900a3

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020147

    const v4, 0x7f020148

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 129
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f090098

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6, v7}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 132
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f090097

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020163

    const v4, 0x7f020164

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 135
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f090091

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8, v9}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 138
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 164
    :cond_3
    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_News:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-virtual {v2}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->updateView()V

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 265
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 269
    if-nez p3, :cond_1

    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_News:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_News:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->updateView()V

    .line 272
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->isFirst:Ljava/lang/Boolean;

    .line 274
    :cond_1
    return-void

    .line 272
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "Position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 279
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 281
    if-nez p1, :cond_1

    .line 282
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_News:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->updateView()V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    if-ne p1, v2, :cond_2

    .line 284
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_VisionAndMission:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->updateView()V

    goto :goto_0

    .line 286
    :cond_2
    if-ne p1, v3, :cond_3

    .line 287
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_ministers_message:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->updateView()V

    goto :goto_0

    .line 289
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 290
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragmentContactUs:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    invoke-virtual {v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->updateView()V

    goto :goto_0

    .line 293
    :cond_4
    if-nez p1, :cond_5

    .line 294
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragmentContactUs:Lae/gov/mol/fragment/ContactUs/FragmentContactUs;

    invoke-virtual {v0}, Lae/gov/mol/fragment/ContactUs/FragmentContactUs;->updateView()V

    goto :goto_0

    .line 296
    :cond_5
    if-ne p1, v2, :cond_6

    .line 297
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_ministers_message:Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentMinistersMessage;->updateView()V

    goto :goto_0

    .line 299
    :cond_6
    if-ne p1, v3, :cond_7

    .line 300
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_VisionAndMission:Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentVisionAndMission;->updateView()V

    goto :goto_0

    .line 302
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mNewsVo:Lae/gov/mol/vo/NewsVo;

    iget-object v0, v0, Lae/gov/mol/vo/NewsVo;->resources:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->mFragment_News:Lae/gov/mol/fragment/AboutUs/FragmentNews;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/FragmentNews;->updateView()V

    goto :goto_0
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lae/gov/mol/fragment/AboutUs/Fragment_AboutUs_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 245
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0601be

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 246
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 247
    if-eqz p2, :cond_0

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 249
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 250
    return-void
.end method
