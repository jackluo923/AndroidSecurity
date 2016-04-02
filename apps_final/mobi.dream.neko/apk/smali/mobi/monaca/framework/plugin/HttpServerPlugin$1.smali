.class Lmobi/monaca/framework/plugin/HttpServerPlugin$1;
.super Ljava/lang/Object;
.source "HttpServerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/plugin/HttpServerPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/plugin/HttpServerPlugin;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/HttpServerPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->this$0:Lmobi/monaca/framework/plugin/HttpServerPlugin;

    iput-object p2, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 63
    :try_start_0
    iget-object v5, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "rootDir":Ljava/lang/String;
    iget-object v5, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    .local v1, "params":Lorg/json/JSONObject;
    const-string v5, "port"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, "port":I
    new-instance v5, Lmobi/monaca/framework/plugin/MonacaLocalServer;

    iget-object v6, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->this$0:Lmobi/monaca/framework/plugin/HttpServerPlugin;

    iget-object v6, v6, Lmobi/monaca/framework/plugin/HttpServerPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Lmobi/monaca/framework/plugin/MonacaLocalServer;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    # setter for: Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;
    invoke-static {v5}, Lmobi/monaca/framework/plugin/HttpServerPlugin;->access$002(Lmobi/monaca/framework/plugin/MonacaLocalServer;)Lmobi/monaca/framework/plugin/MonacaLocalServer;

    .line 67
    # getter for: Lmobi/monaca/framework/plugin/HttpServerPlugin;->localServer:Lmobi/monaca/framework/plugin/MonacaLocalServer;
    invoke-static {}, Lmobi/monaca/framework/plugin/HttpServerPlugin;->access$000()Lmobi/monaca/framework/plugin/MonacaLocalServer;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/monaca/framework/plugin/MonacaLocalServer;->start()V

    .line 68
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v3, "result":Lorg/json/JSONObject;
    const-string v5, "networks"

    invoke-static {}, Lmobi/monaca/framework/util/NetworkUtils;->getIPAddresses()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v5, "port"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    iget-object v5, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v5, v3}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "port":I
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "rootDir":Ljava/lang/String;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lmobi/monaca/framework/plugin/HttpServerPlugin$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot start server. error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
