.class public Lcom/alipay/mobile/command/trigger/PublicApiInvoke;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBizProcess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v0, "manager"

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "\u57fa\u4e8epublicApi\u8bf7\u6c42Context \u4e3a\u7a7a."

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "manager"

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "\u57fa\u4e8epublicApi\u8bf7\u6c42\u5236\u5b9a\u4efb\u52a1\u4f46\u662ftaskid\u4e3a\u7a7a\u3002"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "trigger_type"

    sget-object v2, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->PUSH:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "trigger_fm_context"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "#true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static doBizProcess(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/MapConstructor;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :try_start_0
    const-string/jumbo v0, "manager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u57fa\u4e8epublicApi\u8bf7\u6c42Context \u4e3a\u7a7a."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/command/util/CommandConfig;->initial(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/alipay/mobile/command/engine/TaskExeService;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_1
    new-instance v0, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v0}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v3, "SYS_TYPE"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    const-string/jumbo v3, "TASK"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v0}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v3, "OS_VERSION"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v0}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v3, "MOBILE_MODEL"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v0}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v3, "MOBILE_BRAND"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v0}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v3, "UTDID"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v0}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v3, "USER_ID"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    new-instance v3, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v3}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    const-string/jumbo v4, "IMEI"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/command/api/model/MapConstructor;->setValue(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "trigger_type"

    sget-object v1, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->API:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/command/util/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\"{\""

    const-string/jumbo v3, "{\""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\"}\""

    const-string/jumbo v3, "\"}"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\"["

    const-string/jumbo v3, "["

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "]\""

    const-string/jumbo v3, "]"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_biz_context"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "trigger_fm_context"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "service_initial_flag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_initial"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "manager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "PublicApi \u5f02\u5e38"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move-object v1, p1

    goto/16 :goto_1
.end method
