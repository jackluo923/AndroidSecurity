.class public Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;
.super Lorg/apache/cordova/api/Plugin;
.source "MonacaNativeUIPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 25
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_retrieve:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->retrieveStyle(Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;

    move-result-object v5

    .line 106
    :goto_0
    return-object v5

    .line 27
    :cond_0
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_update:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    .local v2, "ids":Lorg/json/JSONArray;
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "id":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 31
    new-instance v2, Lorg/json/JSONArray;

    .end local v2    # "ids":Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 33
    .restart local v2    # "ids":Lorg/json/JSONArray;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "styleString":Ljava/lang/String;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, "styleObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v2, v3}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->updateStyle(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/apache/cordova/api/PluginResult;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    .line 34
    .end local v3    # "styleObject":Lorg/json/JSONObject;
    .end local v4    # "styleString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/json/JSONArray;

    .end local v2    # "ids":Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .restart local v2    # "ids":Lorg/json/JSONArray;
    goto :goto_1

    .line 44
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "styleString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 45
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 46
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 49
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "styleString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->updateStyle(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/apache/cordova/api/PluginResult;

    move-result-object v5

    goto :goto_0

    .line 52
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "ids":Lorg/json/JSONArray;
    :cond_3
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_bulkily:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 53
    invoke-virtual {p0, p2}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->updateStyleBulkily(Lorg/json/JSONArray;)Lorg/apache/cordova/api/PluginResult;

    move-result-object v5

    goto/16 :goto_0

    .line 54
    :cond_4
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_info:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 55
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->getInfoForJavaScript()Lorg/apache/cordova/api/PluginResult;

    move-result-object v5

    goto/16 :goto_0

    .line 57
    :cond_5
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_showspinner:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 58
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v5

    new-instance v6, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$1;

    invoke-direct {v6, p0, p2}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$1;-><init>(Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;Lorg/json/JSONArray;)V

    invoke-virtual {v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 75
    :cond_6
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_spinnertitle:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 76
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v5

    new-instance v6, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$2;

    invoke-direct {v6, p0, p2}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$2;-><init>(Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;Lorg/json/JSONArray;)V

    invoke-virtual {v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 92
    :cond_7
    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_hidespinner:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 93
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v5

    new-instance v6, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$3;

    invoke-direct {v6, p0}, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin$3;-><init>(Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;)V

    invoke-virtual {v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 106
    :cond_8
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0
.end method

.method public getInfoForJavaScript()Lorg/apache/cordova/api/PluginResult;
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->getInfoForJavaScript()Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    .local v0, "info":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0
.end method

.method protected getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaPageActivity;

    return-object v0
.end method

.method public retrieveStyle(Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 3
    .param p1, "componentId"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1, p1}, Lmobi/monaca/framework/MonacaPageActivity;->getStyle(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    .local v0, "style":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0
.end method

.method public updateStyle(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/apache/cordova/api/PluginResult;
    .locals 2
    .param p1, "ids"    # Lorg/json/JSONArray;
    .param p2, "style"    # Lorg/json/JSONObject;

    .prologue
    .line 116
    iget-object v0, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaPageActivity;

    new-instance v1, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;

    invoke-direct {v1, p1, p2}, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;-><init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->updateStyle(Lmobi/monaca/framework/nativeui/UpdateStyleQuery;)V

    .line 117
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    return-object v0
.end method

.method public updateStyleBulkily(Lorg/json/JSONArray;)Lorg/apache/cordova/api/PluginResult;
    .locals 8
    .param p1, "args"    # Lorg/json/JSONArray;

    .prologue
    .line 127
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 128
    .local v3, "queriesJson":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "queries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/UpdateStyleQuery;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 131
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 132
    .local v4, "queryJson":Lorg/json/JSONObject;
    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_ids:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 133
    .local v1, "ids":Lorg/json/JSONArray;
    sget v6, Lmobi/monaca/framework/psedo/R$string;->nc_key_style:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 134
    .local v5, "style":Lorg/json/JSONObject;
    new-instance v6, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;

    invoke-direct {v6, v1, v5}, Lmobi/monaca/framework/nativeui/UpdateStyleQuery;-><init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "ids":Lorg/json/JSONArray;
    .end local v4    # "queryJson":Lorg/json/JSONObject;
    .end local v5    # "style":Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Lmobi/monaca/framework/plugin/MonacaNativeUIPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v6, v2}, Lmobi/monaca/framework/MonacaPageActivity;->updateStyleBulkily(Ljava/util/List;)V

    .line 138
    new-instance v6, Lorg/apache/cordova/api/PluginResult;

    sget-object v7, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v6, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 140
    .end local v0    # "i":I
    .end local v2    # "queries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmobi/monaca/framework/nativeui/UpdateStyleQuery;>;"
    :goto_1
    return-object v6

    :cond_1
    new-instance v6, Lorg/apache/cordova/api/PluginResult;

    sget-object v7, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v6, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_1
.end method
