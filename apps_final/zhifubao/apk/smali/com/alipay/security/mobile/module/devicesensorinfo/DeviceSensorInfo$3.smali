.class Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final synthetic a:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "DeviceSensorInfo.java"

    const-class v2, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "registerListener"

    const-string/jumbo v3, "android.hardware.SensorManager"

    const-string/jumbo v4, "android.hardware.SensorEventListener:android.hardware.Sensor:int"

    const-string/jumbo v5, "listener:sensor:rate"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/alipay/security/mobile/module/devicesensorinfo/listener/OneShotSensorEventListener;->tempOneShotSensors:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    # getter for: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->e:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$700(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    # getter for: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->f:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$800(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    # getter for: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->b:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$600(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v1, p0, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;->this$0:Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;

    # getter for: Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->d:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;->access$900(Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    sget-object v1, Lcom/alipay/security/mobile/module/devicesensorinfo/DeviceSensorInfo$3;->a:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, p0, v3, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v6

    const/4 v1, 0x0

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v5

    invoke-static {v6, v7, v8, v9, v5}, Lcom/alipay/mobile/aspect/Monitor;->ajc$inlineAccessMethod$com_alipay_mobile_aspect_Monitor$com_alipay_mobile_aspect_Monitor$processCallSensorManagerRegisterListenerPointcut(Lcom/alipay/mobile/aspect/Monitor;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lorg/aspectj/lang/JoinPoint$StaticPart;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
