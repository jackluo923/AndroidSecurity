.class final Lcom/alipay/pushsdk/b/f;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/b/e;

.field private final synthetic b:Lcom/alipay/pushsdk/b/b;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/b/e;Lcom/alipay/pushsdk/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/b/f;->a:Lcom/alipay/pushsdk/b/e;

    iput-object p2, p0, Lcom/alipay/pushsdk/b/f;->b:Lcom/alipay/pushsdk/b/b;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 47
    :try_start_0
    new-instance v1, Lcom/alipay/pushsdk/b/a;

    iget-object v2, p0, Lcom/alipay/pushsdk/b/f;->b:Lcom/alipay/pushsdk/b/b;

    .line 50
    invoke-virtual {v2}, Lcom/alipay/pushsdk/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/b/f;->a:Lcom/alipay/pushsdk/b/e;

    invoke-static {v3}, Lcom/alipay/pushsdk/b/e;->a(Lcom/alipay/pushsdk/b/e;)Landroid/content/Context;

    move-result-object v3

    .line 49
    invoke-direct {v1, v2, v3}, Lcom/alipay/pushsdk/b/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 52
    iget-object v2, p0, Lcom/alipay/pushsdk/b/f;->b:Lcom/alipay/pushsdk/b/b;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/b/b;->b()Ljava/lang/Object;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/alipay/pushsdk/b/f;->b:Lcom/alipay/pushsdk/b/b;

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/b/b;->b(Ljava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/alipay/pushsdk/b/f;->b:Lcom/alipay/pushsdk/b/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/b/b;->a(I)V

    .line 70
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/alipay/pushsdk/b/f;->b:Lcom/alipay/pushsdk/b/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/b/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 64
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string/jumbo v2, "AlipayPush_HttpManager"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/alipay/pushsdk/b/f;->b:Lcom/alipay/pushsdk/b/b;

    invoke-virtual {v1, v5}, Lcom/alipay/pushsdk/b/b;->a(I)V

    goto :goto_0
.end method
