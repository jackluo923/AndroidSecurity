.class public Lcom/alipay/android/phone/nfd/nfdservice/api/utils/ChinaTelecomUtil;
.super Ljava/lang/Object;


# static fields
.field private static final AIRPORT_WI_FI_FREE:Ljava/lang/String; = "AIRPORT-WiFi-FREE"

.field private static final CHINA_NET:Ljava/lang/String; = "ChinaNet"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetFormatDateFromLong(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v5, 0x3c

    div-long v0, p0, v5

    div-long/2addr v0, v5

    long-to-int v0, v0

    mul-int/lit16 v1, v0, 0xe10

    int-to-long v1, v1

    sub-long v1, p0, v1

    div-long v3, v1, v5

    long-to-int v3, v3

    rem-long/2addr v1, v5

    :try_start_0
    const-string/jumbo v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCheckConnChinaNetAp()Z
    .locals 1

    invoke-static {}, Lcom/akazam/api/ctwifi/WifiUtil;->getInstance()Lcom/akazam/api/ctwifi/WifiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akazam/api/ctwifi/WifiUtil;->isConnectChinaNet()Z

    move-result v0

    return v0
.end method

.method public static isChinaNetSSID(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "ChinaNet"

    invoke-static {p0}, Lcom/akazam/api/ctwifi/WifiUtil;->replaceApSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "AIRPORT-WiFi-FREE"

    invoke-static {p0}, Lcom/akazam/api/ctwifi/WifiUtil;->replaceApSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
