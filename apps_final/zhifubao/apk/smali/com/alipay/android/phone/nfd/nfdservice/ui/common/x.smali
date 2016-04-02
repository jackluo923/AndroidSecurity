.class Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "NfdWifiWatcher.java"

    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.nfd.nfdservice.ui.common.NfdWifiWatcher$OtherReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1f7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

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

    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->b()V

    :cond_0
    :goto_0
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

    :cond_1
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->a()V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "com.alipay.android.phone.nfd.service.wifi.disconnect"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "pu"

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/util/UCLogUtil;->UC_WIFI_C28(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Landroid/content/Context;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->d()V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->b()V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->a()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v5, "com.alipay.action.ENABLE_WIFI_SETTING_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->a()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "com.alipay.action.DISABLE_WIFI_SETTING_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->b()V

    goto/16 :goto_0
.end method
