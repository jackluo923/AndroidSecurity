.class public Lcom/ali/user/mobile/info/SensorInfoCollector;
.super Ljava/lang/Object;
.source "SensorInfoCollector.java"


# static fields
.field private static a:Lcom/ali/user/mobile/info/SensorInfoCollector;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/SensorInfoCollector;->b:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/ali/user/mobile/info/SensorInfoCollector;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/ali/user/mobile/info/SensorInfoCollector;->a:Lcom/ali/user/mobile/info/SensorInfoCollector;

    if-nez v0, :cond_1

    .line 35
    sget-object v1, Lcom/ali/user/mobile/info/SensorInfoCollector;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/SensorInfoCollector;->a:Lcom/ali/user/mobile/info/SensorInfoCollector;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/ali/user/mobile/info/SensorInfoCollector;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/SensorInfoCollector;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/SensorInfoCollector;->a:Lcom/ali/user/mobile/info/SensorInfoCollector;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/info/SensorInfoCollector;->a:Lcom/ali/user/mobile/info/SensorInfoCollector;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public hasGravitySensor()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    const-string/jumbo v2, "SensorInfoCollector"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasGyroscopeSensor()Z
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLightSensor()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLinearAccelerationSensor()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    const-string/jumbo v2, "SensorInfoCollector"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasMagneticFieldSensor()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPressureSensor()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProximitySensor()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTemperatureSensor()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ali/user/mobile/info/SensorInfoCollector;->c:Landroid/hardware/SensorManager;

    .line 31
    return-void
.end method
