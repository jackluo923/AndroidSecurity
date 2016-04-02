.class public Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;
.super Ljava/lang/Object;
.source "XmlWidgetGroupFactory.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidgetGroupFactory;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClassloaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mActivity:Landroid/app/Activity;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mClassloaders:Ljava/util/List;

    .line 46
    invoke-direct {p0}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->loadWidgetDefinitions()V

    .line 47
    return-void
.end method

.method private loadWidgetDefinitions()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v4

    .line 56
    :try_start_0
    new-instance v0, Lcom/alipay/android/launcher/factory/WidgetGroupDao;

    invoke-direct {v0}, Lcom/alipay/android/launcher/factory/WidgetGroupDao;-><init>()V

    .line 57
    invoke-virtual {v0}, Lcom/alipay/android/launcher/factory/WidgetGroupDao;->getWidgetGroups()Ljava/util/List;

    move-result-object v5

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mWidgetGroups:Ljava/util/List;

    .line 59
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 62
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    .line 63
    :goto_0
    if-lt v2, v7, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1, v6}, Lcom/alipay/mobile/framework/BundleContext;->replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    :goto_1
    return-void

    .line 64
    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/beans/WidgetGroup;

    .line 65
    invoke-virtual {v0}, Lcom/alipay/android/launcher/beans/WidgetGroup;->getBundleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 66
    aget-object v1, v6, v2

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 67
    iget-object v8, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mClassloaders:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/launcher/beans/WidgetGroup;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/alipay/mobile/common/reflect/ReflectUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/launcher/core/IWidgetGroup;

    .line 71
    invoke-virtual {v0}, Lcom/alipay/android/launcher/beans/WidgetGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->setId(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mWidgetGroups:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 80
    :catch_1
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v4, v1, v2, v3}, Lcom/alipay/mobile/framework/BundleContext;->replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 84
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "TabLauncher.loadWidgetDefinitions() exception."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public getAllWidgetGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mWidgetGroups:Ljava/util/List;

    return-object v0
.end method

.method public getClassloaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->mClassloaders:Ljava/util/List;

    return-object v0
.end method

.method public getWidgetGroup(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method
