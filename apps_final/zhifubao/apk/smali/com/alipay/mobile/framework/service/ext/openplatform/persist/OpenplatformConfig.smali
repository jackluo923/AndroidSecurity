.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;
.super Ljava/lang/Object;
.source "OpenplatformConfig.java"


# static fields
.field private static final APP_STORE_CONFIG:Ljava/lang/String; = "APP_STORE_CONFIG"

.field private static final APP_STORE_FIRST_TIME:Ljava/lang/String; = "APP_STORE_FIRST_TIME_"

.field private static final KEY_FIRST_TIME:Ljava/lang/String;

.field private static final KEY_HAS_MOVED_APP:Ljava/lang/String; = "key_has_moved_app"

.field private static final KEY_LAST_LOGIN:Ljava/lang/String; = "APP_STORE_LOGIN_VERSION"

.field private static final KEY_LAST_SECURITY_STAGE:Ljava/lang/String; = "key_last_security_stage"

.field private static final KEY_LAST_USER:Ljava/lang/String; = "key_last_user"

.field private static final KEY_MORE_APP_NEW_FLAG:Ljava/lang/String; = "key_more_app_new_flag"

.field private static final KEY_NEED_FETCH_APPS:Ljava/lang/String; = "key_need_fetch_apps"

.field private static final KEY_NEED_FETCH_SOCIALSTAGE:Ljava/lang/String; = "key_need_fetch_socialstage"

.field private static final KEY_NEED_FETCH_SRARCHSTAGE:Ljava/lang/String; = "key_need_fetch_searchstage"

.field private static final KEY_NEED_FETCH_USERSTAGE:Ljava/lang/String; = "key_need_fetch_userstage"

.field private static final KEY_NEED_REFRESH_HOME:Ljava/lang/String; = "key_need_refresh_home"

.field private static final KEY_NEED_REFRESH_MORE:Ljava/lang/String; = "key_need_refresh_more"

.field private static final OLD_APP_STORE_FILE:Ljava/lang/String; = "APP_STORE_FIRST_TIME_8.3.0.092601"

.field private static final TAG:Ljava/lang/String; = "OpenplatformConfig"

.field private static sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;


# instance fields
.field private config:Landroid/content/SharedPreferences;

.field private oldConfig:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APP_STORE_FIRST_TIME_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->KEY_FIRST_TIME:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    .line 49
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    .line 54
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "APP_STORE_FIRST_TIME_8.3.0.092601"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "APP_STORE_CONFIG"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method private static getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 283
    .line 285
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://com.alipay.setting/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 288
    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    .line 289
    const-string/jumbo v3, ""

    .line 290
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, ""

    .line 287
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 291
    if-nez v1, :cond_0

    .line 302
    :goto_0
    return v7

    .line 295
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v6

    .line 298
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v7, v0

    .line 302
    goto :goto_0

    :cond_1
    move v0, v7

    .line 296
    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v7

    .line 300
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "OpenplatformConfig"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    .line 64
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->sOpenplatformConfig:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    return-object v0
.end method


# virtual methods
.method public clearHasMovedAppPreference()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "key_has_moved_app"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    :cond_0
    return-void
.end method

.method public getHasMovedApp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->oldConfig:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_has_moved_app"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    :cond_0
    return v0
.end method

.method public getLastUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "key_last_user"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "-1"

    goto :goto_0
.end method

.method public getMoreAppNewFlag()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_more_app_new_flag"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    :cond_0
    return v0
.end method

.method public getNeedFetchApps()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_apps"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 185
    :cond_0
    return v0
.end method

.method public getNeedFetchSearchStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_searchstage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 215
    :cond_0
    return v0
.end method

.method public getNeedFetchSocialStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_socialstage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 230
    :cond_0
    return v0
.end method

.method public getNeedFetchUserStage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_fetch_userstage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    :cond_0
    return v0
.end method

.method public getNeedRefreshHome()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_refresh_home"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    :cond_0
    return v0
.end method

.method public getNeedRefreshMore()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "key_need_refresh_more"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    :cond_0
    return v0
.end method

.method public isFirstLoginThisVersion()Z
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "APP_STORE_LOGIN_VERSION"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFirstTime()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 68
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->KEY_FIRST_TIME:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    :cond_0
    return v0
.end method

.method public isPreOpen()Z
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 277
    const-string/jumbo v1, "appcenter_pre"

    .line 276
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRefreshSecurityStage(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 242
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "key_last_security_stage"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 248
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 250
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    .line 251
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 252
    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 253
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long v3, v6, v4

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    move v0, v1

    .line 255
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "OpenplatformConfig"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFirstTime()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->KEY_FIRST_TIME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    :cond_0
    return-void
.end method

.method public setLastSecurityStageSetting(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string/jumbo v2, "key_last_security_stage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 272
    :cond_0
    return-void
.end method

.method public setLastUser(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    const-string/jumbo v1, "key_last_user"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    :cond_0
    return-void
.end method

.method public setLoginVersion()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "APP_STORE_LOGIN_VERSION"

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    :cond_0
    return-void
.end method

.method public setMoreAppNewFlag(Z)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "key_more_app_new_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    :cond_0
    return-void
.end method

.method public setNeedFetchApps(Z)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "key_need_fetch_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    :cond_0
    return-void
.end method

.method public setNeedFetchSearchStage(Z)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "key_need_fetch_searchstage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    :cond_0
    return-void
.end method

.method public setNeedFetchSocialStage(Z)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "key_need_fetch_socialstage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    :cond_0
    return-void
.end method

.method public setNeedFetchUserStage(Z)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "key_need_fetch_userstage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    :cond_0
    return-void
.end method

.method public setNeedRefreshHome(Z)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "key_need_refresh_home"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    :cond_0
    return-void
.end method

.method public setNeedRefreshMore(Z)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "key_need_refresh_more"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    :cond_0
    return-void
.end method
