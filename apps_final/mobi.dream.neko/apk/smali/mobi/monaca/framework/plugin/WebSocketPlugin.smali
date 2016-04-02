.class public Lmobi/monaca/framework/plugin/WebSocketPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "WebSocketPlugin.java"


# instance fields
.field callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field port:I

.field server:Lorg/java_websocket/server/WebSocketServer;

.field sockets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lmobi/monaca/framework/plugin/WebSocketPlugin;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/WebSocketPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->createJSONMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private createAddressJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .local v0, "result":Lorg/json/JSONObject;
    const-string v1, "networks"

    invoke-static {}, Lmobi/monaca/framework/util/NetworkUtils;->getIPAddresses()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v1, "port"

    iget v2, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->port:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    return-object v0
.end method

.method private createJSONMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v0, "message":Lorg/json/JSONObject;
    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "client"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    return-object v0
.end method

.method private createServer(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 189
    new-instance v0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;-><init>(Lmobi/monaca/framework/plugin/WebSocketPlugin;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    .line 258
    return-void
.end method

.method private stopServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    invoke-virtual {v0}, Lorg/java_websocket/server/WebSocketServer;->stop()V

    .line 163
    iget-object v0, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    .line 165
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 17
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    const-string v15, "start"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 34
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    if-nez v15, :cond_0

    .line 35
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 36
    .local v9, "params":Lorg/json/JSONObject;
    const-string v15, "port"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->port:I

    .line 37
    move-object/from16 v0, p0

    iget v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->port:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->createServer(I)V

    .line 38
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    invoke-virtual {v15}, Lorg/java_websocket/server/WebSocketServer;->start()V

    .line 42
    .end local v9    # "params":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->createAddressJSON()Lorg/json/JSONObject;

    move-result-object v11

    .line 43
    .local v11, "result":Lorg/json/JSONObject;
    sget v15, Lmobi/monaca/framework/psedo/R$string;->nc_key_event:I

    invoke-static {v15}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "server:started"

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    new-instance v10, Lorg/apache/cordova/api/PluginResult;

    sget-object v15, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v10, v15, v11}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 45
    .local v10, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 46
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 47
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lmobi/monaca/framework/plugin/WebSocketPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v10    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    .end local v11    # "result":Lorg/json/JSONObject;
    :goto_0
    const/4 v15, 0x1

    .line 158
    :goto_1
    return v15

    .line 48
    :catch_0
    move-exception v6

    .line 49
    .local v6, "e":Ljava/net/SocketException;
    invoke-virtual {v6}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v6    # "e":Ljava/net/SocketException;
    :cond_1
    const-string v15, "getStatus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 57
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    if-nez v15, :cond_2

    .line 58
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v13, "statusJSON":Lorg/json/JSONObject;
    const-string v15, "status"

    const-string v16, "stopped"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 75
    .end local v13    # "statusJSON":Lorg/json/JSONObject;
    :goto_2
    const/4 v15, 0x1

    goto :goto_1

    .line 64
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->createAddressJSON()Lorg/json/JSONObject;

    move-result-object v13

    .line 65
    .restart local v13    # "statusJSON":Lorg/json/JSONObject;
    const-string v15, "status"

    const-string v16, "started"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-direct {v4, v15}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 67
    .local v4, "clients":Lorg/json/JSONArray;
    const-string v15, "clients"

    invoke-virtual {v13, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 69
    .end local v4    # "clients":Lorg/json/JSONArray;
    .end local v13    # "statusJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 70
    .restart local v6    # "e":Ljava/net/SocketException;
    invoke-virtual {v6}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_2

    .line 78
    .end local v6    # "e":Ljava/net/SocketException;
    :cond_3
    const-string v15, "getAddress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 79
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    if-nez v15, :cond_4

    .line 80
    const-string v15, "You need to start server first"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 92
    :goto_3
    const/4 v15, 0x1

    goto :goto_1

    .line 84
    :cond_4
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->createAddressJSON()Lorg/json/JSONObject;

    move-result-object v11

    .line 85
    .restart local v11    # "result":Lorg/json/JSONObject;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 86
    .end local v11    # "result":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    .line 87
    .restart local v6    # "e":Ljava/net/SocketException;
    invoke-virtual {v6}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_3

    .line 95
    .end local v6    # "e":Ljava/net/SocketException;
    :cond_5
    const-string v15, "getClients"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    if-nez v15, :cond_6

    .line 97
    const-string v15, "You need to start server first"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 102
    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 99
    :cond_6
    new-instance v8, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v8, "message":Lorg/json/JSONArray;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONArray;)V

    goto :goto_4

    .line 105
    .end local v8    # "message":Lorg/json/JSONArray;
    :cond_7
    const-string v15, "send"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    if-nez v15, :cond_8

    .line 107
    const-string v15, "You need to start server before sending a message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 120
    :goto_5
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 109
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 110
    .restart local v9    # "params":Lorg/json/JSONObject;
    const-string v15, "clientId"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "clientId":Ljava/lang/String;
    sget v15, Lmobi/monaca/framework/psedo/R$string;->key_message:I

    invoke-static {v15}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/java_websocket/WebSocket;

    .line 114
    .local v14, "webSocket":Lorg/java_websocket/WebSocket;
    invoke-virtual {v14, v8}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V

    goto :goto_5

    .line 117
    .end local v14    # "webSocket":Lorg/java_websocket/WebSocket;
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "client "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not yet connected"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 123
    .end local v3    # "clientId":Ljava/lang/String;
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "params":Lorg/json/JSONObject;
    :cond_a
    const-string v15, "sendToAllClients"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    if-nez v15, :cond_b

    .line 125
    const-string v15, "You need to start server before sending a message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 140
    :goto_6
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 127
    :cond_b
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 128
    .restart local v9    # "params":Lorg/json/JSONObject;
    sget v15, Lmobi/monaca/framework/psedo/R$string;->key_message:I

    invoke-static {v15}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .restart local v8    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 131
    .local v5, "clients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    .local v2, "client":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/java_websocket/WebSocket;

    .line 133
    .restart local v14    # "webSocket":Lorg/java_websocket/WebSocket;
    invoke-virtual {v14, v8}, Lorg/java_websocket/WebSocket;->send(Ljava/lang/String;)V

    goto :goto_7

    .line 135
    .end local v2    # "client":Ljava/lang/String;
    .end local v14    # "webSocket":Lorg/java_websocket/WebSocket;
    :cond_c
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v12, "resultJSON":Lorg/json/JSONObject;
    const-string v15, "send"

    const-string v16, "success"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v15, "clientsSent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_6

    .line 143
    .end local v5    # "clients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "params":Lorg/json/JSONObject;
    .end local v12    # "resultJSON":Lorg/json/JSONObject;
    :cond_d
    const-string v15, "stop"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    if-eqz v15, :cond_e

    .line 146
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->stopServer()V

    .line 147
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 156
    :goto_8
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 148
    :catch_3
    move-exception v6

    .line 149
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_8

    .line 153
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v15, "server not yet started"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_8

    .line 158
    :cond_f
    invoke-super/range {p0 .. p3}, Lorg/apache/cordova/api/CordovaPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v15

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin;->server:Lorg/java_websocket/server/WebSocketServer;

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    invoke-direct {p0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->stopServer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/apache/cordova/api/CordovaPlugin;->onDestroy()V

    .line 186
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
