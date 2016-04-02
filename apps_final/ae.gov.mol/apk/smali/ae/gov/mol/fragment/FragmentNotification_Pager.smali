.class public Lae/gov/mol/fragment/FragmentNotification_Pager;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "FragmentNotification_Pager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;,
        Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;
    }
.end annotation


# static fields
.field public static final FAQ:I = 0x2

.field public static final KEY:Ljava/lang/String; = "pageindex"

.field public static final LABOURLAW:I = 0x3

.field public static final MYCONTRACT:I = 0x1

.field public static final MYSALARY:I = 0x0

.field public static final PRIVATE:I = 0x0

.field public static final PUBLIC:I = 0x1


# instance fields
.field private adapter:Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;

.field height:I

.field isFirst:Ljava/lang/Boolean;

.field mArrayListPrivateNotificationVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PrivateNotificationVo;",
            ">;"
        }
    .end annotation
.end field

.field mArrayListPublicNotificationVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PublicNotificationVo;",
            ">;"
        }
    .end annotation
.end field

.field mBackProcess:Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;

.field mFaqVo:Lae/gov/mol/vo/FaqVo;

.field mFragmentPrivateNotification:Lae/gov/mol/fragment/FragmentPrivateNotification;

.field mFragmentPublicNotification:Lae/gov/mol/fragment/FragmentPublicNotification;

.field mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

.field mImageViewHeader:Landroid/widget/ImageView;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field public mPrivateNotificationHandler:Lae/gov/xmlhandler/PrivateNotificationHandler;

.field public mPrivateNotificationVo:Lae/gov/xmlhandler/PrivateNotificationHandler;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mPublicNotificationHandler:Lae/gov/xmlhandler/PublicNotificationHandler;

.field mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mResultResponse:Ljava/lang/String;

.field mTextViewHeader:Landroid/widget/TextView;

.field mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

.field private pageindex:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 64
    iput v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pageindex:I

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->isFirst:Ljava/lang/Boolean;

    .line 69
    iput v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->height:I

    .line 70
    iput v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->width:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mResultResponse:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/FragmentNotification_Pager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mResultResponse:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lae/gov/mol/fragment/FragmentNotification_Pager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mResultResponse:Ljava/lang/String;

    return-object v0
.end method

.method private setPageSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    iget v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pageindex:I

    if-nez v0, :cond_2

    .line 176
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 181
    :cond_2
    iget v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pageindex:I

    if-ne v0, v2, :cond_0

    .line 182
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method


# virtual methods
.method public GetDeviceHeight()V
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 410
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 412
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->width:I

    .line 413
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->height:I

    .line 414
    iget v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->height:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->height:I

    .line 415
    return-void
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 273
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f02014a

    const v7, 0x7f020149

    const v6, 0x7f020125

    const v4, 0x7f020124

    const/4 v5, 0x0

    .line 105
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v2, 0x7f030097

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->GetDeviceHeight()V

    .line 109
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pageindex"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pageindex:I

    .line 112
    :cond_0
    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f060758

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mTextViewHeader:Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f060757

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mImageViewHeader:Landroid/widget/ImageView;

    .line 115
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mImageViewHeader:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/FragmentNotification_Pager$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/FragmentNotification_Pager$1;-><init>(Lae/gov/mol/fragment/FragmentNotification_Pager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mTextViewHeader:Landroid/widget/TextView;

    const v3, 0x7f090125

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v2, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 125
    new-instance v2, Lae/gov/mol/helper/PostParseGet;

    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 126
    new-instance v2, Lae/gov/mol/vo/FaqVo;

    invoke-direct {v2}, Lae/gov/mol/vo/FaqVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    .line 127
    new-instance v2, Lae/gov/mol/vo/PublicNotificationVo;

    invoke-direct {v2}, Lae/gov/mol/vo/PublicNotificationVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPrivateNotificationVos:Ljava/util/ArrayList;

    .line 130
    invoke-static {}, Lae/gov/mol/fragment/FragmentPrivateNotification;->newInstance()Lae/gov/mol/fragment/FragmentPrivateNotification;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPrivateNotification:Lae/gov/mol/fragment/FragmentPrivateNotification;

    .line 131
    invoke-static {}, Lae/gov/mol/fragment/FragmentPublicNotification;->newInstance()Lae/gov/mol/fragment/FragmentPublicNotification;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPublicNotification:Lae/gov/mol/fragment/FragmentPublicNotification;

    .line 133
    const v2, 0x7f060069

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lae/gov/mol/helper/PagerSlidingTabStrip;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    .line 134
    const v2, 0x7f06006a

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "mArrayListIconTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f090245

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7, v8}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 140
    .local v1, "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f090244

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v6}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 143
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_0
    new-instance v2, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/FragmentNotification_Pager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->adapter:Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;

    .line 156
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->adapter:Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 157
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 158
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 160
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    iget-object v3, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v5}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    .line 162
    invoke-direct {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->setPageSelection()V

    .line 164
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 165
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setDividerColor(I)V

    .line 168
    iget-object v2, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {v2, p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 170
    new-instance v2, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;-><init>(Lae/gov/mol/fragment/FragmentNotification_Pager;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/FragmentNotification_Pager$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    return-void

    .line 147
    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    :cond_1
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f090244

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v6}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 148
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f090245

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7, v8}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 151
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 282
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 287
    if-nez p3, :cond_1

    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPublicNotification:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/FragmentPublicNotification;->updateList(Ljava/util/ArrayList;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->isFirst:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->isFirst:Ljava/lang/Boolean;

    .line 292
    :cond_1
    return-void

    .line 290
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "Position"    # I

    .prologue
    .line 297
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    if-nez p1, :cond_0

    .line 300
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPrivateNotification:Lae/gov/mol/fragment/FragmentPrivateNotification;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPrivateNotificationVos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/FragmentPrivateNotification;->updateList(Ljava/util/ArrayList;)V

    .line 315
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPublicNotification:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/FragmentPublicNotification;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 308
    :cond_1
    if-nez p1, :cond_2

    .line 309
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPublicNotification:Lae/gov/mol/fragment/FragmentPublicNotification;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPublicNotificationVos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/FragmentPublicNotification;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPrivateNotification:Lae/gov/mol/fragment/FragmentPrivateNotification;

    iget-object v1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mArrayListPrivateNotificationVos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/FragmentPrivateNotification;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 260
    invoke-virtual {p0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 261
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f06006b

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 262
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 263
    if-eqz p2, :cond_0

    .line 264
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 265
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 267
    return-void
.end method
