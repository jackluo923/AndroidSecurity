.class public Lorg/apache/cordova/Echo;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Echo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-string v3, "echo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    .local v0, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 46
    .end local v0    # "result":Ljava/lang/String;
    :goto_1
    return v1

    .line 30
    :cond_0
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_1
    const-string v3, "echoAsync"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    .restart local v0    # "result":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lorg/apache/cordova/Echo;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/Echo$1;

    invoke-direct {v3, p0, p3, v0}, Lorg/apache/cordova/Echo$1;-><init>(Lorg/apache/cordova/Echo;Lorg/apache/cordova/api/CallbackContext;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 34
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 41
    :cond_3
    const-string v3, "echoArrayBuffer"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 42
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CordovaArgs;->getArrayBuffer(I)[B

    move-result-object v0

    .line 43
    .local v0, "result":[B
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success([B)V

    goto :goto_1

    .end local v0    # "result":[B
    :cond_4
    move v1, v2

    .line 46
    goto :goto_1
.end method
