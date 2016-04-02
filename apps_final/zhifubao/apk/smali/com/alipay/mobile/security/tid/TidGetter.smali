.class public Lcom/alipay/mobile/security/tid/TidGetter;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/security/tid/TidGetter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/tid/TidGetter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/mobile/security/tid/TidGetter;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-void
.end method

.method private a()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 3

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/tid/TidGetter;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "isUpdateAutoLoginKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/security/tid/TidGetter;->a()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/tid/TidGetter;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/tid/TidGetter;->a()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    goto :goto_0
.end method
