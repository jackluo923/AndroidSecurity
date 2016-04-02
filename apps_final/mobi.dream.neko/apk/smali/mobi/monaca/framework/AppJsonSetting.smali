.class public Lmobi/monaca/framework/AppJsonSetting;
.super Ljava/lang/Object;
.source "AppJsonSetting.java"


# instance fields
.field protected appJson:Lorg/json/JSONObject;

.field protected autoHide:Z

.field private context:Landroid/content/Context;

.field protected disableCookie:Z

.field protected monacaCloudUri:Ljava/net/URI;

.field protected pushProjectId:Ljava/lang/String;

.field protected senderId:Ljava/lang/String;

.field private sendsBroadcast:Z

.field protected splashColor:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "appJson"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/monaca/framework/AppJsonSetting;->sendsBroadcast:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lmobi/monaca/framework/AppJsonSetting;->pushProjectId:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lmobi/monaca/framework/AppJsonSetting;->senderId:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lmobi/monaca/framework/AppJsonSetting;->appJson:Lorg/json/JSONObject;

    .line 44
    invoke-virtual {p0}, Lmobi/monaca/framework/AppJsonSetting;->parseSplash()V

    .line 45
    invoke-virtual {p0}, Lmobi/monaca/framework/AppJsonSetting;->parsePush()V

    .line 46
    invoke-virtual {p0}, Lmobi/monaca/framework/AppJsonSetting;->parseSecurity()V

    .line 47
    invoke-virtual {p0}, Lmobi/monaca/framework/AppJsonSetting;->parseMonacaCloud()V

    .line 48
    return-void
.end method


# virtual methods
.method public getAutoHide()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lmobi/monaca/framework/AppJsonSetting;->autoHide:Z

    return v0
.end method

.method public getDisableCookie()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lmobi/monaca/framework/AppJsonSetting;->disableCookie:Z

    return v0
.end method

.method public getMonacaCloudDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmobi/monaca/framework/AppJsonSetting;->monacaCloudUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/AppJsonSetting;->monacaCloudUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMonacaCloudPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmobi/monaca/framework/AppJsonSetting;->monacaCloudUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lmobi/monaca/framework/AppJsonSetting;->pushProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lmobi/monaca/framework/AppJsonSetting;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSplashBackgroundColor()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lmobi/monaca/framework/AppJsonSetting;->splashColor:I

    return v0
.end method

.method protected parseMonacaCloud()V
    .locals 5

    .prologue
    .line 53
    :try_start_0
    iget-object v2, p0, Lmobi/monaca/framework/AppJsonSetting;->appJson:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->monaca_cloud:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    .local v1, "monacaCloud":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    new-instance v2, Ljava/net/URI;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->end_point:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lmobi/monaca/framework/AppJsonSetting;->monacaCloudUri:Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :goto_1
    return-void

    .line 54
    .end local v1    # "monacaCloud":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "monacaCloud":Lorg/json/JSONObject;
    goto :goto_0

    .line 60
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected parsePush()V
    .locals 5

    .prologue
    .line 93
    :try_start_0
    iget-object v2, p0, Lmobi/monaca/framework/AppJsonSetting;->appJson:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->push_notification:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    .local v1, "puthNotification":Lorg/json/JSONObject;
    :goto_0
    sget v2, Lmobi/monaca/framework/psedo/R$string;->push_project_id:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmobi/monaca/framework/AppJsonSetting;->pushProjectId:Ljava/lang/String;

    .line 100
    :try_start_1
    sget v2, Lmobi/monaca/framework/psedo/R$string;->android:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->sender_id:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmobi/monaca/framework/AppJsonSetting;->senderId:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    :goto_1
    return-void

    .line 94
    .end local v1    # "puthNotification":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e1":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "puthNotification":Lorg/json/JSONObject;
    goto :goto_0

    .line 102
    .end local v0    # "e1":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected parseSecurity()V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    iget-object v2, p0, Lmobi/monaca/framework/AppJsonSetting;->appJson:Lorg/json/JSONObject;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->security:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    .local v1, "security":Lorg/json/JSONObject;
    :goto_0
    sget v2, Lmobi/monaca/framework/psedo/R$string;->disable_cookie:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lmobi/monaca/framework/AppJsonSetting;->disableCookie:Z

    .line 114
    return-void

    .line 110
    .end local v1    # "security":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "security":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method protected parseSplash()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 67
    :try_start_0
    iget-object v1, p0, Lmobi/monaca/framework/AppJsonSetting;->appJson:Lorg/json/JSONObject;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->splash:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->android:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 72
    .local v9, "splash":Lorg/json/JSONObject;
    :goto_0
    sget v1, Lmobi/monaca/framework/psedo/R$string;->background:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->color_transparent:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "backgroundColorString":Ljava/lang/String;
    sget v1, Lmobi/monaca/framework/psedo/R$string;->sharp:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/monaca/framework/psedo/R$string;->sharp:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 77
    :cond_0
    :try_start_1
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmobi/monaca/framework/AppJsonSetting;->splashColor:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :goto_1
    sget v1, Lmobi/monaca/framework/psedo/R$string;->auto_hide:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmobi/monaca/framework/AppJsonSetting;->autoHide:Z

    .line 89
    return-void

    .line 68
    .end local v7    # "backgroundColorString":Ljava/lang/String;
    .end local v9    # "splash":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 69
    .local v8, "e":Lorg/json/JSONException;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .restart local v9    # "splash":Lorg/json/JSONObject;
    goto :goto_0

    .line 78
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v7    # "backgroundColorString":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 79
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    iget-boolean v1, p0, Lmobi/monaca/framework/AppJsonSetting;->sendsBroadcast:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/monaca/framework/AppJsonSetting;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/monaca/framework/psedo/R$string;->log_invalid_color_forward:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->log_invalid_color_backward:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "logMessage":Ljava/lang/String;
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->DEBUG:Lmobi/monaca/utils/log/LogItem$LogLevel;

    const-string v5, ""

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    iget-object v1, p0, Lmobi/monaca/framework/AppJsonSetting;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    .line 85
    .end local v0    # "logItem":Lmobi/monaca/utils/log/LogItem;
    .end local v4    # "logMessage":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lmobi/monaca/framework/AppJsonSetting;->splashColor:I

    goto :goto_1
.end method

.method public sendsBroadcastDebugLog(ZLandroid/content/Context;)V
    .locals 0
    .param p1, "sendsBroadcast"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iput-boolean p1, p0, Lmobi/monaca/framework/AppJsonSetting;->sendsBroadcast:Z

    .line 123
    iput-object p2, p0, Lmobi/monaca/framework/AppJsonSetting;->context:Landroid/content/Context;

    .line 124
    return-void
.end method

.method public shouldExtractAssets()Z
    .locals 6

    .prologue
    .line 156
    :try_start_0
    iget-object v4, p0, Lmobi/monaca/framework/AppJsonSetting;->appJson:Lorg/json/JSONObject;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->loader:I

    invoke-static {v5}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 157
    .local v2, "loaderObject":Lorg/json/JSONObject;
    sget v4, Lmobi/monaca/framework/psedo/R$string;->android:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    .local v0, "androidObject":Lorg/json/JSONObject;
    sget v4, Lmobi/monaca/framework/psedo/R$string;->extract_assets:I

    invoke-static {v4}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 161
    .end local v0    # "androidObject":Lorg/json/JSONObject;
    .end local v2    # "loaderObject":Lorg/json/JSONObject;
    :goto_0
    return v3

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    goto :goto_0
.end method
