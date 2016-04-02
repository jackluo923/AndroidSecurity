.class final Lcom/viewpagerindicator/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/UnderlinePageIndicator;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->a(Lcom/viewpagerindicator/UnderlinePageIndicator;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->b(Lcom/viewpagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->c(Lcom/viewpagerindicator/UnderlinePageIndicator;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->b(Lcom/viewpagerindicator/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-virtual {v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->invalidate()V

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Lcom/viewpagerindicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
