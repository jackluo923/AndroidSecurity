.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncUpdateSsidInfos start"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->e(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->f(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v3, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)I

    move-result v0

    const-string/jumbo v3, "WifiSsidUpdateServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "syncUpdateSsidInfos size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    long-to-int v1, v1

    invoke-static {v3, v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C35(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncUpdateSsidInfos end"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->d(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C35(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "syncUpdateSsidInfos doSyncWifiSsidInfo Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "syncUpdateSsidInfos end"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "syncUpdateSsidInfos end"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
