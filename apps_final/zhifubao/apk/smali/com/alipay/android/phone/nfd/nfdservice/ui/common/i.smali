.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DetectorTask#run"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DetectorTask#run\u3002time consume=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/CommonUtils;->isWifiActiveNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/CaptivePortalUtil;->isCaptivePortal()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/i;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
