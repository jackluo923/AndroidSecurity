.class Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;->a:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;)Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;->a:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start to initUmidToken"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;->a:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->a(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initApdId UTDevice.getUtdid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;->a:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->a(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;->a:Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->a(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    new-instance v4, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1$1;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    return-void
.end method
