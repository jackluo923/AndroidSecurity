.class Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$3;
.super Ljava/lang/Object;
.source "PagerSlidingTabStripExpiredLabourCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->addIconTab(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$3;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iput p2, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$3;->val$position:I

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$3;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$3(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$3;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 307
    return-void
.end method
