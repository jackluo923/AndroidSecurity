.class Lcom/taobao/mteam/ibeacon/service/a;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/taobao/mteam/ibeacon/service/BleHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "BleHandler.java"

    const-class v2, Lcom/taobao/mteam/ibeacon/service/a;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.taobao.mteam.ibeacon.service.BleHandler$1"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x13a

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/mteam/ibeacon/service/a;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/taobao/mteam/ibeacon/service/BleHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    sget-object v0, Lcom/taobao/mteam/ibeacon/service/a;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v6}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v6}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "BluetoothCrashResolver"

    const-string/jumbo v7, "Bluetooth discovery finished"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v6}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->c(Lcom/taobao/mteam/ibeacon/service/BleHandler;)V

    :cond_1
    :goto_0
    const-string/jumbo v6, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v6}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v6}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->d(Lcom/taobao/mteam/ibeacon/service/BleHandler;)V

    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v6}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "BluetoothCrashResolver"

    const-string/jumbo v7, "Bluetooth discovery started"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string/jumbo v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    :goto_2
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v5, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v6}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "BluetoothCrashResolver"

    const-string/jumbo v7, "Bluetooth discovery finished (external)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v6}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "BluetoothCrashResolver"

    const-string/jumbo v7, "Bluetooth discovery started (external)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_1
    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v5}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "BluetoothCrashResolver"

    const-string/jumbo v6, "Bluetooth state is ERROR"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_2
    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v5}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "BluetoothCrashResolver"

    const-string/jumbo v6, "Bluetooth state is OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->a(Lcom/taobao/mteam/ibeacon/service/BleHandler;J)V

    goto/16 :goto_2

    :sswitch_3
    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v5}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "BluetoothCrashResolver"

    const-string/jumbo v6, "Bluetooth state is ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v5}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "BluetoothCrashResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Bluetooth was turned off for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v7}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->e(Lcom/taobao/mteam/ibeacon/service/BleHandler;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v9}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->f(Lcom/taobao/mteam/ibeacon/service/BleHandler;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " milliseconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v5}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->e(Lcom/taobao/mteam/ibeacon/service/BleHandler;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v7}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->f(Lcom/taobao/mteam/ibeacon/service/BleHandler;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x258

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-virtual {v5}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b()V

    goto/16 :goto_2

    :sswitch_4
    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;J)V

    iget-object v5, p0, Lcom/taobao/mteam/ibeacon/service/a;->a:Lcom/taobao/mteam/ibeacon/service/BleHandler;

    invoke-static {v5}, Lcom/taobao/mteam/ibeacon/service/BleHandler;->b(Lcom/taobao/mteam/ibeacon/service/BleHandler;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "BluetoothCrashResolver"

    const-string/jumbo v6, "Bluetooth state is TURNING_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_0
    .end sparse-switch
.end method
