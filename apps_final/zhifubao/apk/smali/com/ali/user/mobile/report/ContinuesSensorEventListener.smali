.class public Lcom/ali/user/mobile/report/ContinuesSensorEventListener;
.super Ljava/lang/Object;
.source "ContinuesSensorEventListener.java"

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
.field private a:Lcom/ali/user/mobile/report/SensorInfoRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/report/ContinuesSensorEventListener;->tempContinuesSensors:Ljava/util/List;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/ali/user/mobile/report/SensorInfoRecorder;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/ali/user/mobile/report/ContinuesSensorEventListener;->a:Lcom/ali/user/mobile/report/SensorInfoRecorder;

    .line 24
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/report/ContinuesSensorEventListener;->tempContinuesSensors:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/report/ContinuesSensorEventListener;->a:Lcom/ali/user/mobile/report/SensorInfoRecorder;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/ali/user/mobile/report/ContinuesSensorEventListener;->a:Lcom/ali/user/mobile/report/SensorInfoRecorder;

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/report/SensorInfoRecorder;->recordInfo(Landroid/hardware/SensorEvent;)V

    .line 37
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/report/ContinuesSensorEventListener;->tempContinuesSensors:Ljava/util/List;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    .line 39
    :goto_0
    return-void

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
