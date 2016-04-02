.class public Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;
.super Ljava/lang/Object;
.source "BundleLoadHelper.java"


# static fields
.field public static final META_INFO:Ljava/lang/String; = ".MetaInfo"


# instance fields
.field private a:Lcom/alipay/mobile/core/init/BootLoader;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Lcom/alipay/mobile/core/ApplicationManager;

.field private e:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

.field private f:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

.field private g:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

.field mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/core/init/BootLoader;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a:Lcom/alipay/mobile/core/init/BootLoader;

    .line 58
    iput-object p2, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->getContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/ApplicationManager;

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->d:Lcom/alipay/mobile/core/ApplicationManager;

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->f:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    check-cast v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->getPipelineManager()Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->g:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    .line 68
    return-void
.end method


# virtual methods
.method public loadBundle(Lcom/alipay/mobile/framework/BundleContext;Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    .line 92
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/BundleContext;->findPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".MetaInfo"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/BaseMetaInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/BaseMetaInfo;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_0

    const-string/jumbo v0, "BootLoader.MetaInfo"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getApplications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    if-eqz v0, :cond_1

    const-string/jumbo v8, "BootLoader.MetaInfo"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->d:Lcom/alipay/mobile/core/ApplicationManager;

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    aput-object v0, v9, v4

    invoke-interface {v8, v9}, Lcom/alipay/mobile/core/ApplicationManager;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    const-string/jumbo v5, "BootLoader.MetaInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Filed to load MetaInfo ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".MetaInfo]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "BootLoader.MetaInfo"

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getEntry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->d:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->setEntryAppName(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    if-eqz v0, :cond_4

    const-string/jumbo v1, "BootLoader.MetaInfo"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->registerExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string/jumbo v8, "BootLoader.MetaInfo"

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Failed to registerExternalService["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, "]"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_8

    :cond_7
    const-string/jumbo v0, "BootLoader.MetaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": msgCode is empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string/jumbo v0, "BootLoader.MetaInfo"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v0

    :goto_5
    if-eqz v2, :cond_6

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v1

    array-length v10, v1

    move v0, v4

    :goto_6
    if-ge v0, v10, :cond_9

    aget-object v11, v1, v0

    invoke-virtual {v9, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    const-string/jumbo v2, "BootLoader.MetaInfo"

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Failed to reflect BroadcastReceiver["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v0, v2, v9}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getInterfaces()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;

    if-eqz v0, :cond_b

    const-string/jumbo v1, "BootLoader.MetaInfo"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/interfaces/RouterInterface;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_8
    if-eqz v1, :cond_b

    iget-object v8, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->f:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    invoke-virtual {v8, v0, v1}, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->registerInterface(Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;Lcom/alipay/mobile/framework/interfaces/RouterInterface;)Z

    goto :goto_7

    :catch_3
    move-exception v1

    const-string/jumbo v8, "BootLoader.MetaInfo"

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Failed to reflect RouterInterface["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v8, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    goto :goto_8

    :cond_c
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getValves()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    if-eqz v0, :cond_d

    const-string/jumbo v1, "BootLoader.MetaInfo"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/quinox/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :goto_a
    if-eqz v1, :cond_d

    iget-object v5, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->g:Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getPipelineName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getThreadName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->getWeight()I

    move-result v0

    invoke-virtual {v5, v8, v9, v1, v0}, Lcom/alipay/mobile/core/pipeline/impl/PipelineManager;->addValve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;I)V

    goto :goto_9

    :catch_4
    move-exception v1

    const-string/jumbo v5, "BootLoader.MetaInfo"

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Failed to reflect Valve["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v5, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    goto :goto_a

    .line 98
    :cond_e
    return-void

    .line 95
    :catch_5
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto/16 :goto_2
.end method

.method public loadBundleDefinitions()V
    .locals 8

    .prologue
    .line 71
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/BundleContext;->getAllBundleNames()Ljava/util/Collection;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/BundleContext;->isLazyBundleByBundleName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 81
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundle(Lcom/alipay/mobile/framework/BundleContext;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v5, "BootLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "loadBundle(bundleName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "). cost:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method
