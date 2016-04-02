.class final Lcom/viewpagerindicator/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viewpagerindicator/UnderlinePageIndicator;


# direct methods
.method constructor <init>(Lcom/viewpagerindicator/UnderlinePageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/viewpagerindicator/q;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/viewpagerindicator/q;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/UnderlinePageIndicator;->a(Lcom/viewpagerindicator/UnderlinePageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viewpagerindicator/q;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    iget-object v1, p0, Lcom/viewpagerindicator/q;->a:Lcom/viewpagerindicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->d(Lcom/viewpagerindicator/UnderlinePageIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
