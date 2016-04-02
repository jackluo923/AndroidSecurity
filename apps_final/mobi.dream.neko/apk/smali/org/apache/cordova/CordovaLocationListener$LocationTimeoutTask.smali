.class Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;
.super Ljava/util/TimerTask;
.source "CordovaLocationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/CordovaLocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationTimeoutTask"
.end annotation


# instance fields
.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private listener:Lorg/apache/cordova/CordovaLocationListener;

.field final synthetic this$0:Lorg/apache/cordova/CordovaLocationListener;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CordovaLocationListener;Lorg/apache/cordova/api/CallbackContext;Lorg/apache/cordova/CordovaLocationListener;)V
    .locals 1
    .param p2, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .param p3, "listener"    # Lorg/apache/cordova/CordovaLocationListener;

    .prologue
    const/4 v0, 0x0

    .line 232
    iput-object p1, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->this$0:Lorg/apache/cordova/CordovaLocationListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 229
    iput-object v0, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 230
    iput-object v0, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->listener:Lorg/apache/cordova/CordovaLocationListener;

    .line 233
    iput-object p2, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 234
    iput-object p3, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->listener:Lorg/apache/cordova/CordovaLocationListener;

    .line 235
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 239
    iget-object v2, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->listener:Lorg/apache/cordova/CordovaLocationListener;

    # getter for: Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;
    invoke-static {v2}, Lorg/apache/cordova/CordovaLocationListener;->access$000(Lorg/apache/cordova/CordovaLocationListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/api/CallbackContext;

    .line 240
    .local v0, "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    iget-object v2, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    if-ne v2, v0, :cond_0

    .line 241
    iget-object v2, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->listener:Lorg/apache/cordova/CordovaLocationListener;

    # getter for: Lorg/apache/cordova/CordovaLocationListener;->callbacks:Ljava/util/List;
    invoke-static {v2}, Lorg/apache/cordova/CordovaLocationListener;->access$000(Lorg/apache/cordova/CordovaLocationListener;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    .end local v0    # "callbackContext":Lorg/apache/cordova/api/CallbackContext;
    :cond_1
    iget-object v2, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->listener:Lorg/apache/cordova/CordovaLocationListener;

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaLocationListener;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 247
    iget-object v2, p0, Lorg/apache/cordova/CordovaLocationListener$LocationTimeoutTask;->listener:Lorg/apache/cordova/CordovaLocationListener;

    # invokes: Lorg/apache/cordova/CordovaLocationListener;->stop()V
    invoke-static {v2}, Lorg/apache/cordova/CordovaLocationListener;->access$100(Lorg/apache/cordova/CordovaLocationListener;)V

    .line 249
    :cond_2
    return-void
.end method
