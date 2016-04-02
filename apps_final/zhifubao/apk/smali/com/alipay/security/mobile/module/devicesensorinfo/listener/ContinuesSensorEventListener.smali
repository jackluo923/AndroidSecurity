.class public Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static tempContinuesSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;->tempContinuesSensors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;->a:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;->tempContinuesSensors:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;->a:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;->a:Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;->recordInfo(Landroid/hardware/SensorEvent;)V

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/ContinuesSensorEventListener;->tempContinuesSensors:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
