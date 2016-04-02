.class public Lae/gov/mol/fragment/Fragment_DashboardSlider;
.super Lae/gov/mol/helper/CustomFragment;
.source "Fragment_DashboardSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/fragment/Fragment_DashboardSlider$ScreenSlidePagerAdapter;
    }
.end annotation


# static fields
.field public static final PAGE_COUNT:Ljava/lang/String; = "Pages"

.field public static final POSITION:Ljava/lang/String; = "Position"

.field private static mPager:Landroid/support/v4/view/ViewPager;


# instance fields
.field private NUM_PAGES:I

.field private POS:I

.field Position:I

.field mImageViewHeaderHome:Landroid/widget/ImageView;

.field mLinearLayoutPendingTrans:Landroid/widget/LinearLayout;

.field mLinearLayoutRecentTrans:Landroid/widget/LinearLayout;

.field mLinearLayouteNatwasal:Landroid/widget/LinearLayout;

.field mLinearLayoutmService:Landroid/widget/LinearLayout;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field mScrollViewParent:Landroid/widget/ScrollView;

.field molFragmentActivity:Lae/gov/mol/MolFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lae/gov/mol/helper/CustomFragment;-><init>()V

    .line 42
    iput v0, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->NUM_PAGES:I

    .line 45
    iput v0, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->POS:I

    .line 54
    iput v0, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->Position:I

    .line 37
    return-void
.end method

.method public static SetHeight(I)V
    .locals 1
    .param p0, "height"    # I

    .prologue
    .line 229
    sget-object v0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/Fragment_DashboardSlider;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->NUM_PAGES:I

    return v0
.end method

.method static synthetic access$1()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected ShoweTasheelPager(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 218
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    invoke-virtual {v1}, Lae/gov/mol/MolFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "FRAGMENT_SELECTED_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lae/gov/mol/MolApplication;->mCompanyList:Ljava/util/ArrayList;

    sget-object v3, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lae/gov/mol/helper/CustomFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lae/gov/mol/MolFragmentActivity;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->molFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    .line 76
    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "mBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 78
    const-string v1, "Pages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->NUM_PAGES:I

    .line 79
    const-string v1, "Position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->POS:I

    .line 81
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedinstance"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const v1, 0x7f03004e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f060758

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09007f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 89
    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    sput-object v1, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;

    .line 91
    const v1, 0x7f060204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mScrollViewParent:Landroid/widget/ScrollView;

    .line 92
    const v1, 0x7f06020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mLinearLayouteNatwasal:Landroid/widget/LinearLayout;

    .line 93
    const v1, 0x7f060207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mLinearLayoutmService:Landroid/widget/LinearLayout;

    .line 94
    const v1, 0x7f060211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mLinearLayoutRecentTrans:Landroid/widget/LinearLayout;

    .line 95
    const v1, 0x7f06020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mLinearLayoutPendingTrans:Landroid/widget/LinearLayout;

    .line 98
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mLinearLayouteNatwasal:Landroid/widget/LinearLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_DashboardSlider$1;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider$1;-><init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mLinearLayoutmService:Landroid/widget/LinearLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_DashboardSlider$2;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider$2;-><init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mLinearLayoutRecentTrans:Landroid/widget/LinearLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_DashboardSlider$3;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider$3;-><init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mLinearLayoutPendingTrans:Landroid/widget/LinearLayout;

    new-instance v2, Lae/gov/mol/fragment/Fragment_DashboardSlider$4;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider$4;-><init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance v1, Lae/gov/mol/fragment/Fragment_DashboardSlider$ScreenSlidePagerAdapter;

    invoke-virtual {p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lae/gov/mol/fragment/Fragment_DashboardSlider$ScreenSlidePagerAdapter;-><init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 131
    sget-object v1, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 132
    sget-object v1, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lae/gov/mol/fragment/Fragment_DashboardSlider$5;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider$5;-><init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 141
    sget-object v1, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->POS:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 143
    sget-object v1, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;-><init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    const v1, 0x7f060757

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mImageViewHeaderHome:Landroid/widget/ImageView;

    .line 179
    iget-object v1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mImageViewHeaderHome:Landroid/widget/ImageView;

    new-instance v2, Lae/gov/mol/fragment/Fragment_DashboardSlider$7;

    invoke-direct {v2, p0}, Lae/gov/mol/fragment/Fragment_DashboardSlider$7;-><init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-object v0
.end method
