.class Lmobi/monaca/framework/plugin/WebSocketPlugin$1;
.super Lorg/java_websocket/server/WebSocketServer;
.source "WebSocketPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/plugin/WebSocketPlugin;->createServer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/WebSocketPlugin;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p2, "x0"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 189
    iput-object p1, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    invoke-direct {p0, p2}, Lorg/java_websocket/server/WebSocketServer;-><init>(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method private getClientId(Lorg/java_websocket/WebSocket;)Ljava/lang/String;
    .locals 2
    .param p1, "webSocket"    # Lorg/java_websocket/WebSocket;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lorg/java_websocket/WebSocket;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClose(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    .locals 6
    .param p1, "webSocket"    # Lorg/java_websocket/WebSocket;
    .param p2, "arg1"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "arg3"    # Z

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->getClientId(Lorg/java_websocket/WebSocket;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "clientId":Ljava/lang/String;
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    iget-object v4, v4, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :try_start_0
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    const-string v5, "disconnected"

    # invokes: Lmobi/monaca/framework/plugin/WebSocketPlugin;->createJSONMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v4, v5, v0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->access$000(Lmobi/monaca/framework/plugin/WebSocketPlugin;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 198
    .local v2, "message":Lorg/json/JSONObject;
    sget v4, Lmobi/monaca/framework/psedo/R$string;->key_message:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 200
    .local v3, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 201
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    iget-object v4, v4, Lmobi/monaca/framework/plugin/WebSocketPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v4, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2    # "message":Lorg/json/JSONObject;
    .end local v3    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "webSocket"    # Lorg/java_websocket/WebSocket;
    .param p2, "msg"    # Ljava/lang/Exception;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->getClientId(Lorg/java_websocket/WebSocket;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "clientId":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    const-string v5, "error"

    # invokes: Lmobi/monaca/framework/plugin/WebSocketPlugin;->createJSONMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v4, v5, v0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->access$000(Lmobi/monaca/framework/plugin/WebSocketPlugin;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 212
    .local v2, "message":Lorg/json/JSONObject;
    sget v4, Lmobi/monaca/framework/psedo/R$string;->key_message:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 214
    .local v3, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 215
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    iget-object v4, v4, Lmobi/monaca/framework/plugin/WebSocketPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v4, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2    # "message":Lorg/json/JSONObject;
    .end local v3    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onMessage(Lorg/java_websocket/WebSocket;Ljava/lang/String;)V
    .locals 6
    .param p1, "webSocket"    # Lorg/java_websocket/WebSocket;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->getClientId(Lorg/java_websocket/WebSocket;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "clientId":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->key_message:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lmobi/monaca/framework/plugin/WebSocketPlugin;->createJSONMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v4, v5, v0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->access$000(Lmobi/monaca/framework/plugin/WebSocketPlugin;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 226
    .local v2, "message":Lorg/json/JSONObject;
    sget v4, Lmobi/monaca/framework/psedo/R$string;->key_message:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 228
    .local v3, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 229
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    iget-object v4, v4, Lmobi/monaca/framework/plugin/WebSocketPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v4, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v2    # "message":Lorg/json/JSONObject;
    .end local v3    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOpen(Lorg/java_websocket/WebSocket;Lorg/java_websocket/handshake/ClientHandshake;)V
    .locals 6
    .param p1, "webSocket"    # Lorg/java_websocket/WebSocket;
    .param p2, "clientHandshake"    # Lorg/java_websocket/handshake/ClientHandshake;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->getClientId(Lorg/java_websocket/WebSocket;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "clientId":Ljava/lang/String;
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    iget-object v4, v4, Lmobi/monaca/framework/plugin/WebSocketPlugin;->sockets:Ljava/util/HashMap;

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :try_start_0
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    const-string v5, "connected"

    # invokes: Lmobi/monaca/framework/plugin/WebSocketPlugin;->createJSONMessage(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v4, v5, v0}, Lmobi/monaca/framework/plugin/WebSocketPlugin;->access$000(Lmobi/monaca/framework/plugin/WebSocketPlugin;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 242
    .local v2, "message":Lorg/json/JSONObject;
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 243
    .local v3, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 244
    iget-object v4, p0, Lmobi/monaca/framework/plugin/WebSocketPlugin$1;->this$0:Lmobi/monaca/framework/plugin/WebSocketPlugin;

    iget-object v4, v4, Lmobi/monaca/framework/plugin/WebSocketPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v4, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v2    # "message":Lorg/json/JSONObject;
    .end local v3    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
