.class Lae/gov/mol/helper/PagerSlidingTabStripContect$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStripContect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/PagerSlidingTabStripContect;->addTextTab(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lae/gov/mol/helper/PagerSlidingTabStripContect;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$2;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    iput p2, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$2;->val$position:I

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$2;->this$0:Lae/gov/mol/helper/PagerSlidingTabStripContect;

    # getter for: Lae/gov/mol/helper/PagerSlidingTabStripContect;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->access$3(Lae/gov/mol/helper/PagerSlidingTabStripContect;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lae/gov/mol/helper/PagerSlidingTabStripContect$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 281
    return-void
.end method
