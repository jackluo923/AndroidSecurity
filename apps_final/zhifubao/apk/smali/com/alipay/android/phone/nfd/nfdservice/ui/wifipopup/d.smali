.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener$Stub;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)V

    return-void
.end method


# virtual methods
.method public final onReachableWifiListUpdated(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "WifiPopupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReachableWifiListUpdated updateType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/WifiPopupView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Ljava/util/List;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    move-result-object v0

    const-string/jumbo v1, "WifiPopupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "newInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    goto :goto_0
.end method
