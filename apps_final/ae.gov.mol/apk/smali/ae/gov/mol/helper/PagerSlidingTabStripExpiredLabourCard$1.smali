.class Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStripExpiredLabourCard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 242
    :goto_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$3(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$0(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;I)V

    .line 243
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    iget-object v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->currentPosition:I
    invoke-static {v1}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$4(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->access$2(Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;II)V

    .line 244
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard$1;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;

    invoke-virtual {v0}, Lae/gov/mol/helper/PagerSlidingTabStripExpiredLabourCard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
