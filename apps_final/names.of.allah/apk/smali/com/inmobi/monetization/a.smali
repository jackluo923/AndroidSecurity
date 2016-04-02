.class Lcom/inmobi/monetization/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMNative;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMNative;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeRequestFailed(Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->f:Lcom/inmobi/monetization/IMNative$a;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;Lcom/inmobi/monetization/IMNative$a;)V

    iget-object v0, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->e(Lcom/inmobi/monetization/IMNative;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/monetization/a$a;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/monetization/a$a;-><init>(Lcom/inmobi/monetization/a;Lcom/inmobi/monetization/IMErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to give callback"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->c:Lcom/inmobi/monetization/IMNative$a;

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;Lcom/inmobi/monetization/IMNative$a;)V

    iget-object v0, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {p1}, Lcom/inmobi/monetization/IMNative;->c(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {p1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->b(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {p1}, Lcom/inmobi/monetization/IMNative;->b(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->c(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative;Z)Z

    iget-object v0, p0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->e(Lcom/inmobi/monetization/IMNative;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/monetization/a$b;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/a$b;-><init>(Lcom/inmobi/monetization/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to give callback"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
