.class public Lcom/ali/user/mobile/AliUserInit;
.super Ljava/lang/Object;
.source "AliUserInit.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    .line 41
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    .line 46
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ali/user/mobile/AliUserInit;->b:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_1
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 49
    sget-object v0, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->init(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/DeviceInfo;->init(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->init(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/ali/user/mobile/info/NetWorkInfo;->getInstance()Lcom/ali/user/mobile/info/NetWorkInfo;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/NetWorkInfo;->init(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/ali/user/mobile/info/LocationInfo;->getInstance()Lcom/ali/user/mobile/info/LocationInfo;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/LocationInfo;->init(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/ali/user/mobile/info/SensorInfoCollector;->getInstance()Lcom/ali/user/mobile/info/SensorInfoCollector;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/AliUserInit;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/SensorInfoCollector;->init(Landroid/content/Context;)V

    .line 55
    return-void

    :cond_0
    move v0, v1

    .line 46
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    sput-boolean v1, Lcom/ali/user/mobile/AliUserInit;->b:Z

    goto :goto_1
.end method

.method public static isAppDebug(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/ali/user/mobile/AliUserInit;->b:Z

    return v0
.end method

.method public static isDebugable()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/ali/user/mobile/AliUserInit;->b:Z

    return v0
.end method

.method public static setAppDataProvider(Lcom/ali/user/mobile/dataprovider/AppDataProvider;)V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/info/AppInfo;->setDataProvider(Lcom/ali/user/mobile/dataprovider/AppDataProvider;)V

    .line 59
    return-void
.end method

.method public static setAppId(Lcom/ali/user/mobile/AppIdDef$AppIdIndex;)V
    .locals 0

    .prologue
    .line 85
    invoke-static {p0}, Lcom/ali/user/mobile/AppIdDef;->setAppId(Lcom/ali/user/mobile/AppIdDef$AppIdIndex;)V

    .line 86
    return-void
.end method

.method public static setUid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/ali/user/mobile/AliUserInit;->c:Ljava/lang/String;

    .line 35
    return-void
.end method
