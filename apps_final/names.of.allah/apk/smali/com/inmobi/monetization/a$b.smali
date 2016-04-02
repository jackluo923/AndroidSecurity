.class Lcom/inmobi/monetization/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/a;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/a$b;->a:Lcom/inmobi/monetization/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/a$b;->a:Lcom/inmobi/monetization/a;

    iget-object v0, v0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->d(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/a$b;->a:Lcom/inmobi/monetization/a;

    iget-object v0, v0, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-static {v0}, Lcom/inmobi/monetization/IMNative;->d(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/a$b;->a:Lcom/inmobi/monetization/a;

    iget-object v1, v1, Lcom/inmobi/monetization/a;->a:Lcom/inmobi/monetization/IMNative;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMNativeListener;->onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Failed to give callback"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
