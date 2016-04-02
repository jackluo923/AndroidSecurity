.class public Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;
.super Ljava/lang/Object;
.source "PowerUsageInfo.java"


# instance fields
.field a:Landroid/hardware/Sensor;

.field b:Ljava/lang/reflect/Method;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;Landroid/hardware/Sensor;)V
    .locals 3

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->c:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a:Landroid/hardware/Sensor;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "getHandle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->b:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, -0x3e8

    goto :goto_0
.end method
