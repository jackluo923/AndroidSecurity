.class public Lmobi/monaca/framework/bootloader/BootloaderPreferences;
.super Ljava/lang/Object;
.source "BootloaderPreferences.java"


# static fields
.field protected static final APP_VERSION_CODE_KEY:Ljava/lang/String;

.field protected static final BOOTLOADER_PREFERENCES_NAME:Ljava/lang/String;

.field protected static final KEY_LAST_UPDATE:Ljava/lang/String;


# instance fields
.field protected bootloaderPreferences:Landroid/content/SharedPreferences;

.field protected context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->BOOTLOADER_PREFERENCES_NAME:Ljava/lang/String;

    .line 14
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->APP_VERSION_CODE_KEY:Ljava/lang/String;

    .line 15
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->KEY_LAST_UPDATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->context:Landroid/content/Context;

    .line 19
    sget-object v0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->BOOTLOADER_PREFERENCES_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->bootloaderPreferences:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method

.method private getCurrentPackageLastUpdated()J
    .locals 5

    .prologue
    .line 38
    :try_start_0
    iget-object v2, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 39
    .local v1, "p":Landroid/content/pm/PackageInfo;
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 40
    .end local v1    # "p":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->bootloaderPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    return-void
.end method

.method public getAppVersionCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->bootloaderPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->APP_VERSION_CODE_KEY:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAppPackageUpdated()Z
    .locals 6

    .prologue
    .line 32
    iget-object v2, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->bootloaderPreferences:Landroid/content/SharedPreferences;

    sget-object v3, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->KEY_LAST_UPDATE:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 33
    .local v0, "savedLastUpdate":J
    invoke-direct {p0}, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->getCurrentPackageLastUpdated()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveAppVersionCode(Ljava/lang/String;)V
    .locals 4
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->bootloaderPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->APP_VERSION_CODE_KEY:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public updateLastPackageUpdatedTime()V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->bootloaderPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->KEY_LAST_UPDATE:Ljava/lang/String;

    invoke-direct {p0}, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->getCurrentPackageLastUpdated()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    return-void
.end method
