.class Lae/gov/mol/helper/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/PagerSlidingTabStrip;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lae/gov/mol/helper/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip$2;->this$0:Lae/gov/mol/helper/PagerSlidingTabStrip;

    iput p2, p0, Lae/gov/mol/helper/PagerSlidingTabStrip$2;->val$position:I

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStrip$2;->this$0:Lae/gov/mol/helper/PagerSlidingTabStrip;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lae/gov/mol/helper/PagerSlidingTabStrip;->access$3(Lae/gov/mol/helper/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStrip$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 306
    return-void
.end method
