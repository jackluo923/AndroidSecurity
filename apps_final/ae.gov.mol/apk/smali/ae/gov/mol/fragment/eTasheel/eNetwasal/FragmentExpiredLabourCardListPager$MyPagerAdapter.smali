.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FragmentExpiredLabourCardListPager.java"

# interfaces
.implements Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mIconTabVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/helper/IconTabVo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 367
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    .line 368
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    .line 369
    return-void
.end method

.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/helper/IconTabVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "mIconTabVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-direct {p0, p1, p2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;Landroid/support/v4/app/FragmentManager;)V

    .line 364
    iput-object p3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    .line 366
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 388
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    if-nez p1, :cond_0

    .line 390
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_3:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    .line 391
    :cond_0
    if-ne p1, v2, :cond_1

    .line 392
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_2:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_2
    if-nez p1, :cond_3

    .line 398
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_3
    if-ne p1, v2, :cond_4

    .line 400
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_2:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$5(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->mFragmentExpiredLabourCardList_3:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;->access$4(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager;)Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardList;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 372
    const/4 v0, -0x2

    return v0
.end method

.method public getPageIconHoverResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/IconTabVo;

    invoke-virtual {v0}, Lae/gov/mol/helper/IconTabVo;->getmResHoverId()I

    move-result v0

    return v0
.end method

.method public getPageIconResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/IconTabVo;

    invoke-virtual {v0}, Lae/gov/mol/helper/IconTabVo;->getmResId()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentExpiredLabourCardListPager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/IconTabVo;

    invoke-virtual {v0}, Lae/gov/mol/helper/IconTabVo;->getmTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
