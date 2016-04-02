.class public Lcom/alipay/apmobilesecuritysdk/util/LocalRandomStr;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "alipay_vkey_random"

    const-string/jumbo v1, "random"

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/security/mobile/module/localstorage/SharePreferenceStorage;->getDataFromSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/crypto/DigestUtil;->sha1ByString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipay_vkey_random"

    const-string/jumbo v2, "random"

    invoke-static {p0, v1, v2, v0}, Lcom/alipay/security/mobile/module/localstorage/SharePreferenceStorage;->writeDataToSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
