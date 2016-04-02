.class public Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;
.super Lcom/alipay/mobile/framework/service/StepDetectService;
.source "StepDetectServiceImpl.java"


# instance fields
.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/StepDetectService;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    return-void
.end method


# virtual methods
.method public getSteps(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_stepsCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "stepsCount"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 36
    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    .line 75
    :cond_0
    return-void
.end method

.method public resetSteps(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_stepsCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "stepsCount"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public stepDetectStart(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensor:Landroid/hardware/Sensor;

    .line 48
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x10000001

    const-string/jumbo v2, "Jackie"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 52
    new-instance v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    iget-object v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 55
    :cond_0
    return-void
.end method

.method public stepDetectStop(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    .line 65
    :cond_0
    return-void
.end method
