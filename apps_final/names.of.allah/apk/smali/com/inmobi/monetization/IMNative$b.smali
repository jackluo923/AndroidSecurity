.class Lcom/inmobi/monetization/IMNative$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/inmobi/monetization/IMNative;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMNative;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMNative$b;->b:Lcom/inmobi/monetization/IMNative;

    iput-object p2, p0, Lcom/inmobi/monetization/IMNative$b;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$b;->b:Lcom/inmobi/monetization/IMNative;

    new-instance v1, Lcom/inmobi/monetization/internal/TrackerView;

    iget-object v2, p0, Lcom/inmobi/monetization/IMNative$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/monetization/IMNative$b;->b:Lcom/inmobi/monetization/IMNative;

    invoke-static {v3}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/monetization/IMNative$b;->b:Lcom/inmobi/monetization/IMNative;

    invoke-static {v4}, Lcom/inmobi/monetization/IMNative;->b(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/inmobi/monetization/internal/TrackerView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$b;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative$b;->b:Lcom/inmobi/monetization/IMNative;

    iget-object v1, v1, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to attach the view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/inmobi/monetization/IMNative$b;->b:Lcom/inmobi/monetization/IMNative;

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->f:Lcom/inmobi/monetization/IMNative$a;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;Lcom/inmobi/monetization/IMNative$a;)V

    goto :goto_0
.end method
