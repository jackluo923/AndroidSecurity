.class public Lcom/alipay/mobile/security/authcenter/msp/QueryMspCertification;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "QueryMspCertification"

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/msp/QueryMspCertification;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/msp/QueryMspCertification;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public queryMspTid()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    .locals 11

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "QueryMspCertification"

    const-string/jumbo v2, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid \u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->loadOrCreateTID()Lcom/alipay/android/app/helper/Tid;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/android/app/helper/Tid;->getTidSeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->getIMEI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->getVirtualImei()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->getVirtualImsi()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v8, "QueryMspCertification"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " imei="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " imsi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->setImei(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->setMspkey(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->setTid(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->setVimsi(Ljava/lang/String;)V

    :cond_0
    return-object v2

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "QueryMspCertification"

    const-string/jumbo v5, "\u8c03\u7528\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid \u5931\u8d25\uff0c\u53ef\u80fd\u672a\u5b89\u88c5\u6700\u65b0\u79fb\u52a8\u5feb\u6377"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
