.class final Lcom/alipay/pushsdk/push/c;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/NotificationService;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/c;->a:Lcom/alipay/pushsdk/push/NotificationService;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 297
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x4

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "configRequest will be delayed 1000s."

    .line 298
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_1
    :goto_0
    new-instance v0, Lcom/alipay/pushsdk/a/a;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/c;->a:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {v1}, Lcom/alipay/pushsdk/push/NotificationService;->a(Lcom/alipay/pushsdk/push/NotificationService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/a/a;-><init>(Landroid/content/Context;)V

    .line 311
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/a/a;->a(Ljava/lang/String;)V

    .line 312
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 304
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
