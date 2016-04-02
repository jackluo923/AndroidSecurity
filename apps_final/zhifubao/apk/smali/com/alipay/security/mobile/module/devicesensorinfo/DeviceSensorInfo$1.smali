.class Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/devicesensorinfo/listener/SensorInfoRecorder;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$1;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized recordInfo(Landroid/hardware/SensorEvent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    # getter for: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->i:Landroid/util/SparseArray;
    invoke-static {}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$000()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const-string/jumbo v2, "Unknown Sensor"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$1;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    # getter for: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$100(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$1;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    # getter for: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$100(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$1;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    # invokes: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a([F)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$200(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;[F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$1;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    # getter for: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->a:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$100(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
