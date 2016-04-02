.class public Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;
.super Lae/gov/mol/helper/CustomFragmentActivity;
.source "Fragment_Labour_Services_Pager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;,
        Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;
    }
.end annotation


# static fields
.field public static final FAQ:I = 0x2

.field public static final KEY:Ljava/lang/String; = "pageindex"

.field public static final LABOURLAW:I = 0x3

.field public static final MYCONTRACT:I = 0x1

.field public static final MYSALARY:I


# instance fields
.field private adapter:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;

.field currentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

.field height:I

.field isFirst:Ljava/lang/Boolean;

.field mBackProcess:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;

.field mFaqVo:Lae/gov/mol/vo/FaqVo;

.field mFragmentLabourLaw:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

.field mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

.field mFragment_MyContact:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

.field mFragment_MySalary:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

.field mImageViewHeader:Landroid/widget/ImageView;

.field mPostParseGet:Lae/gov/mol/helper/PostParseGet;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mRelativeLayout:Landroid/widget/RelativeLayout;

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

    .line 43
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragmentActivity;-><init>()V

    .line 53
    iput v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pageindex:I

    .line 57
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->isFirst:Ljava/lang/Boolean;

    .line 58
    iput v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->height:I

    .line 59
    iput v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->width:I

    .line 43
    return-void
.end method

.method private ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->currentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 178
    const v2, 0x7f09025e

    new-instance v3, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$2;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$2;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 188
    const v2, 0x7f09025f

    new-instance v3, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$3;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$3;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 198
    return-void
.end method

.method private setPageSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 202
    iget v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pageindex:I

    if-nez v0, :cond_2

    .line 203
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 210
    :cond_2
    iget v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pageindex:I

    if-ne v0, v2, :cond_4

    .line 211
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 219
    :cond_4
    iget v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pageindex:I

    if-ne v0, v3, :cond_6

    .line 220
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 223
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 225
    :cond_6
    iget v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pageindex:I

    if-ne v0, v4, :cond_0

    .line 226
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 229
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method


# virtual methods
.method public GetDeviceHeight()V
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 423
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 425
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->width:I

    .line 426
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->height:I

    .line 427
    iget v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->height:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->height:I

    .line 428
    return-void
.end method

.method public finishFragmentOrActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 324
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f020123

    const v8, 0x7f020122

    const v7, 0x7f020117

    const v6, 0x7f020116

    const/4 v5, 0x0

    .line 86
    iput-object p0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->currentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    .line 88
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v2, 0x7f030097

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->GetDeviceHeight()V

    .line 92
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pageindex"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pageindex:I

    .line 95
    :cond_0
    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 96
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f060758

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mTextViewHeader:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f060757

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mImageViewHeader:Landroid/widget/ImageView;

    .line 98
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mImageViewHeader:Landroid/widget/ImageView;

    new-instance v3, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$1;

    invoke-direct {v3, p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$1;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mTextViewHeader:Landroid/widget/TextView;

    const v3, 0x7f09008e

    invoke-virtual {p0, v3}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v2, Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/gov/mol/webservices/WebServiceResponse;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    .line 108
    new-instance v2, Lae/gov/mol/helper/PostParseGet;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/gov/mol/helper/PostParseGet;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mPostParseGet:Lae/gov/mol/helper/PostParseGet;

    .line 109
    new-instance v2, Lae/gov/mol/vo/FaqVo;

    invoke-direct {v2}, Lae/gov/mol/vo/FaqVo;-><init>()V

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    .line 111
    invoke-static {}, Lae/gov/mol/fragment/LabourServices/FragmentMySalary;->newInstance()Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_MySalary:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    .line 112
    invoke-static {}, Lae/gov/mol/fragment/LabourServices/FragmentMyContract;->newInstance()Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_MyContact:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    .line 113
    invoke-static {}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->newInstance()Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    .line 114
    invoke-static {}, Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;->newInstance()Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    move-result-object v2

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragmentLabourLaw:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    .line 116
    const v2, 0x7f060069

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lae/gov/mol/helper/PagerSlidingTabStrip;

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    .line 117
    const v2, 0x7f06006a

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "mArrayListIconTabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f0901df

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6, v7}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 125
    .local v1, "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901de

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013d

    const v4, 0x7f02013e

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 128
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901e0

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8, v9}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 133
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901e1

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02012a

    const v4, 0x7f02012b

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 137
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_0
    new-instance v2, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->adapter:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;

    .line 155
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->adapter:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 156
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 157
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 159
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v5}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    .line 161
    invoke-direct {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->setPageSelection()V

    .line 163
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 164
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setDividerColor(I)V

    .line 167
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStrip;

    invoke-virtual {v2, p0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 169
    new-instance v2, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$BackProcess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    return-void

    .line 140
    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    :cond_1
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    const v2, 0x7f0901e1

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02012a

    const v4, 0x7f02012b

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 141
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901e0

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8, v9}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 144
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901de

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02013d

    const v4, 0x7f02013e

    invoke-direct {v1, v2, v3, v4}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 148
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lae/gov/mol/helper/IconTabVo;

    .end local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    const v2, 0x7f0901df

    invoke-virtual {p0, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6, v7}, Lae/gov/mol/helper/IconTabVo;-><init>(Ljava/lang/String;II)V

    .line 151
    .restart local v1    # "mIconTabVo":Lae/gov/mol/helper/IconTabVo;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 333
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 338
    if-nez p3, :cond_0

    .line 339
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->updateView(Lae/gov/mol/vo/FaqVo;)V

    .line 343
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "Position"    # I

    .prologue
    const/4 v2, 0x2

    .line 348
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    if-ne p1, v2, :cond_1

    .line 351
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->updateView(Lae/gov/mol/vo/FaqVo;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    if-eqz p1, :cond_0

    goto :goto_0

    .line 362
    :cond_2
    if-ne p1, v2, :cond_3

    .line 363
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFaqVo:Lae/gov/mol/vo/FaqVo;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/LabourServices/FragmentFAQ;->updateView(Lae/gov/mol/vo/FaqVo;)V

    goto :goto_0

    .line 365
    :cond_3
    if-eqz p1, :cond_0

    goto :goto_0
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;ZI)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "addToBackStack"    # Z
    .param p3, "transition"    # I

    .prologue
    .line 311
    invoke-virtual {p0}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 312
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f06006b

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 313
    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 314
    if-eqz p2, :cond_0

    .line 315
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 316
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 318
    return-void
.end method
