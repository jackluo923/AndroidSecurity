.class public final Lcom/alipay/pushsdk/push/e/c;
.super Lcom/alipay/pushsdk/push/e/d;
.source "SysTriggerRestart.java"


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/e/d;-><init>(Lcom/alipay/pushsdk/push/l;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/c;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/c;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->b()V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "80"

    .line 36
    const-string/jumbo v2, "1"

    .line 32
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e/c;->a:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->r()V

    .line 41
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/e/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "81"

    .line 44
    const-string/jumbo v2, "8"

    .line 40
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
