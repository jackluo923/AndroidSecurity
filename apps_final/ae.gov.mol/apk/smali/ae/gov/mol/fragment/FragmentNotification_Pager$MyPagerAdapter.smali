.class public Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FragmentNotification_Pager.java"

# interfaces
.implements Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/FragmentNotification_Pager;
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

.field final synthetic this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/FragmentNotification_Pager;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 203
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    .line 204
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    .line 205
    return-void
.end method

.method public constructor <init>(Lae/gov/mol/fragment/FragmentNotification_Pager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
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
    .line 199
    .local p3, "mIconTabVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-direct {p0, p1, p2}, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/FragmentNotification_Pager;Landroid/support/v4/app/FragmentManager;)V

    .line 200
    iput-object p3, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    .line 202
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 225
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    if-nez p1, :cond_0

    .line 228
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPrivateNotification:Lae/gov/mol/fragment/FragmentPrivateNotification;

    .line 242
    :goto_0
    return-object v0

    .line 229
    :cond_0
    if-ne p1, v2, :cond_3

    .line 230
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPublicNotification:Lae/gov/mol/fragment/FragmentPublicNotification;

    goto :goto_0

    .line 235
    :cond_1
    if-nez p1, :cond_2

    .line 236
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPublicNotification:Lae/gov/mol/fragment/FragmentPublicNotification;

    goto :goto_0

    .line 237
    :cond_2
    if-ne p1, v2, :cond_3

    .line 238
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/FragmentNotification_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/FragmentNotification_Pager;->mFragmentPrivateNotification:Lae/gov/mol/fragment/FragmentPrivateNotification;

    goto :goto_0

    .line 242
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 208
    const/4 v0, -0x2

    return v0
.end method

.method public getPageIconHoverResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

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
    .line 247
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

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
    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentNotification_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/IconTabVo;

    invoke-virtual {v0}, Lae/gov/mol/helper/IconTabVo;->getmTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
