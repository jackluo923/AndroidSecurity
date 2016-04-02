.class public Lcom/alipay/apmobilesecuritysdk/model/DeviceInfoModel;
.super Ljava/lang/Object;


# static fields
.field public static final AD10_GSID:Ljava/lang/String; = "AD10"

.field public static final AD11_CPUID:Ljava/lang/String; = "AD11"

.field public static final AD12_CPUCOUNT:Ljava/lang/String; = "AD12"

.field public static final AD13_CPUFREQUENT:Ljava/lang/String; = "AD13"

.field public static final AD14_RAMSIZE:Ljava/lang/String; = "AD14"

.field public static final AD15_ROMSIZE:Ljava/lang/String; = "AD15"

.field public static final AD16_SDCARDSIEZE:Ljava/lang/String; = "AD16"

.field public static final AD17_VKEY:Ljava/lang/String; = "AD17"

.field public static final AD18_BLUEMAC:Ljava/lang/String; = "AD18"

.field public static final AD19_NETWORKTYPE:Ljava/lang/String; = "AD19"

.field public static final AD1_IMEI:Ljava/lang/String; = "AD1"

.field public static final AD20_BASEBANDCODE:Ljava/lang/String; = "AD20"

.field public static final AD2_IMSI:Ljava/lang/String; = "AD2"

.field public static final AD3_SENSORLIST:Ljava/lang/String; = "AD3"

.field public static final AD4_SENSORDATA:Ljava/lang/String; = "AD4"

.field public static final AD5_RESOLATION:Ljava/lang/String; = "AD5"

.field public static final AD6_WIDTH:Ljava/lang/String; = "AD6"

.field public static final AD7_HEIGHT:Ljava/lang/String; = "AD7"

.field public static final AD8_MAC_ADDRESS:Ljava/lang/String; = "AD8"

.field public static final AD9_ICCID:Ljava/lang/String; = "AD9"

.field public static final FIELD:Ljava/lang/String; = "AD"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStaticDeviceInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getInstance()Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "AD1"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD2"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD3"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSensorDigest(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD5"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD6"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD7"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getScreenHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD8"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD9"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSIMSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD10"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD11"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCPUSerial()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD12"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuCount()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD13"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getCpuFrequent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD14"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getMemorySize()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD15"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getTotalInternalMemorySize()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD16"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getSDCardSize()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD17"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD18"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBluMac()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD19"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD20"

    invoke-virtual {v0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getBandVer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD21"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "AD22"

    invoke-virtual {v0, p0}, Lcom/alipay/security/mobile/module/deviceinfo/DeviceInfo;->getPropPreviewsSizeOfCamera(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
