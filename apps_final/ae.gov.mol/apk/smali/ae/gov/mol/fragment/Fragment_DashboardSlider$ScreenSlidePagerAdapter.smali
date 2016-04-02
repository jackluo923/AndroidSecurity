.class Lae/gov/mol/fragment/Fragment_DashboardSlider$ScreenSlidePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "Fragment_DashboardSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/Fragment_DashboardSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenSlidePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 195
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$ScreenSlidePagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    .line 196
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 197
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$ScreenSlidePagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    # getter for: Lae/gov/mol/fragment/Fragment_DashboardSlider;->NUM_PAGES:I
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->access$0(Lae/gov/mol/fragment/Fragment_DashboardSlider;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$ScreenSlidePagerAdapter;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    iput p1, v0, Lae/gov/mol/fragment/Fragment_DashboardSlider;->Position:I

    .line 202
    invoke-static {p1}, Lae/gov/mol/fragment/Fragment_Dashboard;->create(I)Lae/gov/mol/fragment/Fragment_Dashboard;

    move-result-object v0

    return-object v0
.end method
