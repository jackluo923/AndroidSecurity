.class public Lorg/apache/cordova/api/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/api/PluginManager$PluginManagerService;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final app:Lorg/apache/cordova/CordovaWebView;

.field private final ctx:Lorg/apache/cordova/api/CordovaInterface;

.field private final entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/api/PluginEntry;",
            ">;"
        }
    .end annotation
.end field

.field private firstRun:Z

.field private numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected urlMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "PluginManager"

    sput-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 2
    .param p1, "app"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "ctx"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/api/PluginManager;->urlMap:Ljava/util/HashMap;

    .line 74
    iput-object p2, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    .line 75
    iput-object p1, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/api/PluginManager;->firstRun:Z

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/cordova/api/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lorg/apache/cordova/api/PluginManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/api/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/api/PluginManager;->execHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/api/PluginManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/api/PluginManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/cordova/api/PluginManager;)Lorg/apache/cordova/api/CordovaInterface;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/api/PluginManager;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    return-object v0
.end method

.method private execHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "rawArgs"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v3

    .line 231
    .local v3, "plugin":Lorg/apache/cordova/api/CordovaPlugin;
    if-nez v3, :cond_1

    .line 232
    sget-object v5, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exec() call to unknown plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 234
    .local v1, "cr":Lorg/apache/cordova/api/PluginResult;
    iget-object v5, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v5, v1, p3}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 248
    .end local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/cordova/api/CallbackContext;

    iget-object v5, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v0, p3, v5}, Lorg/apache/cordova/api/CallbackContext;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 239
    .local v0, "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    invoke-virtual {v3, p2, p4, v0}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v4

    .line 240
    .local v4, "wasValidAction":Z
    if-nez v4, :cond_0

    .line 241
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 242
    .restart local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    iget-object v5, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v5, v1, p3}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    .end local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    .end local v4    # "wasValidAction":Z
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 246
    .restart local v1    # "cr":Lorg/apache/cordova/api/PluginResult;
    iget-object v5, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v5, v1, p3}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pluginConfigurationMissing()V
    .locals 2

    .prologue
    .line 400
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: config.xml is missing.  Add res/xml/config.xml to your project."

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "https://git-wip-us.apache.org/repos/asf?p=incubator-cordova-android.git;a=blob;f=framework/res/xml/plugins.xml"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v0, Lorg/apache/cordova/api/PluginEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/cordova/api/PluginEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    invoke-virtual {p0, v0}, Lorg/apache/cordova/api/PluginManager;->addService(Lorg/apache/cordova/api/PluginEntry;)V

    .line 285
    return-void
.end method

