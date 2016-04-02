.class public Lmobi/monaca/framework/plugin/HttpServerPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "HttpServerPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lmobi/monaca/framework/plugin/HttpServerPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/monaca/framework/plugin/MonacaLocalServer;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    return-object v0
.end method

.method static synthetic access$002(Lmobi/monaca/framework/plugin/MonacaLocalServer;)Lmobi/monaca/framework/plugin/MonacaLocalServer;
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/MonacaLocalServer;

    .prologue
    .line 14
    sput-object p0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    return-object p0
.end method

.method private createAddressJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v0, "result":Lorg/json/JSONObject;
    const-string v1, "ip"

    const/4 v2, 0x1

    invoke-static {v2}, Lmobi/monaca/framework/util/NetworkUtils;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "port"

    sget-object v2, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    invoke-virtual {v2}, Lmobi/monaca/framework/plugin/MonacaLocalServer;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 23
    const-string v4, "getRootDirectoryAbsolutePath"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    sget-object v4, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    if-eqz v4, :cond_0

    .line 25
    sget-object v4, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    invoke-virtual {v4}, Lmobi/monaca/framework/plugin/MonacaLocalServer;->getServerRoot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    :goto_0
    move v4, v5

    .line 101
    :goto_1
    return v4

    .line 27
    :cond_0
    const-string v4, "Error server is not started yet. Plesae start the server before lcalling this"

    invoke-virtual {p3, v4}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    const-string v4, "getAddress"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    invoke-direct {p0}, Lmobi/monaca/framework/plugin/HttpServerPlugin;->createAddressJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    .local v0, "addressJSON":Lorg/json/JSONObject;
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    move v4, v5

    .line 35
    goto :goto_1

    .line 38
    .end local v0    # "addressJSON":Lorg/json/JSONObject;
    :cond_2
    const-string v4, "getStatus"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 39
    sget-object v4, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    if-nez v4, :cond_3

    .line 40
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v3, "statusJSON":Lorg/json/JSONObject;
    const-string v4, "status"

    const-string v6, "stopped"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    :goto_2
    move v4, v5

    .line 49
    goto :goto_1

    .line 44
    .end local v3    # "statusJSON":Lorg/json/JSONObject;
    :cond_3
    invoke-direct {p0}, Lmobi/monaca/framework/plugin/HttpServerPlugin;->createAddressJSON()Lorg/json/JSONObject;

    move-result-object v3

    .line 45
    .restart local v3    # "statusJSON":Lorg/json/JSONObject;
    const-string v4, "status"

    const-string v6, "started"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v4, "rootDirectoryAbsolutePath"

    sget-object v6, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    invoke-virtual {v6}, Lmobi/monaca/framework/plugin/MonacaLocalServer;->getServerRoot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 52
    .end local v3    # "statusJSON":Lorg/json/JSONObject;
    :cond_4
    const-string v4, "start"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 53
    sget-object v4, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    if-eqz v4, :cond_5

    .line 54
    sget-object v4, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    invoke-virtual {v4}, Lmobi/monaca/framework/plugin/MonacaLocalServer;->stop()V

    .line 56
    :cond_5
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_6

    .line 57
    const-string v4, "either documentRoot or params is not supplied"

    invoke-virtual {p3, v4}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    :goto_3
    move v4, v5

    .line 92
    goto :goto_1

    .line 59
    :cond_6
    new-instance v2, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;

    invoke-direct {v2, p0, p2, p3}, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;-><init>(Lmobi/monaca/framework/plugin/HttpServerPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    .line 80
    .local v2, "serverRunner":Ljava/lang/Runnable;
    new-instance v1, Lmobi/monaca/framework/plugin/HttpServerPlugin$2;

    invoke-direct {v1, p0, p3}, Lmobi/monaca/framework/plugin/HttpServerPlugin$2;-><init>(Lmobi/monaca/framework/plugin/HttpServerPlugin;Lorg/apache/cordova/api/CallbackContext;)V

    .line 86
    .local v1, "fail":Ljava/lang/Runnable;
    iget-object v4, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v4}, Lmobi/monaca/framework/MonacaApplication;->enablesBootloader()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 87
    iget-object v4, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->setup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 89
    :cond_7
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 93
    .end local v1    # "fail":Ljava/lang/Runnable;
    .end local v2    # "serverRunner":Ljava/lang/Runnable;
    :cond_8
    const-string v4, "stop"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 94
    sget-object v4, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    if-eqz v4, :cond_9

    .line 95
    sget-object v4, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    invoke-virtual {v4}, Lmobi/monaca/framework/plugin/MonacaLocalServer;->stop()V

    .line 96
    const/4 v4, 0x0

    sput-object v4, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    .line 97
    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->success()V

    :cond_9
    move v4, v5

    .line 99
    goto/16 :goto_1

    .line 101
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->TAG:Ljava/lang/String;

    const-string v1, "Monaca HttpServer plugin onDestroy"

    invoke-static {v0, v1}, Lmobi/monaca/framework/util/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->TAG:Ljava/lang/String;

    const-string v1, "closing local server"

    invoke-static {v0, v1}, Lmobi/monaca/framework/util/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;

    invoke-virtual {v0}, Lmobi/monaca/framework/plugin/MonacaLocalServer;->stop()V

    .line 119
    :cond_0
    invoke-super {p0}, Lorg/apache/cordova/api/CordovaPlugin;->onDestroy()V

    .line 120
    return-void
.end method
