.class public Lcom/alipay/mobile/common/info/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/info/AppInfo;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/app/ActivityManager;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v2, "ctch1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ctch1"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/info/AppInfo;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->i:Z

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->c:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->j:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    const-string/jumbo v0, "alipay"

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->g:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_3
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 158
    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string/jumbo v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 160
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 161
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 162
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 163
    if-le v4, v5, :cond_1

    .line 164
    const/4 v1, 0x1

    .line 171
    :cond_0
    return v1

    .line 165
    :cond_1
    if-ne v4, v5, :cond_0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/alipay/mobile/common/info/AppInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/alipay/mobile/common/info/AppInfo;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/info/AppInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;

    .line 84
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/info/AppInfo;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppManager must be created by calling createInstance(Context context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/info/AppInfo;->a:Lcom/alipay/mobile/common/info/AppInfo;

    return-object v0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilesDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->j:I

    return v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "Android-container"

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalMemory()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->c:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, p0, Lcom/alipay/mobile/common/info/AppInfo;->j:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 246
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getmAwid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getmChannels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getmProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isDebuggable()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->i:Z

    return v0
.end method

.method public recoverProductVersion()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void
.end method

.method public setChannels(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "channels"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->f:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setProductID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "productId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->d:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/common/info/AppInfo;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->e:Ljava/lang/String;

    .line 195
    :cond_0
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/common/info/AppInfo;->g:Ljava/lang/String;

    .line 93
    return-void
.end method
