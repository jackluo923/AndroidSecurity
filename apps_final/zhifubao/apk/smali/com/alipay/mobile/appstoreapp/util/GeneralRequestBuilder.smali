.class public Lcom/alipay/mobile/appstoreapp/util/GeneralRequestBuilder;
.super Ljava/lang/Object;
.source "GeneralRequestBuilder.java"


# direct methods
.method public static a(Ljava/util/List;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;-><init>()V

    .line 48
    const-string/jumbo v2, "Android"

    iput-object v2, v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->platform:Ljava/lang/String;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->resolution:Ljava/lang/String;

    .line 50
    iput-object p0, v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->myAppIds:Ljava/util/List;

    .line 51
    return-object v1
.end method

.method public static a()Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;
    .locals 4

    .prologue
    .line 17
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;-><init>()V

    .line 21
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->channel:Ljava/lang/String;

    .line 22
    const-string/jumbo v3, "Android"

    iput-object v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->platform:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmSystemVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->platformVersion:Ljava/lang/String;

    .line 24
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->productID:Ljava/lang/String;

    .line 25
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->productVersion:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->resolution:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->userAgent:Ljava/lang/String;

    .line 28
    return-object v2
.end method
