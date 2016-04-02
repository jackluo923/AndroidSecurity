.class Lorg/apache/cordova/ExposedJsApi;
.super Ljava/lang/Object;
.source "ExposedJsApi.java"


# instance fields
.field private jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field private pluginManager:Lorg/apache/cordova/api/PluginManager;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/api/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 0
    .param p1, "pluginManager"    # Lorg/apache/cordova/api/PluginManager;
    .param p2, "jsMessageQueue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/cordova/ExposedJsApi;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    .line 38
    iput-object p2, p0, Lorg/apache/cordova/ExposedJsApi;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 39
    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;
    .param p4, "arguments"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    if-nez p4, :cond_0

    .line 46
    const-string v1, "@Null arguments."

    .line 64
    :goto_0
    return-object v1

    .line 49
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/ExposedJsApi;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/cordova/NativeToJsMessageQueue;->setPaused(Z)V

    .line 52
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sput-object v2, Lorg/apache/cordova/CordovaResourceApi;->jsThread:Ljava/lang/Thread;

    .line 54
    iget-object v2, p0, Lorg/apache/cordova/ExposedJsApi;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/apache/cordova/api/PluginManager;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, ""

    .line 57
    .local v1, "ret":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/cordova/ExposedJsApi;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/cordova/NativeToJsMessageQueue;->popAndEncode(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 64
    iget-object v2, p0, Lorg/apache/cordova/ExposedJsApi;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v2, v4}, Lorg/apache/cordova/NativeToJsMessageQueue;->setPaused(Z)V

    goto :goto_0

    .line 60
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    iget-object v2, p0, Lorg/apache/cordova/ExposedJsApi;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v2, v4}, Lorg/apache/cordova/NativeToJsMessageQueue;->setPaused(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/cordova/ExposedJsApi;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v3, v4}, Lorg/apache/cordova/NativeToJsMessageQueue;->setPaused(Z)V

    throw v2
.end method

.method public retrieveJsMessages(Z)Ljava/lang/String;
    .locals 1
    .param p1, "fromOnlineEvent"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/cordova/ExposedJsApi;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue;->popAndEncode(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNativeToJsBridgeMode(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/cordova/ExposedJsApi;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue;->setBridgeMode(I)V

    .line 71
    return-void
.end method
