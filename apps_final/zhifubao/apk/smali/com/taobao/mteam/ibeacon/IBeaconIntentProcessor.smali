.class public Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;
.super Landroid/app/IntentService;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "IBeaconIntentProcessor.java"

    const-class v2, Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "4"

    const-string/jumbo v2, "onHandleIntent"

    const-string/jumbo v3, "com.taobao.mteam.ibeacon.IBeaconIntentProcessor"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "IBeaconIntentProcessor"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;->a:Z

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v4, "Monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onHandleIntent at: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", Intent: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconIntentProcessor"

    const-string/jumbo v2, "got an intent to process"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "monitoringData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/ibeacon/service/MonitoringData;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "rangingData"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/mteam/ibeacon/service/RangingData;

    :goto_0
    if-eqz v1, :cond_3

    sget-boolean v2, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "IBeaconIntentProcessor"

    const-string/jumbo v3, "got ranging data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/RangingData;->a()Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "IBeaconIntentProcessor"

    const-string/jumbo v3, "Ranging data has a null iBeacons collection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->c()Lcom/taobao/mteam/ibeacon/RangeNotifier;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/RangingData;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/mteam/ibeacon/service/IBeaconData;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/service/RangingData;->b()Lcom/taobao/mteam/ibeacon/service/RegionData;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/taobao/mteam/ibeacon/RangeNotifier;->a(Ljava/util/Collection;Lcom/taobao/mteam/ibeacon/Region;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    sget-boolean v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "IBeaconIntentProcessor"

    const-string/jumbo v2, "got monitoring data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p0}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->a(Landroid/content/Context;)Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->b()Lcom/taobao/mteam/ibeacon/MonitorNotifier;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-boolean v2, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "IBeaconIntentProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Calling monitoring notifier:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/service/MonitoringData;->a()Z

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/service/MonitoringData;->b()Lcom/taobao/mteam/ibeacon/Region;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/service/MonitoringData;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/service/MonitoringData;->b()Lcom/taobao/mteam/ibeacon/Region;

    :cond_6
    :goto_2
    return-void

    :cond_7
    sget-boolean v1, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "IBeaconIntentProcessor"

    const-string/jumbo v2, "but ranging notifier is null, so we\'re dropping it."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/taobao/mteam/ibeacon/IBeaconIntentProcessor;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0}, Lcom/taobao/mteam/ibeacon/service/MonitoringData;->b()Lcom/taobao/mteam/ibeacon/Region;

    goto :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method
