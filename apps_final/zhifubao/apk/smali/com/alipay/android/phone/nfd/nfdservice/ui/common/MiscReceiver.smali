.class public Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private b:Landroid/content/IntentFilter;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "MiscReceiver.java"

    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.nfd.nfdservice.ui.common.MiscReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/BroadcastReceiver;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.eg.android.AlipayGphone.nfd.action.wifireceiver.unregist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.android.phone.nfd.service.wifi.disconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.action.ENABLE_WIFI_SETTING_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.action.DISABLE_WIFI_SETTING_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.eg.android.AlipayGphone.nfd.action.foreground.enter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.eg.android.AlipayGphone.nfd.action.foreground.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.action.ENABLE_NFD_AUTO_DISCOVERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.alipay.action.DISABLE_NFD_AUTO_DISCOVERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b:Landroid/content/IntentFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v0, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v6, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.eg.android.AlipayGphone.nfd.action.wifireceiver.regist"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a:Ljava/lang/String;

    const-string/jumbo v6, "\u6536\u5230\u5f02\u5e38 ACTION_REGIST_WIFI_RECEIVER \u5e7f\u64ad!!!"

    invoke-static {v0, v6}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
