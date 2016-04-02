.class final Lcom/alipay/pushsdk/push/a;
.super Ljava/lang/Object;
.source "ClientActionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/ClientActionReceiver;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/ClientActionReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/alipay/pushsdk/push/a;->a:Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p2, p0, Lcom/alipay/pushsdk/push/a;->b:Ljava/lang/String;

    .line 476
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/a;->a:Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-static {v0}, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a(Lcom/alipay/pushsdk/push/ClientActionReceiver;)Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->d()Lcom/alipay/pushsdk/push/l;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/alipay/pushsdk/push/a;->b:Ljava/lang/String;

    .line 481
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/e/e;->a(Lcom/alipay/pushsdk/push/l;Ljava/lang/String;)Lcom/alipay/pushsdk/push/e/d;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/e/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 490
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-static {}, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
