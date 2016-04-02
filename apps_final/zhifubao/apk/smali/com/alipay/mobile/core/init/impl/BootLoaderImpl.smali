.class public Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;
.super Ljava/lang/Object;
.source "BootLoaderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/core/init/BootLoader;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 33
    return-void
.end method


# virtual methods
.method public getContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public load()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    .line 46
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 47
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "agent.commonservice.load"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :try_start_1
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "agent.entry.pkgname"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 53
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const-string/jumbo v1, "com.alipay.mobile.framework.service.common.loader.CommonServiceLoadAgent"

    .line 57
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string/jumbo v0, "com.alipay.android.launcher"

    move-object v2, v0

    .line 62
    :goto_1
    new-instance v0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;-><init>()V

    .line 63
    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 64
    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v5, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 68
    :try_start_2
    invoke-virtual {v3}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ServicesLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ServicesLoader;->load()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 79
    :goto_2
    new-instance v0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;-><init>(Lcom/alipay/mobile/core/init/BootLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundleDefinitions()V

    .line 83
    const-string/jumbo v0, "Pipeline"

    const-string/jumbo v1, "PIPELINE_FRAMEWORK_INITED : start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "com.alipay.mobile.framework.INITED"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getPipelineByName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/Pipeline;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Lcom/alipay/mobile/framework/pipeline/Pipeline;->start()V

    .line 87
    return-void

    .line 49
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 50
    :goto_3
    const-string/jumbo v4, "BootLoader"

    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    const-string/jumbo v1, "BootLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 72
    :catch_2
    move-exception v0

    .line 73
    const-string/jumbo v1, "BootLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 74
    :catch_3
    move-exception v0

    .line 75
    const-string/jumbo v1, "BootLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 49
    :catch_4
    move-exception v2

    goto :goto_3

    :cond_1
    move-object v2, v0

    goto :goto_1
.end method

.method public loadBundle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    invoke-virtual {v1, v0, p1}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundle(Lcom/alipay/mobile/framework/BundleContext;Ljava/lang/String;)V

    .line 98
    return-void
.end method
