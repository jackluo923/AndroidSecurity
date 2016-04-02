.class public Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/MicroApplicationContext;


# static fields
.field public static final KEY_STATE_FLAG:Ljava/lang/String; = "@@"

.field public static final SHARE_PREF_STATES:Ljava/lang/String; = "_share_tmp_"

.field static final TAG:Ljava/lang/String; = "MicroAppContextImpl"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/Application;

.field private e:Landroid/app/Activity;

.field private f:Lcom/alipay/mobile/core/ServiceManager;

.field private g:Lcom/alipay/mobile/core/ApplicationManager;

.field private h:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

.field private i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

.field private j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

.field private k:Lcom/alipay/mobile/core/init/BootLoader;

.field private l:Lcom/alipay/mobile/core/impl/AppExitHelper;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/core/impl/AppExitHelper;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    .line 908
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 920
    if-eqz v0, :cond_0

    .line 924
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 289
    if-nez v0, :cond_0

    .line 290
    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string/jumbo v1, "entry class must be set."

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    new-instance v1, Landroid/content/ActivityNotFoundException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 271
    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v1, "mExtras"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Lcom/alipay/mobile/core/ApplicationManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    return-object v0
.end method

.method private static b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 933
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 935
    const/4 v3, 0x0

    .line 936
    if-eqz v0, :cond_1

    .line 937
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 939
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 940
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 942
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 947
    :goto_1
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 787
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 796
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mActiveActivity="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "current Activity must be ActivityInterface\u3002 -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Toast(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "mActiveActivity == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    .line 782
    :goto_0
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 780
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "current Activity must be ActivityInterface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 527
    return-void
.end method

.method public attachContext(Landroid/app/Application;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)V
    .locals 3

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    .line 142
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "attachContext("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/core/impl/AppExitHelper;->init(Landroid/app/Application;)V

    .line 144
    invoke-static {}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->getInstance()Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    invoke-virtual {v0, v1, v2, p2}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->init(Landroid/content/Context;Lcom/alipay/mobile/core/impl/AppExitHelper;Lcom/alipay/mobile/framework/LauncherApplicationAgent$ExceptionHandlerAgent;)Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/framework/CookieCleaner;->clearCookiesAtStartup(Landroid/content/Context;)V

    .line 149
    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->createInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MicroApplicationContextImpl_WorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    new-instance v0, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/core/app/impl/ApplicationManagerImpl;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-direct {v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    new-instance v0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->load()V

    const-string/jumbo v0, "MicroAppContextImpl"

    const-string/jumbo v1, "Boot finish (in framework)."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->restoreState()V

    .line 152
    return-void
.end method

.method public background()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->background(Landroid/app/Activity;)V

    .line 672
    return-void
.end method

.method public background(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 677
    iget-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    .line 679
    :cond_0
    if-nez p1, :cond_1

    .line 695
    :goto_0
    return-void

    .line 682
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 684
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 686
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public clearState()V
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 868
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 869
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 870
    return-void
.end method

.method public clearTopApps()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->exit()V

    .line 845
    return-void
.end method

.method public varargs deleteDescriptionByAppId([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->deleteDescriptionByAppId([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dismissProgressDialog()V
    .locals 4

    .prologue
    .line 829
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V

    return-void

    .line 832
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mActiveActivity="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "current Activity must be ActivityInterface\u3002 -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public doStartApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 578
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doStartApp(): [sourceAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], [targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 v0, 0x2

    aput-object p3, v1, v0

    .line 581
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 582
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$2;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 596
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 629
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 630
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 631
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->close()V

    .line 638
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->exit()V

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->l:Lcom/alipay/mobile/core/impl/AppExitHelper;

    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;)V

    .line 646
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 651
    invoke-virtual {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->clearState()V

    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    invoke-static {v0}, Lcom/alipay/mobile/framework/CookieCleaner;->clearCookiesAtExit(Landroid/content/Context;)V

    .line 660
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 665
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 666
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 667
    return-void
.end method

.method public findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0
.end method

.method public findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    return-object v0
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 501
    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    .line 506
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->getTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    return-object v0
.end method

.method public finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 600
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 v0, 0x2

    aput-object p3, v1, v0

    .line 601
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 602
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$3;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 611
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 612
    return-void
.end method

.method public getActiveActivityCount()I
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0}, Lcom/alipay/mobile/core/ApplicationManager;->getActiveActivityCount()I

    move-result v0

    return v0
.end method

.method public getApplicationContext()Landroid/app/Application;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    return-object v0
.end method

.method public getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/core/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    .line 620
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->j:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    return-object v0
.end method

.method public getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineManager()Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->h:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    return-object v0
.end method

.method public getTopActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 2

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 476
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 480
    :cond_1
    return-object v0
.end method

.method public declared-synchronized hasInited()Z
    .locals 1

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadBundle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->k:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/init/BootLoader;->loadBundle(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onDestroyContent(Lcom/alipay/mobile/framework/MicroContent;)V
    .locals 2

    .prologue
    .line 485
    instance-of v0, p1, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eqz v0, :cond_1

    .line 486
    const-class v0, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/ApplicationManager;

    .line 487
    if-eqz v0, :cond_0

    .line 488
    check-cast p1, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->onDestroyApp(Lcom/alipay/mobile/framework/app/MicroApplication;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    check-cast p1, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ServiceManager;->onDestroyService(Lcom/alipay/mobile/framework/service/MicroService;)V

    goto :goto_0

    .line 492
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "microContent must be MicroApplication or MicroService."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onWindowFocus(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    .prologue
    .line 840
    return-void
.end method

.method public registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/core/ApplicationManager;->registerApplicationEngine(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationEngine;)Z

    move-result v0

    return v0
.end method

.method public registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->registerApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z

    move-result v0

    return v0
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Lcom/alipay/mobile/core/ServiceManager;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/core/ServiceManager;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState()V
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 859
    const-string/jumbo v1, "@@"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->restoreState(Landroid/content/SharedPreferences;)V

    .line 861
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 863
    :cond_0
    return-void
.end method

.method public saveState()V
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->d:Landroid/app/Application;

    const-string/jumbo v1, "_share_tmp_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 850
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 851
    const-string/jumbo v1, "@@"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 852
    iget-object v1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->saveState(Landroid/content/SharedPreferences$Editor;)V

    .line 853
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 854
    return-void
.end method

.method public setStartActivityContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 910
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->m:Ljava/lang/ref/WeakReference;

    .line 911
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 803
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;)V

    return-void

    .line 806
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mActiveActivity="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "current Activity must be ActivityInterface\u3002 -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    .prologue
    .line 819
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void

    .line 822
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mActiveActivity="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    new-instance v1, Ljava/lang/IllegalAccessError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "current Activity must be ActivityInterface\u3002 -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 340
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v3

    .line 341
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 342
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 345
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    invoke-static {p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 347
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 351
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startActivity(app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    .line 357
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 358
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 359
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->setStartActivityContext(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    :cond_2
    :goto_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 384
    return-void

    .line 361
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    const-string/jumbo v2, "MicroAppContextImpl"

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Start ActivityShell."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 373
    :catch_2
    move-exception v0

    .line 374
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 375
    throw v0

    .line 365
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 376
    :catch_3
    move-exception v0

    .line 377
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 378
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to startActivity(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 223
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v4

    .line 224
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 225
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const/high16 v0, 0x40000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    invoke-static {v2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 233
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 237
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v3, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startActivity(app="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", className="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    .line 242
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 243
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-direct {p0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->setStartActivityContext(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 267
    :cond_2
    :goto_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 268
    return-void

    .line 246
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    const-string/jumbo v3, "MicroAppContextImpl"

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Start ActivityShell."

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 257
    :catch_2
    move-exception v0

    .line 258
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 259
    throw v0

    .line 250
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 260
    :catch_3
    move-exception v0

    .line 261
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 262
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to startActivity(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 408
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v3

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 409
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 410
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 413
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    invoke-static {p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 415
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 419
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startActivityForResult(app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_2
    :goto_0
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 440
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    const-string/jumbo v2, "MicroAppContextImpl"

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Start ActivityShell."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 429
    :catch_1
    move-exception v0

    .line 430
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 431
    throw v0

    .line 432
    :catch_2
    move-exception v0

    .line 433
    invoke-virtual {p1, v5}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 434
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to startActivityForResult(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 299
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v4

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 300
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 301
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    invoke-direct {p0, p2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 306
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    const/high16 v0, 0x40000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    invoke-static {v2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/content/Intent;)V

    .line 309
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 313
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v3, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startActivityForResult(app="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", className="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, v2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_2
    :goto_0
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 336
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    const-string/jumbo v3, "MicroAppContextImpl"

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Start ActivityShell."

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-static {v0, v2, p3}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    .line 325
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 326
    throw v0

    .line 327
    :catch_2
    move-exception v0

    .line 328
    invoke-virtual {p1, v6}, Lcom/alipay/mobile/framework/app/MicroApplication;->setIsPrevent(Z)V

    .line 329
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to startActivityForResult(app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 561
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startApp(): [sourceAppId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], [targetAppId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 v0, 0x2

    aput-object p3, v1, v0

    .line 564
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 565
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->c:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$1;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    :cond_1
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startApp(String, String, Bundle)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 575
    return-void
.end method

.method public startEntryApp(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->startEntryApp(Landroid/os/Bundle;)V

    .line 557
    return-void
.end method

.method public startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 388
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    .line 389
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 390
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 393
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 396
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startExtActivity(app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 403
    :cond_2
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public startExtActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V
    .locals 5

    .prologue
    .line 444
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 445
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 446
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 449
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_1

    .line 452
    const-string/jumbo v0, "MicroAppContextImpl"

    new-instance v2, Lcom/alipay/mobile/framework/exception/StartActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startExtActivityForResult(app="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/framework/exception/StartActivityRecord;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 459
    :cond_2
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)"

    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/aspect/FrameworkPointcutExecution;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method public unregisterApplicationEngine(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->unregisterApplicationEngine(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->unregisterApplicationInstaller(Lcom/alipay/mobile/framework/app/IApplicationInstaller;)Z

    move-result v0

    return v0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->i:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 517
    return-void
.end method

.method public updateActivity(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->e:Landroid/app/Activity;

    .line 135
    return-object v0
.end method

.method public updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/core/ApplicationManager;->updateDescription(Lcom/alipay/mobile/framework/app/ApplicationDescription;)Z

    move-result v0

    return v0
.end method
