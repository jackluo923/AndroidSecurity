.class public Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final synthetic j:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic k:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

.field private c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

.field private d:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

.field private e:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

.field private f:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

.field private g:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

.field private h:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "NfdService.java"

    const-class v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onStartCommand"

    const-string/jumbo v3, "com.alipay.android.phone.nfd.nfdservice.ui.app.NfdService"

    const-string/jumbo v4, "android.content.Intent:int:int"

    const-string/jumbo v5, "intent:flags:startId"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "int"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x73

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onBind"

    const-string/jumbo v3, "com.alipay.android.phone.nfd.nfdservice.ui.app.NfdService"

    const-string/jumbo v4, "android.content.Intent"

    const-string/jumbo v5, "intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "android.os.IBinder"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xab

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->k:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v0, "NfdService"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final a()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;)Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->k:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBind at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    const-string/jumbo v1, " =======> onBind"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;)V

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->setApplication(Landroid/app/Application;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->initLogContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->g:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->g:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/NfdAppInfo;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->getInstance()Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NfdConfigManager;->init(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.ali.user.mobile.info.AppInfo.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/a;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;)V

    iput-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->i:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Landroid/content/Context;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    if-nez v0, :cond_2

    const-string/jumbo v0, "WIFI feature is not supported on this platform!"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->d:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/j;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;->a()Lcom/alipay/android/phone/nfd/nfdservice/ui/wifipopup/a;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->a()V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    const-string/jumbo v1, " =======> onCreate"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    const-string/jumbo v2, "registeLocBroadcast exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;)Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->h:Lcom/alipay/android/phone/nfd/nfdservice/biz/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/ab;)Z

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;->c()V

    iput-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/z;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->g:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->g:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->g:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/MiscReceiver;->b(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/c/d;->b()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->d:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a()V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->e:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->b()Z

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->onDestroy()V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->release()V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    const-string/jumbo v1, " =======> onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    const-string/jumbo v2, "unRegisteLocBroadCast exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->j:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v6

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onStartCommand at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", Intent: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    const-string/jumbo v1, " =======> onStartCommand"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->f:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;->a()V

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a:Ljava/lang/String;

    const-string/jumbo v1, " =======> onUnbind"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
