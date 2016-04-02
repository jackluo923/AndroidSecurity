.class public Lcom/ali/user/mobile/report/ReportDeviceService;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "ReportDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getMobileGW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/rpc/RpcManager;->getRpcFactory2(Landroid/content/Context;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/IRpcFactory;

    move-result-object v0

    const-class v1, Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/rpc/IRpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;

    iput-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->mRpcInterface:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public reportDeviceInfo()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportConfig;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportConfig;

    move-result-object v0

    const-string/jumbo v1, ".DeviceInfoCfg"

    const-string/jumbo v2, "unifylogin$"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/report/ReportConfig;->checkReportConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v0, "ReportDeviceService"

    const-string/jumbo v1, "\u7981\u6b62\u62a5\u6d3b\u65f6\u95f4\uff0c\u505c\u6b62\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;

    invoke-direct {v1}, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;-><init>()V

    .line 49
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->apdid:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->asdk:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "ro.product.board"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->board:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "ro.product.brand"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->brand:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->device:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "ro.build.display.id"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->displayid:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/rdssecuritysdk/impl/EnvInfoCollector;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->em:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getHeightPix()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->h:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getWidthPix()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->w:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->imei:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->imsi:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "ro.build.version.incremental"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->incremental:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/ali/user/mobile/info/NetWorkInfo;->getInstance()Lcom/ali/user/mobile/info/NetWorkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/NetWorkInfo;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->mac:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "ro.product.manufacture"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->manufacture:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->model:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->name:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "ANDROID"

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->os:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->px:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->qemu:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "ro.build.version.release"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->release:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "ro.secure"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->root:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "ro.build.tags"

    invoke-static {v0}, Lcom/ali/user/mobile/util/DeviceProperties;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->tags:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getUA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->ua:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/ali/user/mobile/info/SensorInfoCollector;->getInstance()Lcom/ali/user/mobile/info/SensorInfoCollector;

    move-result-object v2

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasGravitySensor()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "G1"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasGyroscopeSensor()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "T1"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasLightSensor()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "L1"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasLinearAccelerationSensor()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "A1"

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasMagneticFieldSensor()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "M1"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasProximitySensor()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "D1"

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasTemperatureSensor()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "W1"

    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Lcom/ali/user/mobile/info/SensorInfoCollector;->hasPressureSensor()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "P1"

    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->sens:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->umid:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->utdid:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->appkey:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->appversion:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;->sdkversion:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->mRpcInterface:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;

    invoke-interface {v0, v1}, Lcom/alipay/alideviceinfo/facade/DeviceInfoFacade;->reportDeviceInfo(Lcom/alipay/alideviceinfo/vo/DeviceInfoVO;)Lcom/alipay/alideviceinfo/vo/DeviceInfoRes;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportDeviceService;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/report/ReportConfig;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportConfig;

    move-result-object v1

    const-string/jumbo v2, ".DeviceInfoCfg"

    const-string/jumbo v3, "unifylogin$"

    iget-object v0, v0, Lcom/alipay/alideviceinfo/vo/DeviceInfoRes;->clientReportConfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ali/user/mobile/report/ReportConfig;->setReportConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    :cond_1
    const-string/jumbo v0, "0"

    goto/16 :goto_1

    .line 75
    :cond_2
    const-string/jumbo v0, "G0"

    goto/16 :goto_2

    .line 76
    :cond_3
    const-string/jumbo v0, "T0"

    goto/16 :goto_3

    .line 77
    :cond_4
    const-string/jumbo v0, "L0"

    goto/16 :goto_4

    .line 78
    :cond_5
    const-string/jumbo v0, "A0"

    goto/16 :goto_5

    .line 79
    :cond_6
    const-string/jumbo v0, "M0"

    goto/16 :goto_6

    .line 80
    :cond_7
    const-string/jumbo v0, "D0"

    goto/16 :goto_7

    .line 81
    :cond_8
    const-string/jumbo v0, "W0"

    goto/16 :goto_8

    .line 82
    :cond_9
    const-string/jumbo v0, "P0"

    goto/16 :goto_9
.end method
