.class public Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "Fragment_Labour_Services_Pager.java"

# interfaces
.implements Lae/gov/mol/helper/PagerSlidingTabStrip$IconTextTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;
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

.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 249
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    .line 250
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    .line 251
    return-void
.end method

.method public constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
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
    .line 245
    .local p3, "mIconTabVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/helper/IconTabVo;>;"
    invoke-direct {p0, p1, p2}, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;-><init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;Landroid/support/v4/app/FragmentManager;)V

    .line 246
    iput-object p3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    .line 248
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

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

    .line 271
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    if-nez p1, :cond_0

    .line 274
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_MyContact:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    .line 291
    :goto_0
    return-object v0

    .line 275
    :cond_0
    if-ne p1, v2, :cond_1

    .line 276
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_MySalary:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    goto :goto_0

    .line 277
    :cond_1
    if-ne p1, v3, :cond_2

    .line 278
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragmentLabourLaw:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    goto :goto_0

    .line 284
    :cond_3
    if-nez p1, :cond_4

    .line 285
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragmentLabourLaw:Lae/gov/mol/fragment/LabourServices/FragmentLabourLaw;

    goto :goto_0

    .line 286
    :cond_4
    if-ne p1, v2, :cond_5

    .line 287
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_FAQ:Lae/gov/mol/fragment/LabourServices/FragmentFAQ;

    goto :goto_0

    .line 288
    :cond_5
    if-ne p1, v3, :cond_6

    .line 289
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_MySalary:Lae/gov/mol/fragment/LabourServices/FragmentMySalary;

    goto :goto_0

    .line 291
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->mFragment_MyContact:Lae/gov/mol/fragment/LabourServices/FragmentMyContract;

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 254
    const/4 v0, -0x2

    return v0
.end method

.method public getPageIconHoverResId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

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
    .line 298
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

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
    .line 260
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$MyPagerAdapter;->mIconTabVos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/gov/mol/helper/IconTabVo;

    invoke-virtual {v0}, Lae/gov/mol/helper/IconTabVo;->getmTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
