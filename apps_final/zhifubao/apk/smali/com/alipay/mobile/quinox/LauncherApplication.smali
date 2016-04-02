.class public Lcom/alipay/mobile/quinox/LauncherApplication;
.super Landroid/app/Application;


# static fields
.field public static final LAUNCHER_APPLICATION_INIT:Ljava/lang/String; = "LauncherApplication.Init"

.field public static final TAG:Ljava/lang/String; = "LauncherApplication"

.field public static sInstance:Lcom/alipay/mobile/quinox/LauncherApplication;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/content/res/Resources;

.field private C:Z

.field private D:Ljava/lang/Class;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/Object;

.field private j:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

.field private k:Landroid/content/res/Resources;

.field private l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

.field private m:Lcom/alipay/mobile/quinox/BundleContext;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/reflect/Method;

.field private q:Lcom/alipay/mobile/quinox/g;

.field private r:Landroid/os/Handler;

.field private s:Landroid/os/Handler;

.field private t:Landroid/os/HandlerThread;

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/reflect/Field;

.field private x:Ljava/lang/ClassLoader;

.field private y:Lcom/alipay/mobile/quinox/resources/b;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->h:Z

    new-instance v0, Lcom/alipay/mobile/quinox/g;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/g;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;B)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->q:Lcom/alipay/mobile/quinox/g;

    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->C:Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "android.ddm.DdmHandleAppName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "getAppName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LauncherApplication"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->p:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->p:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->o:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LauncherApplication"

    const-string/jumbo v3, "patternHostAgent() exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->init()V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->clearOldPluginFiles()V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->setProductVersion()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "key_ensure_native_libs_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "framework_preferences"

    invoke-virtual {p0, v1, v4}, Lcom/alipay/mobile/quinox/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->e:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->setupResources()V

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->D:Ljava/lang/Class;

    const-string/jumbo v1, "getBundleObserver"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/lang/Object;)V

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Hotpatch: registerBundleObserver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mClassLoader"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->i:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    new-instance v3, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-direct {v3, p0, v0, v4}, Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V

    iput-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->j:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->j:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->D:Ljava/lang/Class;

    const-string/jumbo v1, "loadHostPatchs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Hotpatch: startHookHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :goto_2
    const-string/jumbo v0, "hoks"

    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    :cond_1
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAgentApplication\'s ClassLoader : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    new-instance v1, Lcom/alipay/mobile/quinox/BundleContext;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/BundleContext;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->m:Lcom/alipay/mobile/quinox/BundleContext;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v3, "com.alipay.mobile.quinox.engine.BundleEngine"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "SBundleContext"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->m:Lcom/alipay/mobile/quinox/BundleContext;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "attachBundleContext"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Application;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->m:Lcom/alipay/mobile/quinox/BundleContext;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "preInit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".init()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "init"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Boot finish (in quinox), now go to notify the observers."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->u:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->q:Lcom/alipay/mobile/quinox/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/g;->setChanged()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->q:Lcom/alipay/mobile/quinox/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/g;->notifyObservers()V

    :try_start_6
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/util/Collection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    const-string/jumbo v1, "postInit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    :goto_5
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BundlesManager"

    const-string/jumbo v3, "init error"

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "error when setupHotpatchBundleObserver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "error when startHookHost"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_6
    move-exception v1

    new-instance v3, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lib"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_8
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "lib"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ".so"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "armeabi"

    aput-object v7, v5, v6

    invoke-interface {v1, v4, v0, v5}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/FileUtil;->copyFile(Ljava/io/BufferedInputStream;Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_8
    move-exception v0

    move-object v1, v2

    :goto_6
    :try_start_b
    const-string/jumbo v3, "LauncherApplication"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v1, :cond_1

    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v2, :cond_3

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_3
    :goto_8
    throw v0

    :catch_a
    move-exception v1

    const-string/jumbo v2, "LauncherApplication"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_b
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "setupApplication() error."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_c
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catch_d
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "LauncherActivityAgent postInit"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_e
    move-exception v0

    goto :goto_6
.end method

.method static synthetic access$200(Lcom/alipay/mobile/quinox/LauncherApplication;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->t:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/LauncherApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->u:Z

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/quinox/LauncherApplication;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->j:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    return-object v0
.end method

.method private b()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.hotpatch.Hotpatch"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->D:Ljava/lang/Class;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->D:Ljava/lang/Class;

    const-string/jumbo v1, "init"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/util/HashMap;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Init Hotpatch: com.alipay.mobile.hotpatch.Hotpatch"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->D:Ljava/lang/Class;

    const-string/jumbo v1, "startHotPatch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Hotpatch: startHotPatch"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "error when setupHotpatch"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static freeFileLock(Ljava/nio/channels/FileLock;Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "freeFileLock "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " SUC!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/quinox/LauncherApplication;->sInstance:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0
.end method

.method public static tryFileLock(Ljava/io/File;)Ljava/nio/channels/FileLock;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryFileLock "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SUC!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChromeResources(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->B:Landroid/content/res/Resources;

    const-string/jumbo v1, "android:string/config_webViewPackageName"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->B:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addListener(Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->q:Lcom/alipay/mobile/quinox/g;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/g;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public bootFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->u:Z

    return v0
.end method

.method public getAgentActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentActivityLayout()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->k:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->k:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getBundleContext()Lcom/alipay/mobile/quinox/BundleContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->m:Lcom/alipay/mobile/quinox/BundleContext;

    return-object v0
.end method

.method public getBundlesManager()Lcom/alipay/mobile/quinox/bundle/BundlesManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->j:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->j:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    goto :goto_0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->r:Landroid/os/Handler;

    return-object v0
.end method

.method public getOldResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->B:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getOriginClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->x:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->B:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->k:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->B:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->y:Lcom/alipay/mobile/quinox/resources/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/resources/b;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;->getBundle()Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a(Lcom/alipay/mobile/quinox/bundle/a;Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "BundlesManager.getResourcesByBundle(bundle=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]) failed."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->k:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->C:Z

    return v0
.end method

.method public isHacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->v:Z

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->h:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "onConfigurationChanged()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/alipay/mobile/quinox/LauncherApplication;->sInstance:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->u:Z

    :try_start_0
    const-string/jumbo v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v3, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "init"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Init MonitorLogger: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v3, "com.alipay.android.phone.mobilecommon.dynamicrelease.DynamicReleaseReceiver"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v3, "com.alipay.android.phone.mobilecommon.dynamicrelease.DynamicReleaseWorker"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v3, "com.alipay.mobile.monitor.api.ClientMonitor"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "createInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    const/16 v4, 0x4000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    const-string/jumbo v4, "RC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->C:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->C:Z

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->setDebug(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "agent.application"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->a:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "agent.application2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->b:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "agent.activity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->c:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "agent.activity.layout"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->d:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "agent.depends"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->e:[Ljava/lang/String;

    :cond_0
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "agent.extraproc.depends"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->f:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "agent.entrance.extraproc"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherApplicationAgent"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->a:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherApplicationAgent2"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->b:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherActivityAgent"

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->c:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_6
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "monitor"

    const-string/jumbo v3, "setupHotpatch when processName != mPackageName"

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->b()V

    :cond_5
    const-string/jumbo v0, "monitor"

    const-string/jumbo v3, "Process Startup: processName=%s, packageName=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iput-boolean v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    const-string/jumbo v2, ":push"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    new-instance v0, Lcom/alipay/mobile/quinox/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/f;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Lcom/alipay/mobile/quinox/b;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/b;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->f:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/quinox/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "LauncherApplication.onCreate() return. The process name is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_7
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "LauncherApplication"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "LauncherApplication"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v3, "LauncherApplication"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const-string/jumbo v4, "LauncherApplication"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_4
    move-exception v0

    const-string/jumbo v3, "LauncherApplication"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAgentEntranceExtraproc=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    new-instance v0, Lcom/alipay/mobile/quinox/resources/b;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/resources/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->y:Lcom/alipay/mobile/quinox/resources/b;

    invoke-static {}, Lcom/alipay/mobile/quinox/a;->a()Lcom/alipay/mobile/quinox/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/a;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->r:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->C:Z

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->init(Landroid/content/Context;Z)Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    invoke-static {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->o:Ljava/lang/Object;

    const-string/jumbo v1, "patternHost"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->p:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->p:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string/jumbo v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".preInit(processName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isDebug="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->C:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "preInit"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->o:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->C:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_7
    const-class v1, Ljava/lang/ClassLoader;

    const-string/jumbo v2, "parent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->w:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->w:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->w:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->x:Ljava/lang/ClassLoader;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "monitor"

    const-string/jumbo v1, "setupHotPatch when processName = mPackageName"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->b()V

    :cond_9
    :try_start_8
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mPackageInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->i:Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->B:Landroid/content/res/Resources;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_a

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LauncherApplication.Init"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->t:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->t:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->t:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->t:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->s:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/quinox/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/d;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->C:Z

    if-eqz v0, :cond_a

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :try_start_9
    const-string/jumbo v0, "com.squareup.leakcanary.LeakCanary"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "install"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    :cond_a
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_a
    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->w:Ljava/lang/reflect/Field;

    new-instance v2, Lcom/alipay/mobile/quinox/e;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->x:Ljava/lang/ClassLoader;

    invoke-direct {v2, p0, v3}, Lcom/alipay/mobile/quinox/e;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_7

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    iput-object v8, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->g:Ljava/lang/String;

    goto/16 :goto_8

    :catch_6
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_b
    move-exception v0

    const-string/jumbo v0, "LauncherApplication"

    const-string/jumbo v1, "Failed to Setup LeakCanary."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "onLowMemory()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onTerminate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LauncherApplication"

    const-string/jumbo v2, "onTerminate()"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pattern(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "android."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.support."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "dalvik."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.w3c."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "de.robv.android.xposed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "junit."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.apache."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.json."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public patternHost(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.alipay.mobile.quinox.bundle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.vladium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.tcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.splash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.classloader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.resources"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.security"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.utils"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.LauncherApplication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.BundleContext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.ExceptionHandler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.LauncherActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.AlipayLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.hotpatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.hotpatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.updatecenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.taobao.android.dexposed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.android.phone.thirdparty.common"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.quinox.startup.StartupSafeguard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.alipay.mobile.framework.LauncherActivityAgent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recover()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "recover"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->n:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/util/Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->q:Lcom/alipay/mobile/quinox/g;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/g;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public setHacked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->v:Z

    return-void
.end method

.method public declared-synchronized setupResources()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->B:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    const-class v1, Landroid/content/res/AssetManager;

    const-string/jumbo v3, "addAssetPath"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/quinox/LauncherApplication;->addChromeResources(Landroid/content/res/AssetManager;Ljava/lang/reflect/Method;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->a()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->g()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->g()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "27"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "127"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "BootstrapResources"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "join: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] has packageId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", path="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    new-instance v1, Lcom/alipay/mobile/quinox/resources/a;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/alipay/mobile/quinox/resources/a;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/util/List;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->k:Landroid/content/res/Resources;

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->k:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->i:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mResources"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->i:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->l:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/BundlesManager;->j()V
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    new-instance v2, Lcom/alipay/mobile/quinox/resources/a;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/alipay/mobile/quinox/resources/a;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Ljava/util/List;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/LauncherApplication;->k:Landroid/content/res/Resources;
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
