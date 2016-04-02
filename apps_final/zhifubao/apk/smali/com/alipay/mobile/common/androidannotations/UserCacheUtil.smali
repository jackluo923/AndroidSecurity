.class public final Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;
.super Ljava/lang/Object;
.source "UserCacheUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 28
    const-class v1, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 26
    sput-object v0, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 30
    :cond_0
    return-void
.end method

.method public static final get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a()V

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/UserInfoUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    new-instance v2, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil$1;

    invoke-direct {v2}, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil$1;-><init>()V

    invoke-virtual {v1, v0, p0, v2}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static final getSharedPrefString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 62
    .line 65
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/UserInfoUtil;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    const-string/jumbo v3, "userStateSharedDataStore"

    .line 68
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 73
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    const-string/jumbo v2, "userStateSharedDataStore"

    .line 74
    const/4 v3, 0x0

    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 77
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a()V

    .line 49
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/UserInfoUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/alipay/mobile/common/androidannotations/UserCacheUtil;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v1, v0, p0, p1}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

.method public static final putSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/androidannotations/UserInfoUtil;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    :goto_0
    return v0

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    .line 91
    const-string/jumbo v3, "userStateSharedDataStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method
