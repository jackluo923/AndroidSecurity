.class public final Lcom/alipay/pushsdk/push/e;
.super Ljava/lang/Object;
.source "NotificationService.java"


# instance fields
.field public a:I

.field final synthetic b:Lcom/alipay/pushsdk/push/NotificationService;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/push/NotificationService;)V
    .locals 1

    .prologue
    .line 455
    iput-object p1, p0, Lcom/alipay/pushsdk/push/e;->b:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/push/e;->a:I

    .line 457
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 469
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e;->b:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/e;

    move-result-object v1

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/e;->b:Lcom/alipay/pushsdk/push/NotificationService;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/NotificationService;->c()Lcom/alipay/pushsdk/push/e;

    move-result-object v0

    iget v2, v0, Lcom/alipay/pushsdk/push/e;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/alipay/pushsdk/push/e;->a:I

    .line 471
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x4

    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Decremented task count to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/alipay/pushsdk/push/e;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
