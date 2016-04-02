.class public Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "Fragment_ContactUs_Pager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private final TITLES:[Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;Landroid/support/v4/app/FragmentManager;)V
    .locals 7
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    const v6, 0x7f0900a2

    const v5, 0x7f0900a0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    .line 128
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 129
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p1, v6}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v5}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->TITLES:[Ljava/lang/String;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p1, v5}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v6}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->TITLES:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->TITLES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 154
    invoke-static {}, Lae/gov/mol/MolApplication;->getApplicationLanguageAR_EN()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    if-nez p1, :cond_0

    .line 156
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentOffice:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    .line 165
    :goto_0
    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentContactUsNearBy:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    goto :goto_0

    .line 161
    :cond_1
    if-nez p1, :cond_2

    .line 162
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentContactUsNearBy:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->mFragmentOffice:Lae/gov/mol/fragment/ContactUs/FragmentOffice;

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 139
    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$MyPagerAdapter;->TITLES:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
