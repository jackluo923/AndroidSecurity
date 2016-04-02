.class public Lcom/ali/user/mobile/info/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# static fields
.field private static a:Lcom/ali/user/mobile/info/LocationInfo;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/LocationInfo;->b:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/ali/user/mobile/info/LocationInfo;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/ali/user/mobile/info/LocationInfo;->a:Lcom/ali/user/mobile/info/LocationInfo;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/ali/user/mobile/info/LocationInfo;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/LocationInfo;->a:Lcom/ali/user/mobile/info/LocationInfo;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/ali/user/mobile/info/LocationInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/LocationInfo;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/LocationInfo;->a:Lcom/ali/user/mobile/info/LocationInfo;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/info/LocationInfo;->a:Lcom/ali/user/mobile/info/LocationInfo;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCellId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 46
    :cond_0
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v1, "LocationInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 80
    iget-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 88
    iget-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTelLac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 66
    :cond_0
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_1

    .line 67
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string/jumbo v1, "LocationInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    .line 36
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 35
    iput-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    .line 37
    return-void
.end method
