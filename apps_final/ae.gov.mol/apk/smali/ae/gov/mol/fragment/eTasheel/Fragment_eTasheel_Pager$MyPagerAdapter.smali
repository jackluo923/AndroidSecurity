.class public Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "Fragment_eTasheel_Pager.java"

# interfaces
.implements Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;
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

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 226
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    .line 227
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    .line 228
    return-void
.end method

.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
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
    .line 221
    .local p3, "mIconTabVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-direct {p0, p1, p2}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;Landroid/support/v4/app/FragmentManager;)V

    .line 222
    iput-object p3, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    .line 224
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 246
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    if-nez p1, :cond_0

    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 249
    :cond_0
    if-ne p1, v2, :cond_1

    .line 250
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    if-ne p1, v3, :cond_2

    .line 252
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eNetwasal:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eServices:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_3
    if-nez p1, :cond_4

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eServices:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$3(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServices;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_4
    if-ne p1, v2, :cond_5

    .line 261
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_eNetwasal:Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$2(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/Fragment_eNetwasal;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_5
    if-ne p1, v3, :cond_6

    .line 263
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Pending_Transaction:Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$1(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/PendingTransaction/Fragment_Pending_Transaction;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;

    # getter for: Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->mFragment_Recent_Transactions:Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;->access$0(Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager;)Lae/gov/mol/fragment/eTasheel/RecentTransaction/Fragment_Recent_Transactions;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 231
    const/4 v0, -0x2

    return v0
.end method

.method public getPageIconHoverResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

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
    .line 274
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

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
    .line 236
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/Fragment_eTasheel_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/IconTabVo;

    invoke-virtual {v0}, Lae/gov/mol/helper/IconTabVo;->getmTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