.method public addService(Lorg/apache/cordova/api/PluginEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/cordova/api/PluginEntry;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/apache/cordova/api/PluginEntry;->service:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public clearPluginObjects()V
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 183
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    goto :goto_0

    .line 185
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_0
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "rawArgs"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 218
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lorg/apache/cordova/api/PluginManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/api/PluginManager$1;-><init>(Lorg/apache/cordova/api/PluginManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/api/PluginManager;->execHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "jsonArgs"    # Ljava/lang/String;
    .param p5, "async"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/cordova/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;
    .locals 4
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 265
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    if-nez v0, :cond_1

    .line 266
    const/4 v1, 0x0

    .line 272
    :cond_0
    :goto_0
    return-object v1

    .line 268
    :cond_1
    iget-object v1, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    .line 269
    .local v1, "plugin":Lorg/apache/cordova/api/CordovaPlugin;
    if-nez v1, :cond_0

    .line 270
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/api/PluginEntry;->createPlugin(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v1

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 84
    sget-object v0, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lorg/apache/cordova/api/PluginManager;->firstRun:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/apache/cordova/api/PluginManager;->loadPlugins()V

    .line 89
    iput-boolean v2, p0, Lorg/apache/cordova/api/PluginManager;->firstRun:Z

    .line 100
    :goto_0
    new-instance v0, Lorg/apache/cordova/api/PluginEntry;

    const-string v1, "PluginManager"

    new-instance v2, Lorg/apache/cordova/api/PluginManager$PluginManagerService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/api/PluginManager$PluginManagerService;-><init>(Lorg/apache/cordova/api/PluginManager;Lorg/apache/cordova/api/PluginManager$1;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginEntry;-><init>(Ljava/lang/String;Lorg/apache/cordova/api/CordovaPlugin;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/api/PluginManager;->addService(Lorg/apache/cordova/api/PluginEntry;)V

    .line 103
    invoke-virtual {p0}, Lorg/apache/cordova/api/PluginManager;->startupPlugins()V

    .line 104
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/cordova/api/PluginManager;->onPause(Z)V

    .line 95
    invoke-virtual {p0}, Lorg/apache/cordova/api/PluginManager;->onDestroy()V

    .line 96
    invoke-virtual {p0}, Lorg/apache/cordova/api/PluginManager;->clearPluginObjects()V

    goto :goto_0
.end method

.method public loadPlugins()V
    .locals 15

    .prologue
    .line 110
    iget-object v11, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "config"

    const-string v13, "xml"

    iget-object v14, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "id":I
    if-nez v3, :cond_0

    .line 112
    iget-object v11, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "config"

    const-string v13, "xml"

    iget-object v14, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v14}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 114
    :cond_0
    if-nez v3, :cond_2

    .line 115
    invoke-direct {p0}, Lorg/apache/cordova/api/PluginManager;->pluginConfigurationMissing()V

    .line 176
    :cond_1
    return-void

    .line 119
    :cond_2
    iget-object v11, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 120
    .local v10, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v2, -0x1

    .line 121
    .local v2, "eventType":I
    const-string v8, ""

    .local v8, "service":Ljava/lang/String;
    const-string v7, ""

    .local v7, "pluginClass":Ljava/lang/String;
    const-string v6, ""

    .line 122
    .local v6, "paramType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 123
    .local v5, "onload":Z
    const/4 v4, 0x0

    .line 124
    .local v4, "insideFeature":Z
    :goto_0
    const/4 v11, 0x1

    if-eq v2, v11, :cond_1

    .line 125
    const/4 v11, 0x2

    if-ne v2, v11, :cond_a

    .line 126
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "strNode":Ljava/lang/String;
    const-string v11, "plugin"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 129
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    sget-object v11, Lorg/apache/cordova/api/PluginManager;->TAG:Ljava/lang/String;

    const-string v12, "<plugin> tags are deprecated, please use <features> instead. <plugin> will no longer work as of Cordova 3.0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v11, "true"

    const/4 v12, 0x0

    const-string v13, "onload"

    invoke-interface {v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 169
    .end local v9    # "strNode":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 135
    .restart local v9    # "strNode":Ljava/lang/String;
    :cond_4
    const-string v11, "url-filter"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 136
    iget-object v11, p0, Lorg/apache/cordova/api/PluginManager;->urlMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_5
    const-string v11, "feature"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 141
    const/4 v4, 0x1

    .line 142
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 144
    :cond_6
    if-eqz v4, :cond_3

    const-string v11, "param"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 145
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    const-string v11, "service"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 147
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 148
    :cond_7
    const-string v11, "package"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "android-package"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 149
    :cond_8
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v10, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 150
    :cond_9
    const-string v11, "onload"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 151
    const-string v11, "true"

    const/4 v12, 0x0

    const-string v13, "value"

    invoke-interface {v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 154
    .end local v9    # "strNode":Ljava/lang/String;
    :cond_a
    const/4 v11, 0x3

    if-ne v2, v11, :cond_3

    .line 156
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 157
    .restart local v9    # "strNode":Ljava/lang/String;
    const-string v11, "feature"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "plugin"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 159
    :cond_b
    new-instance v1, Lorg/apache/cordova/api/PluginEntry;

    invoke-direct {v1, v8, v7, v5}, Lorg/apache/cordova/api/PluginEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    .local v1, "entry":Lorg/apache/cordova/api/PluginEntry;
    invoke-virtual {p0, v1}, Lorg/apache/cordova/api/PluginManager;->addService(Lorg/apache/cordova/api/PluginEntry;)V

    .line 163
    const-string v8, ""

    .line 164
    const-string v7, ""

    .line 165
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 170
    .end local v1    # "entry":Lorg/apache/cordova/api/PluginEntry;
    .end local v9    # "strNode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .line 172
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 327
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 328
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v2}, Lorg/apache/cordova/api/CordovaPlugin;->onDestroy()V

    goto :goto_0

    .line 332
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 361
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 362
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 366
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_1
    return-void
.end method

.method public onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->urlMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 376
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 378
    .local v1, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    .line 382
    .end local v1    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPause(Z)V
    .locals 3
    .param p1, "multitasking"    # Z

    .prologue
    .line 303
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 304
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onPause(Z)V

    goto :goto_0

    .line 308
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 3

    .prologue
    .line 389
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/cordova/api/PluginEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/api/PluginEntry;

    iget-object v1, v2, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    .line 392
    .local v1, "plugin":Lorg/apache/cordova/api/CordovaPlugin;
    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v1}, Lorg/apache/cordova/api/CordovaPlugin;->onReset()V

    goto :goto_0

    .line 396
    .end local v1    # "plugin":Lorg/apache/cordova/api/CordovaPlugin;
    :cond_1
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .param p1, "multitasking"    # Z

    .prologue
    .line 316
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 317
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onResume(Z)V

    goto :goto_0

    .line 321
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_1
    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 342
    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3, p1, p2}, Lorg/apache/cordova/api/CordovaInterface;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 343
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 354
    :goto_0
    return-object v3

    .line 346
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 347
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v3, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v3, p1, p2}, Lorg/apache/cordova/api/CordovaPlugin;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 349
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 350
    goto :goto_0

    .line 354
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public remapUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 407
    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 408
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-object v3, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v3, :cond_0

    .line 409
    iget-object v3, v0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v3, p1}, Lorg/apache/cordova/api/CordovaPlugin;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 410
    .local v2, "ret":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 415
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    .end local v2    # "ret":Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startupPlugins()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->entries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/PluginEntry;

    .line 192
    .local v0, "entry":Lorg/apache/cordova/api/PluginEntry;
    iget-boolean v2, v0, Lorg/apache/cordova/api/PluginEntry;->onload:Z

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager;->app:Lorg/apache/cordova/CordovaWebView;

    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/api/PluginEntry;->createPlugin(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)Lorg/apache/cordova/api/CordovaPlugin;

    goto :goto_0

    .line 196
    .end local v0    # "entry":Lorg/apache/cordova/api/PluginEntry;
    :cond_1
    return-void
.end method
