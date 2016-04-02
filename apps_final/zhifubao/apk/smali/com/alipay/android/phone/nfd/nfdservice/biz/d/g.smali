.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;

.field private final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;->c:Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/g;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->g(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdQueryWifiDataCallback;->onQueryWifiDataCallback(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdQueryWifiDataResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "WifiSsidUpdateServiceImpl"

    const-string/jumbo v2, "queryWifiData timeout callback Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
