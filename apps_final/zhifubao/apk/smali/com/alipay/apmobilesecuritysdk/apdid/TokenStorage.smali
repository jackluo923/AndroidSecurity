.class public Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApdid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getApdidToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static isTokenValid(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/SettingsStorage;->getApdidValidTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/alipay/apmobilesecuritysdk/log/LOG;->logException(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetApdid()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->b:Ljava/lang/String;

    return-void
.end method

.method public static saveApdid(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getApdid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidStorageModel;->getToken()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/apdid/TokenStorage;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method
