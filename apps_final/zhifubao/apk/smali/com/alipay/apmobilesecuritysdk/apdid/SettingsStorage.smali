.class public Lcom/alipay/apmobilesecuritysdk/apdid/SettingsStorage;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_NAME_APDID_VALID_TIME:Ljava/lang/String; = "vkey_valid"

.field public static final KEY_NAME_APPLIST:Ljava/lang/String; = "vkey_applist"

.field public static final KEY_NAME_APPLIST_VERSION:Ljava/lang/String; = "vkey_applist_version"

.field public static final KEY_NAME_LOG_SWITCH:Ljava/lang/String; = "log_switch"

.field public static final PRIVATE_PREFS_NAME:Ljava/lang/String; = "vkeyid_settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApdidValidTime(Landroid/content/Context;)J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "vkeyid_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "vkey_valid"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAppList(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "vkey_applist"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getAppListVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "vkey_applist_version"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getLogSwitch(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v1, "vkeyid_settings"

    const-string/jumbo v2, "log_switch"

    const-string/jumbo v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/alipay/security/mobile/module/localstorage/SharePreferenceStorage;->getDataFromSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static saveApdidValidTime(Landroid/content/Context;J)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vkey_valid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static saveAppList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vkey_applist"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static saveAppListVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vkey_applist_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static saveLogSwitch(Landroid/content/Context;Z)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "vkeyid_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "log_switch"

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1"

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->getSeed()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "0"

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/module/crypto/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
