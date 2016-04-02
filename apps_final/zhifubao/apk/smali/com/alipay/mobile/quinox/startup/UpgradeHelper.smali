.class public Lcom/alipay/mobile/quinox/startup/UpgradeHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static e:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v4, "ctch1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ctch1"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    const-string/jumbo v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "\\."

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v2, v1

    :goto_1
    const/4 v5, 0x4

    if-lt v2, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gt v5, v6, :cond_1

    if-eq v5, v6, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UpgradeHelper"

    const-string/jumbo v3, "isUpgrade(Exception)"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    return-object v0
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->e:Lcom/alipay/mobile/quinox/startup/UpgradeHelper;

    return-void
.end method


# virtual methods
.method public clearOldPluginFiles()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "UpgradeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clearOldPluginFiles start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    const-string/jumbo v1, "plugins"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;)Z

    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    const-string/jumbo v1, "plugins_lib"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;)Z

    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    const-string/jumbo v1, "plugins_opt"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;)Z

    const-string/jumbo v0, "UpgradeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "clearOldPluginFiles end: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 4

    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UpgradeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPackageName "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "_config"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Z

    return-void
.end method

.method public isUpgrade()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Z

    return v0
.end method

.method public setProductVersion()V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/UpgradeHelper;->release()V

    return-void
.end method
