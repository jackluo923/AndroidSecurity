.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;ZLcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    iput-boolean p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->b:Z

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string/jumbo v0, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v1, "queryWifiDataAsync start"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;

    invoke-direct {v1, p0, v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    iget-boolean v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->b:Z

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Z)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->h(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;->onQueryWifiDataCallback(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "queryWifiData Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
