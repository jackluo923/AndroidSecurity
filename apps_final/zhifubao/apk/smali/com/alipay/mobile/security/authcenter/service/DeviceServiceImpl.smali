.class public Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/DeviceService;


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/alipay/mobile/framework/service/ext/security/DeviceCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;-><init>()V

    const-string/jumbo v0, "DeviceServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDeviceInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "walletTid"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DeviceServiceImpl"

    const-string/jumbo v2, "\u4fdd\u5b58did\u5b8c\u6210 "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public genTid(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/SecurityInitService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/SecurityInitService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/SecurityInitService;->copyMspTidToWalletId()V

    const/4 v0, 0x0

    return v0
.end method

.method public generateDid(Lcom/alipay/mobile/framework/service/ext/security/DeviceCallBack;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceCallBack;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "DeviceServiceImpl"

    const-string/jumbo v2, "\u5f00\u59cb\u751f\u6210did requestGenerateDid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->genTid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->refleshClientKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->genTid(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/security/authcenter/msp/QueryMspCertification;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/authcenter/msp/QueryMspCertification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/msp/QueryMspCertification;->queryMspTid()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;
    .locals 3

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "walletTid"

    invoke-static {v1, v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityShareStore;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->setWalletTid(Ljava/lang/String;)V

    return-object v0
.end method
