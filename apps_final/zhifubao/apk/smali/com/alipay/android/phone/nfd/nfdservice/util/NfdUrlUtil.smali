.class public Lcom/alipay/android/phone/nfd/nfdservice/util/NfdUrlUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getGWFURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.alipay.setting/GWFServerUrl"

    const-string/jumbo v1, "https://mobilegw.alipay.com/mgw.htm"

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    goto :goto_0
.end method
