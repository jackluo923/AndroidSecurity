.class public Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;
.super Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;
.source "ExternalServiceManagerImpl.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    .line 70
    if-nez v0, :cond_1

    .line 71
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->isLazyBundleByServiceName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->findBundleNameByServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 77
    const-string/jumbo v0, "ExternalServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] is not regiested."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 105
    :cond_1
    :goto_0
    return-object v0

    .line 84
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    .line 85
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->create(Landroid/os/Bundle;)V

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string/jumbo v2, "ExternalServiceManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 96
    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    const-string/jumbo v2, "ExternalServiceManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 100
    :catch_2
    move-exception v0

    .line 101
    const-string/jumbo v2, "ExternalServiceManager"

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 102
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public registerExternalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->create(Landroid/os/Bundle;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string/jumbo v1, "ExternalServiceManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 4

    .prologue
    .line 136
    const-string/jumbo v0, "_externalServiceClass_"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    invoke-static {v0}, Lcom/alipay/mobile/framework/JSONUtil;->json2Set(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 139
    if-nez v0, :cond_1

    .line 159
    :cond_0
    return-void

    .line 142
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 143
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    iget-object v3, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 145
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    goto :goto_1

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 155
    instance-of v2, v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v2, :cond_5

    .line 156
    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/MicroService;->restoreState(Landroid/content/SharedPreferences;)V

    goto :goto_2
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/alipay/mobile/framework/JSONUtil;->set2Json(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "_externalServiceClass_"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 127
    instance-of v2, v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v2, :cond_0

    .line 128
    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/MicroService;->saveState(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method
