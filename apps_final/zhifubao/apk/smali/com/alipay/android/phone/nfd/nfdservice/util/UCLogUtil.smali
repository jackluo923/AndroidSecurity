.class public Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UC_WIFI_C28(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;

    const-string/jumbo v1, "UC-WIFI-C28"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "Disconnect"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->log(Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;)V

    return-void
.end method

.method public static UC_WIFI_C33(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 7

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;

    const-string/jumbo v1, "UC-WIFI-C33"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "ShowWlanDialog"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addCommonExtParam(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    invoke-virtual {v0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->log(Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;)V

    return-void
.end method

.method public static UC_WIFI_C34(Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 7

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;

    const-string/jumbo v1, "UC-WIFI-C34"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "ClickWlanDialog"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addCommonExtParam(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    invoke-virtual {v0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->log(Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;)V

    return-void
.end method

.method public static UC_WIFI_C35(III)V
    .locals 7

    sget-boolean v0, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "su"

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;

    const-string/jumbo v1, "UC-WIFI-C35"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "AutoSynSsid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addTimeCostExtParam(I)V

    invoke-virtual {v0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->log(Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;)V

    goto :goto_0
.end method

.method public static UC_WIFI_C36(III)V
    .locals 7

    const-string/jumbo v4, "su"

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;

    const-string/jumbo v1, "UC-WIFI-C36"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "WifilistSyn"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "au"

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addTimeCostExtParam(I)V

    invoke-virtual {v0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->log(Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;)V

    return-void
.end method

.method public static UC_WIFI_C39(Ljava/lang/String;Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V
    .locals 7

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;

    const-string/jumbo v1, "UC-WIFI-C39"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "ShowPush"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addCommonExtParam(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;)V

    invoke-virtual {v0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->log(Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;)V

    return-void
.end method

.method public static UC_WIFI_C53(III)V
    .locals 7

    const-string/jumbo v4, "su"

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;

    const-string/jumbo v1, "UC-WIFI-C53"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "Me1IsPush"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->addTimeCostExtParam(I)V

    invoke-virtual {v0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;->log(Lcom/alipay/android/phone/nfd/nfdservice/api/model/log/LogItem;)V

    return-void
.end method
