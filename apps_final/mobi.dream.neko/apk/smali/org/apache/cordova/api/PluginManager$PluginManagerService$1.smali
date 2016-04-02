.class Lorg/apache/cordova/api/PluginManager$PluginManagerService$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/api/PluginManager$PluginManagerService;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/api/PluginManager$PluginManagerService;


# direct methods
.method constructor <init>(Lorg/apache/cordova/api/PluginManager$PluginManagerService;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lorg/apache/cordova/api/PluginManager$PluginManagerService$1;->this$1:Lorg/apache/cordova/api/PluginManager$PluginManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager$PluginManagerService$1;->this$1:Lorg/apache/cordova/api/PluginManager$PluginManagerService;

    iget-object v0, v0, Lorg/apache/cordova/api/PluginManager$PluginManagerService;->this$0:Lorg/apache/cordova/api/PluginManager;

    # getter for: Lorg/apache/cordova/api/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/apache/cordova/api/PluginManager;->access$200(Lorg/apache/cordova/api/PluginManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 432
    return-void
.end method
