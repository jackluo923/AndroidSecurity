.class public Lcom/alipay/android/app/MspInitAssistServiceImpl;
.super Lcom/alipay/android/app/MspInitAssistService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/MspInitAssistService;-><init>()V

    return-void
.end method


# virtual methods
.method public initWhenServiceCreate()V
    .locals 0

    invoke-static {}, Lcom/alipay/android/app/script/ScriptEventRunnable;->startThread()V

    return-void
.end method

.method public initWhenServiceFirstCreate(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/empty/MemoryMonitor;->a()Lcom/alipay/android/app/empty/MemoryMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/empty/MemoryMonitor;->a(Lcom/alipay/android/app/empty/IMemoryEventHandler;)V

    const-class v0, Lcom/alipay/android/app/data/LuaExcutor;

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a(Ljava/lang/Class;)V

    const-class v0, Lcom/alipay/android/app/data/MspBizUnit;

    invoke-static {v0}, Lcom/alipay/android/app/data/BizData;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/alipay/android/app/request/MspFrameFactory;

    invoke-direct {v0}, Lcom/alipay/android/app/request/MspFrameFactory;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a(Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;)V

    const-class v0, Lcom/alipay/android/app/display/windows/WindowsManager;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    return-void
.end method

.method public pay(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Lcom/alipay/android/app/IAlipayCallback;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/IAlipayCallback;)V

    return-void
.end method

.method public registerCallback(Lcom/alipay/android/app/IRemoteCallback;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/IRemoteCallback;)V

    return-void
.end method

.method public stopWhenServiceDestroy(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizDataSource;->c()V

    return-void
.end method

.method public unregisterAlipayCallback()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizDataSource;->e()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizDataSource;->d()V

    return-void
.end method
