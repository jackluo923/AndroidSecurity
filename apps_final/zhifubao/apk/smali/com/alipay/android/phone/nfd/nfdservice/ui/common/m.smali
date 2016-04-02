.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

.field private b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService$Stub;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/n;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/n;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final connectTargetAP(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;)I
    .locals 9

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "connectTargetAP request: networkId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mNetworkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " passwd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Parameter \"nfdWifiRequest\" can\'t be null"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v4, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Parameter \"nfdWifiId.mac\" can\'t be empty"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->f()V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v0

    iget-object v4, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "accessPoint not exist. mac=["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] networkId=["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mNetworkId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    if-nez v0, :cond_8

    move v0, v1

    goto/16 :goto_0

    :cond_8
    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mIdentity:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->e()V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "request.mForgetConfigured:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mForgetConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") accessPoint.networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mForgetConfigured:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "request to connect currently active network case"

    invoke-static {v1, v4}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;Z)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;Z)V

    :cond_9
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "removeNetwork(id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v4}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;->mSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0xbb8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v5

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "saveConfiguration() invoked ret:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    const/4 v1, -0x1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;->f:I

    :cond_b
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    goto/16 :goto_0
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->d()V

    return-void
.end method

.method public final getReachableNfdWifiList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ILightBizNfdService.getReachableNfdWifiList() return as mWifiHelper null"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/m;->b:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ILightBizNfdService.getReachableNfdWifiList() return "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    new-instance v4, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    invoke-direct {v4}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;-><init>()V

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/a;->a(Landroid/net/wifi/WifiManager;Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;-><init>()V

    iput-object v0, v4, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final notifyCertStatusChanged(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final registerNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final unregisterNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
