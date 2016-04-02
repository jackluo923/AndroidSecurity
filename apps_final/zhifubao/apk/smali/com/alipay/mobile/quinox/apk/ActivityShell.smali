.class public Lcom/alipay/mobile/quinox/apk/ActivityShell;
.super Lcom/alipay/mobile/quinox/shell/BaseActivityShell;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:Landroid/content/res/Resources$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/quinox/apk/ActivityShell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->b:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->b:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/apk/common/ZActivityInfo;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->getBundleContext()Lcom/alipay/mobile/quinox/engine/BundleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/engine/BundleContext;->getBundleNameByComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/engine/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bundleClassLoader == null, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getInstance(Landroid/app/Application;)Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    move-result-object v2

    const-string/jumbo v3, "BundleAppEngine"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-virtual {v2, v3, p0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->makeActivity(Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/app/Activity;Ljava/lang/ClassLoader;)Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/engine/BundleContext;->replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->b:Landroid/content/res/Resources$Theme;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/ActivityShell;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseActivityShell;->setTheme(I)V

    iput p1, p0, Lcom/alipay/mobile/quinox/apk/ActivityShell;->a:I

    return-void
.end method
