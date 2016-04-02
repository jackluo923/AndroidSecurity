.class public Lcom/alipay/mobile/apk/common/ZPackageInfo;
.super Landroid/content/pm/PackageInfo;


# instance fields
.field private a:Ljava/lang/String;

.field public activities:[Lcom/alipay/mobile/apk/common/ZActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/PackageInfo;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->gids:[I

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->gids:[I

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->sharedUserId:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iput v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->sharedUserLabel:I

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->versionCode:I

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/apk/common/ZPackageInfo;->a(Landroid/content/pm/PackageInfo;)V

    goto :goto_0
.end method

.method private a(Landroid/content/pm/PackageInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iput-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->activities:[Lcom/alipay/mobile/apk/common/ZActivityInfo;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->activities:[Lcom/alipay/mobile/apk/common/ZActivityInfo;

    new-instance v2, Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/alipay/mobile/apk/common/ZActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->activities:[Lcom/alipay/mobile/apk/common/ZActivityInfo;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/apk/common/ZPackageInfo;->getArchiveFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/apk/common/ZActivityInfo;->setArchiveFilePath(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public findActivityInfo(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/ZActivityInfo;
    .locals 5

    iget-object v2, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->activities:[Lcom/alipay/mobile/apk/common/ZActivityInfo;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getArchiveFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setArchiveFilePath(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->activities:[Lcom/alipay/mobile/apk/common/ZActivityInfo;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->activities:[Lcom/alipay/mobile/apk/common/ZActivityInfo;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/apk/common/ZPackageInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/apk/common/ZActivityInfo;->setArchiveFilePath(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
