.class public Lcom/ta/utdid2/device/DeviceInfo;
.super Ljava/lang/Object;


# static fields
.field static final CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

.field static HMAC_KEY:Ljava/lang/String; = null

.field static final UTDID_VERSION_CODE:B = 0x1t

.field private static a:Lcom/ta/utdid2/device/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->a:Lcom/ta/utdid2/device/Device;

    const-string/jumbo v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->HMAC_KEY:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 7

    if-eqz p0, :cond_1

    new-instance v0, Lcom/ta/utdid2/device/Device;

    invoke-direct {v0}, Lcom/ta/utdid2/device/Device;-><init>()V

    sget-object v2, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/ta/utdid2/device/Device;

    invoke-direct {v0}, Lcom/ta/utdid2/device/Device;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5}, Lcom/ta/utdid2/device/Device;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/ta/utdid2/device/Device;->setImei(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/ta/utdid2/device/Device;->setCreateTimestamp(J)V

    invoke-virtual {v0, v6}, Lcom/ta/utdid2/device/Device;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/device/Device;->setUtdid(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ta/utdid2/device/DeviceInfo;->getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ta/utdid2/device/Device;->setCheckSum(J)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :cond_0
    monitor-exit v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 2

    const-class v1, Lcom/ta/utdid2/device/DeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/utdid2/device/DeviceInfo;->a:Lcom/ta/utdid2/device/Device;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ta/utdid2/device/DeviceInfo;->a:Lcom/ta/utdid2/device/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->a(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->a:Lcom/ta/utdid2/device/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
    .locals 5

    if-eqz p0, :cond_0

    const-string/jumbo v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
