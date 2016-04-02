.class public Lcom/alipay/mobile/quinox/LauncherActivity;
.super Landroid/app/Activity;

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherActivity"


# instance fields
.field private mAgentTarget:Ljava/lang/Object;

.field private volatile mEntry:Z

.field private mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeRes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/quinox/LauncherActivity;)Lcom/alipay/mobile/quinox/LauncherApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/LauncherActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    return-object v0
.end method

.method private doPostInit()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    new-instance v0, Lcom/alipay/mobile/quinox/LauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/LauncherActivity$1;-><init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getLayoutId(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":layout/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->removeListener(Ljava/util/Observer;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mThemeRes:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->getInstance()Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/startup/AnomalousRestartProcessor;->setUIStarted(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setIsFinishStartup(Z)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "performance_startup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mEntry:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAgentActivity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getAgentActivityLayout()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->setContentView(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->preInit()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "LauncherActivity.onCreate().doPostInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->finish()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mLauncherApplication:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->addListener(Ljava/util/Observer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected postInit()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "postInit"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected preInit()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "preInit"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mAgentTarget:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    iput p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity;->mThemeRes:I

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "LauncherActivity.update().doPostInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V

    return-void
.end method
