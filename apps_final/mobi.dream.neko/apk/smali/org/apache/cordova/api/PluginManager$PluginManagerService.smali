.class Lorg/apache/cordova/api/PluginManager$PluginManagerService;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/api/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginManagerService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/api/PluginManager;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/api/PluginManager;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lorg/apache/cordova/api/PluginManager$PluginManagerService;->this$0:Lorg/apache/cordova/api/PluginManager;

    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/api/PluginManager;Lorg/apache/cordova/api/PluginManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/cordova/api/PluginManager;
    .param p2, "x1"    # Lorg/apache/cordova/api/PluginManager$1;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lorg/apache/cordova/api/PluginManager$PluginManagerService;-><init>(Lorg/apache/cordova/api/PluginManager;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 421
    const-string v0, "startup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager$PluginManagerService;->this$0:Lorg/apache/cordova/api/PluginManager;

    # getter for: Lorg/apache/cordova/api/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/apache/cordova/api/PluginManager;->access$200(Lorg/apache/cordova/api/PluginManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 429
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager$PluginManagerService;->this$0:Lorg/apache/cordova/api/PluginManager;

    # getter for: Lorg/apache/cordova/api/PluginManager;->ctx:Lorg/apache/cordova/api/CordovaInterface;
    invoke-static {v0}, Lorg/apache/cordova/api/PluginManager;->access$300(Lorg/apache/cordova/api/PluginManager;)Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/api/PluginManager$PluginManagerService$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/api/PluginManager$PluginManagerService$1;-><init>(Lorg/apache/cordova/api/PluginManager$PluginManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 434
    const/4 v0, 0x1

    .line 436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
