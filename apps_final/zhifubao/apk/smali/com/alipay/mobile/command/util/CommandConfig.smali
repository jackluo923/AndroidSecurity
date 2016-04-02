.class public Lcom/alipay/mobile/command/util/CommandConfig;
.super Ljava/lang/Object;


# static fields
.field public static RELEASE_TYPE:Ljava/lang/String;

.field private static a:Landroid/content/Context;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/command/util/CommandConfig;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/util/CommandConfig;->RELEASE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/util/CommandConfig;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getReleaseType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/alipay/mobile/command/util/CommandConfig;->RELEASE_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "channel.config"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo v1, "release_type"

    const-string/jumbo v2, "unkown"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/command/util/CommandConfig;->RELEASE_TYPE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/command/util/CommandConfig;->RELEASE_TYPE:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "util"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getReleaseType error occurr "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "unkown"

    sput-object v0, Lcom/alipay/mobile/command/util/CommandConfig;->RELEASE_TYPE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static initial(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u521d\u59cb\u5316commandCenter\u8fd0\u884c\u73af\u5883,\u4e0d\u5141\u8bb8context\u4e3a\u7a7a."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/command/util/CommandConfig;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput-object p0, Lcom/alipay/mobile/command/util/CommandConfig;->a:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isInWallet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    :cond_3
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/command/util/CommandConfig;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "util"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "config initial Error."

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/command/util/CommandConfig;->b:Z

    return v0
.end method

.method public static isRCVersion(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/command/util/CommandConfig;->getReleaseType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
