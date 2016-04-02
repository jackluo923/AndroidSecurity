.class public final Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "NotificationUtils"

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u7531"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const-string/jumbo v0, "\u7b49"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u63d0\u4f9b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdNetWorkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;->a:Ljava/lang/String;

    const-string/jumbo v1, "WIFI has connected,not allowed to send P1 notification"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    const-string/jumbo v3, ""

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v1

    move-object v1, v3

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->storeName:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    const-string/jumbo v3, "\u53d1\u73b0\u514d\u8d39Wi-Fi\uff0c\u70b9\u6b64\u4e0a\u7f51"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    goto :goto_0

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget v3, v3, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->signalLevel:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    const-string/jumbo v5, "3"

    iget-object v6, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v6, v6, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->matchType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "4"

    iget-object v6, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v6, v6, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->matchType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, v2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v3, v3, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->storeName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_b
    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a()V

    goto/16 :goto_0
.end method

.method public static final a(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnectedAndCerted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->cooperationType:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Wi-Fi\u5df2\u8fde\u63a5\uff0c\u53ef\u4ee5\u514d\u8d39\u4e0a\u7f51\u5566"

    const-string/jumbo v1, "4"

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v3, v3, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->certType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "ChinaNet\u5df2\u8fde\u63a5"

    move-object v1, v0

    :goto_0
    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v4, v4, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->storeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6b22\u8fce\u4f60"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v5, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    move v0, v2

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnectedAndNoCert()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->certStatus:I

    if-ne v0, v5, :cond_3

    :cond_2
    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    const-string/jumbo v1, "Wi-Fi\u9700\u8981\u8ba4\u8bc1\uff0c\u70b9\u6b64\u4e0a\u7f51"

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiStoreInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;

    iget-object v3, v3, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiStoreInfo;->storeName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method
