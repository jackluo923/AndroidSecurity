.class Lcom/inmobi/monetization/internal/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/TrackerView;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/TrackerView;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Native ad context code loaded"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/TrackerView;->a(Lcom/inmobi/monetization/internal/TrackerView;Z)Z

    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/TrackerView;->a(Lcom/inmobi/monetization/internal/TrackerView;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/TrackerView;->a(Lcom/inmobi/monetization/internal/TrackerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/TrackerView;->a(Lcom/inmobi/monetization/internal/TrackerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/TrackerView;->a(Lcom/inmobi/monetization/internal/TrackerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/inmobi/monetization/internal/TrackerView;->injectJavaScript(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/TrackerView;->a(Lcom/inmobi/monetization/internal/TrackerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/inmobi/monetization/internal/a;->a:Lcom/inmobi/monetization/internal/TrackerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/TrackerView;->a(Lcom/inmobi/monetization/internal/TrackerView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
