.class Lorg/apache/cordova/api/PluginManager$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/api/PluginManager;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$rawArgs:Ljava/lang/String;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/api/PluginManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/cordova/api/PluginManager$1;->this$0:Lorg/apache/cordova/api/PluginManager;

    iput-object p2, p0, Lorg/apache/cordova/api/PluginManager$1;->val$service:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/api/PluginManager$1;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/api/PluginManager$1;->val$callbackId:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/api/PluginManager$1;->val$rawArgs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager$1;->this$0:Lorg/apache/cordova/api/PluginManager;

    iget-object v1, p0, Lorg/apache/cordova/api/PluginManager$1;->val$service:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/cordova/api/PluginManager$1;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/cordova/api/PluginManager$1;->val$callbackId:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/cordova/api/PluginManager$1;->val$rawArgs:Ljava/lang/String;

    # invokes: Lorg/apache/cordova/api/PluginManager;->execHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/cordova/api/PluginManager;->access$100(Lorg/apache/cordova/api/PluginManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/apache/cordova/api/PluginManager$1;->this$0:Lorg/apache/cordova/api/PluginManager;

    # getter for: Lorg/apache/cordova/api/PluginManager;->numPendingUiExecs:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/apache/cordova/api/PluginManager;->access$200(Lorg/apache/cordova/api/PluginManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 222
    return-void
.end method
