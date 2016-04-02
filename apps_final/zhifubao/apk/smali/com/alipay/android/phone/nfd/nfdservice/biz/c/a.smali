.class public final Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;
.super Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/http/HttpManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HttpTransportSeviceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[HttpTransportSeviceImpl#execute] Request Class =["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HttpTransportSeviceImpl"

    const-string/jumbo v1, "event=[HttpTransportSeviceImpl#onCreate]"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final onDestroy(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/a;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->close()V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HttpTransportSeviceImpl"

    const-string/jumbo v1, "event=[HttpTransportSeviceImpl#onDestroy]"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
