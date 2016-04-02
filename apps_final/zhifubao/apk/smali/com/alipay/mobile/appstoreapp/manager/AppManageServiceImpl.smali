.class public Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
.source "AppManageServiceImpl.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

.field private e:Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:J

.field private j:Z

.field private k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/Boolean;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    .line 105
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f:Landroid/os/Handler;

    .line 110
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 111
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i:J

    .line 114
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    .line 115
    iput-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 116
    iput-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->m:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->n:Ljava/lang/Boolean;

    .line 120
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 121
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z

    .line 122
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z

    .line 123
    iput-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->s:Z

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->n:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1789
    if-eqz p0, :cond_3

    .line 1790
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->OFFLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    const-string/jumbo v0, "offline"

    .line 1800
    :goto_0
    return-object v0

    .line 1792
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->ONLINE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1793
    const-string/jumbo v0, "online"

    goto :goto_0

    .line 1794
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->DOWNLOADING:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1795
    const-string/jumbo v0, "installing"

    goto :goto_0

    .line 1796
    :cond_2
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->UNAVAILABLE:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1797
    const-string/jumbo v0, "uninstall"

    goto :goto_0

    .line 1800
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 1526
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 0

    .prologue
    .line 1717
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->m:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1719
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_0

    .line 1720
    new-instance v0, Lcom/alipay/mobile/appstoreapp/manager/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/manager/e;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1759
    :goto_0
    return-void

    .line 1746
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-eq v0, v1, :cond_1

    .line 1747
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->webApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-eq v0, v1, :cond_1

    .line 1748
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->expApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_2

    .line 1749
    :cond_1
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 1750
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 1751
    const-string/jumbo v1, "H5App"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setEngineType(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    .line 1753
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    new-array v2, v4, [Lcom/alipay/mobile/framework/app/ApplicationDescription;

    const/4 v3, 0x0

    .line 1754
    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->addDescription([Lcom/alipay/mobile/framework/app/ApplicationDescription;)V

    .line 1755
    :cond_2
    invoke-interface {p2, v4}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 665
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    .line 680
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 673
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNewFlagUnknown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 642
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    .line 656
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 649
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNewFlagUnknown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    :cond_2
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0

    .line 652
    :cond_3
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 377
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_2

    .line 383
    array-length v2, v1

    .line 384
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 389
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 385
    :cond_3
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/io/File;)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 526
    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v4

    .line 527
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 526
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 527
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    move-object v3, v0

    .line 532
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 533
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 535
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 536
    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v2

    .line 537
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v6

    .line 536
    if-eq v2, v6, :cond_4

    .line 539
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v6, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 538
    invoke-static {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v2

    .line 540
    if-eqz v2, :cond_3

    .line 541
    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 542
    iget-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-static {v1, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 547
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 548
    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 547
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_1

    .line 550
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 554
    :cond_4
    invoke-static {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v6

    .line 557
    invoke-static {v1, v6}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 559
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v7, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 560
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v7, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 562
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgVersion()Ljava/lang/String;

    move-result-object v2

    .line 561
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto/16 :goto_1

    .line 569
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "createapp:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v2, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    iget-object v2, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 570
    invoke-static {v3, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 572
    if-eqz v1, :cond_1

    .line 573
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 576
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 577
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    if-eqz p0, :cond_1

    .line 466
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 479
    :cond_1
    return-void

    .line 467
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 469
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 470
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedAutoUpgrade()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "upgrade app:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    return-void

    .line 517
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    .line 518
    invoke-interface {v0, p1, p2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1446
    if-nez p0, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return v0

    .line 1448
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultCode:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultCode:I

    const/16 v2, 0xce

    if-ne v1, v2, :cond_0

    .line 1449
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    const/4 v0, 0x1

    goto :goto_0

    .line 1455
    :catch_0
    move-exception v1

    const-string/jumbo v1, "AppManageServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isValidResponse error: ClientAppListRes = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "apps_preInstall"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".amr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 300
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/helper/ZipHelper;->unZip(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    .line 301
    if-nez v2, :cond_1

    .line 302
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    :catch_0
    move-exception v2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/helper/FileHelper;->delete(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    if-eqz v0, :cond_0

    .line 310
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 316
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 309
    :cond_1
    if-eqz v0, :cond_2

    .line 310
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 304
    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 312
    :catch_1
    move-exception v0

    .line 313
    const-string/jumbo v1, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 312
    :catch_2
    move-exception v0

    .line 313
    const-string/jumbo v1, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 309
    :goto_3
    if-eqz v1, :cond_3

    .line 310
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 315
    :cond_3
    :goto_4
    throw v0

    .line 312
    :catch_3
    move-exception v1

    .line 313
    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 307
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3
.end method

.method private a(Ljava/util/List;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1291
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    .line 1378
    :goto_0
    return v1

    .line 1294
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1296
    monitor-exit v2

    move v1, v3

    goto :goto_0

    .line 1297
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 1294
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1304
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1305
    if-eqz p2, :cond_5

    .line 1306
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    .line 1304
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1321
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v7, "AppManageServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "needReport:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    if-nez v1, :cond_a

    .line 1323
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v4

    .line 1324
    goto :goto_0

    .line 1294
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1306
    :cond_4
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1307
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->stageHasChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    .line 1309
    goto :goto_1

    .line 1313
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1314
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->needReportStage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    .line 1316
    goto :goto_1

    .line 1304
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1354
    :catch_0
    move-exception v1

    .line 1355
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "AppManageServiceImpl"

    .line 1356
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "report globalException! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1355
    invoke-interface {v2, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    instance-of v2, v1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v2, :cond_9

    .line 1358
    check-cast v1, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 1359
    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_9

    .line 1360
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    .line 1361
    const-string/jumbo v4, "report resultCode:1002"

    .line 1360
    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    monitor-enter p0

    .line 1363
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1362
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1377
    :cond_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    move v1, v3

    .line 1378
    goto/16 :goto_0

    .line 1326
    :cond_a
    :try_start_7
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;

    move-result-object v1

    .line 1327
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e:Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-interface {v2, v1}, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;->userRankReport(Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;

    move-result-object v7

    .line 1328
    if-eqz v7, :cond_e

    iget v1, v7, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_e

    iget-object v1, v7, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    if-eqz v1, :cond_e

    .line 1329
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1330
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1329
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1346
    const/4 v1, 0x0

    :try_start_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move v1, v4

    .line 1347
    goto/16 :goto_0

    .line 1330
    :cond_c
    :try_start_a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1331
    iget-object v1, v7, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1332
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    iget-object v9, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v9

    .line 1334
    iget-object v1, v7, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setDataVersion(Ljava/lang/String;)V

    .line 1335
    iget-wide v10, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i:J

    cmp-long v1, v10, v5

    if-gtz v1, :cond_d

    .line 1336
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setNeedReport(Z)V

    .line 1338
    :cond_d
    invoke-virtual {v9, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastReportTime(J)V

    .line 1339
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 1340
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string/jumbo v10, "AppManageServiceImpl"

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "user rank report, stageCode:"

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1342
    const-string/jumbo v11, ",version:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v1, v7, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->dataVersionMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1341
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1340
    invoke-interface {v9, v10, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    .line 1329
    :catchall_2
    move-exception v1

    :try_start_b
    monitor-exit p0

    throw v1

    .line 1348
    :cond_e
    if-eqz v7, :cond_f

    iget v1, v7, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportRes;->resultCode:I

    const/16 v2, 0xd4

    if-ne v1, v2, :cond_f

    .line 1349
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V

    .line 1352
    :cond_f
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move v1, v3

    .line 1353
    goto/16 :goto_0

    .line 1363
    :cond_10
    :try_start_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1364
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v4

    iget-object v7, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v4, v7, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v1

    .line 1366
    if-eqz v1, :cond_8

    .line 1367
    invoke-virtual {v1, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastReportTime(J)V

    .line 1368
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 1369
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "AppManageServiceImpl"

    .line 1370
    const-string/jumbo v7, "report: refresh report time"

    .line 1369
    invoke-interface {v1, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/16 :goto_2

    .line 1362
    :catchall_3
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private a([Ljava/lang/String;)Z
    .locals 11

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 846
    .line 848
    array-length v7, p1

    move-wide v5, v2

    move-wide v9, v2

    move-wide v3, v9

    move v2, v1

    :goto_0
    if-lt v2, v7, :cond_1

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v2, v7, v3

    const-wide/16 v7, 0x3e8

    mul-long v4, v5, v7

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    .line 848
    :cond_1
    aget-object v3, p1, v2

    .line 849
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v3

    .line 850
    if-eqz v3, :cond_0

    .line 853
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getRefreshInterval()J

    move-result-wide v5

    .line 854
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getLastRefreshTime()J

    move-result-wide v3

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 856
    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "initDefaultStage"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getHasMovedApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->hasOldUserStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyOldStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "secondScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyOldStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->clearHasMovedAppPreference()V

    .line 349
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userInfo1"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userInfo2"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userInfo3"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userConfig1"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "userConfig2"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "contactB"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "contactA"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "groupHome"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "topAppSubStage1"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/util/Observable;

    invoke-direct {v0}, Ljava/util/Observable;-><init>()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 360
    const/4 v2, 0x1

    .line 361
    const-string/jumbo v3, "indexStage"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 359
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "secondScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 346
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "firstScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v2, "secondScreen"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 592
    if-nez p1, :cond_1

    .line 635
    :cond_0
    return-void

    .line 595
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 597
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 598
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v3

    .line 600
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 602
    iget-object v4, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 601
    invoke-static {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v4

    .line 602
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v5

    .line 601
    if-eq v4, v5, :cond_3

    .line 603
    if-eqz v3, :cond_3

    .line 605
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 606
    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v4

    .line 607
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v1, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-static {v0, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 611
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 612
    invoke-direct {v0, v6, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 611
    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 614
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 616
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 617
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 621
    :cond_4
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_2

    .line 623
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 624
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 626
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 628
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedShowNewFlag(Z)V

    goto/16 :goto_0

    .line 623
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1190
    iput-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 1192
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    invoke-static {v1, p1}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Z[Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    move-result-object v1

    .line 1193
    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1194
    iget-object v2, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e(Ljava/util/List;)V

    .line 1195
    iget-object v2, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1196
    invoke-direct {p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;)V

    .line 1197
    iget-object v1, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d(Ljava/util/List;)V

    .line 1198
    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_1

    .line 1202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "queryclientapp success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.alipay.mobile.intent.action.APPDATACHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->o:Z

    .line 1205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 1221
    :cond_0
    :goto_1
    return-void

    .line 1198
    :cond_1
    aget-object v2, p1, v0

    .line 1199
    new-instance v3, Ljava/util/Observable;

    invoke-direct {v3}, Ljava/util/Observable;-><init>()V

    new-instance v4, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 1200
    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 1199
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1207
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    .line 1208
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryClientApp error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultMsg:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "queryClientApp globalException!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    instance-of v1, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_0

    .line 1213
    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 1214
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 1215
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 1216
    const-string/jumbo v2, "queryClientApp resultCode:1002"

    .line 1215
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 365
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "deleteOldApps"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-array v1, v6, [Ljava/lang/String;

    .line 367
    const-string/jumbo v2, "80000001"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, "09999990"

    aput-object v3, v1, v2

    .line 369
    :goto_0
    if-lt v0, v6, :cond_0

    .line 374
    return-void

    .line 366
    :cond_0
    aget-object v2, v1, v0

    .line 370
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    .line 371
    invoke-interface {v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/apps/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/io/File;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 692
    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v3

    .line 693
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 692
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 693
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-object v2, v0

    .line 694
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 695
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 697
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 698
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v5

    .line 699
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v6

    .line 698
    if-eq v5, v6, :cond_4

    .line 700
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v5

    .line 701
    if-eqz v5, :cond_3

    .line 702
    invoke-virtual {v5, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 703
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 705
    const/4 v2, 0x1

    invoke-direct {v1, v2, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 704
    invoke-direct {p0, v5, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_1

    .line 707
    :cond_3
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_1

    .line 710
    :cond_4
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_1

    .line 714
    :cond_5
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 715
    if-eqz v1, :cond_1

    .line 716
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private c([Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1225
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    invoke-static {v0, p1}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Z[Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    move-result-object v0

    .line 1226
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1227
    iget-object v1, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e(Ljava/util/List;)V

    .line 1228
    iget-object v1, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1229
    invoke-direct {p0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;)V

    .line 1230
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d(Ljava/util/List;)V

    .line 1231
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 1235
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "queryclientapp success"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    :cond_0
    :goto_1
    return-void

    .line 1231
    :cond_1
    aget-object v2, p1, v0

    .line 1232
    new-instance v3, Ljava/util/Observable;

    invoke-direct {v3}, Ljava/util/Observable;-><init>()V

    new-instance v4, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    .line 1233
    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    .line 1232
    invoke-direct {p0, v3, v4}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryClientApp error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultMsg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "queryClientApp globalException!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    instance-of v1, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v1, :cond_0

    .line 1242
    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 1243
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 1244
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 1245
    const-string/jumbo v2, "queryClientUserApp resultCode:1002"

    .line 1244
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d([Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 819
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchApps()Z

    move-result v0

    .line 820
    if-nez v0, :cond_0

    .line 821
    new-array v0, v1, [Ljava/lang/String;

    .line 822
    const-string/jumbo v1, "firstScreen"

    aput-object v1, v0, v2

    const-string/jumbo v1, "secondScreen"

    aput-object v1, v0, v3

    .line 823
    const-string/jumbo v1, "contactA"

    aput-object v1, v0, v4

    .line 821
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    :cond_0
    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 827
    const-string/jumbo v2, "indexStage"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 828
    const-string/jumbo v2, "contactStage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 829
    const-string/jumbo v2, "groupStage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 830
    const-string/jumbo v2, "contactGroup"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 831
    const-string/jumbo v2, "userInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 832
    const-string/jumbo v2, "topAppStage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 833
    const-string/jumbo v2, "userConfig"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 834
    const-string/jumbo v2, "h5Stage"

    aput-object v2, v0, v1

    .line 826
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b([Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 725
    if-nez p1, :cond_1

    .line 739
    :cond_0
    return-void

    .line 727
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 730
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 731
    iget-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    iget-object v1, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 731
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    .line 732
    const-string/jumbo v5, "OFFLINE"

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->status:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 733
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private d([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1396
    if-nez p1, :cond_1

    .line 1442
    :cond_0
    return-void

    .line 1400
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 1401
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1402
    const-string/jumbo v3, "indexStage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1406
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 1407
    const-string/jumbo v4, "firstScreen"

    .line 1406
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1408
    if-eqz v2, :cond_2

    .line 1409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1410
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 1413
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    .line 1414
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    const-string/jumbo v4, "secondScreen"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1415
    if-eqz v2, :cond_3

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1417
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 1400
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1419
    :cond_4
    const-string/jumbo v3, "contactStage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1420
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 1421
    const-string/jumbo v4, "contactA"

    .line 1420
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1422
    if-eqz v2, :cond_3

    .line 1423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1424
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    goto :goto_1

    .line 1426
    :cond_5
    const-string/jumbo v3, "urgentStage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1427
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 1428
    const-string/jumbo v4, "urgentA"

    .line 1427
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1429
    if-eqz v2, :cond_3

    .line 1430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1431
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    goto :goto_1

    .line 1433
    :cond_6
    const-string/jumbo v3, "userInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1434
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 1435
    const-string/jumbo v4, "userInfo"

    .line 1434
    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1436
    if-eqz v2, :cond_3

    .line 1437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setLastRefreshTime(J)V

    .line 1438
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    goto :goto_1
.end method

.method private static e()V
    .locals 3

    .prologue
    .line 1528
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1529
    const-string/jumbo v1, "\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 1530
    const/4 v2, 0x0

    .line 1528
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 742
    if-nez p1, :cond_0

    .line 770
    :goto_0
    return-void

    .line 745
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 746
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 769
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    goto :goto_0

    .line 746
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    .line 747
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AppManageServiceImpl"

    .line 748
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parentStageCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->parentStageCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 749
    const-string/jumbo v6, ",stageCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 750
    const-string/jumbo v6, ",listSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 751
    const-string/jumbo v6, ",version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->dataVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 748
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 747
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Ljava/lang/String;Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 753
    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 754
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    .line 765
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static f(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    if-nez p0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 780
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    goto :goto_0

    .line 781
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 783
    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 784
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 787
    if-eqz v0, :cond_1

    .line 788
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static g(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 861
    if-nez p0, :cond_0

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 873
    :goto_0
    return-object v0

    .line 864
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 873
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 864
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    .line 865
    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 866
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    .line 867
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 868
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static h(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 880
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    if-nez p0, :cond_0

    move-object v0, v1

    .line 904
    :goto_0
    return-object v0

    .line 884
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 904
    goto :goto_0

    .line 884
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 885
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AppManageServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "filterRemoteBack item id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 886
    const-string/jumbo v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 887
    const-string/jumbo v6, " installerType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 885
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string/jumbo v3, "offline"

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 891
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_1

    .line 894
    const-string/jumbo v3, "offline"

    .line 895
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 894
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 896
    const-string/jumbo v3, "offline"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 897
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    move-result-object v0

    .line 898
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 900
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/AppStoreUtil;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 901
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private i(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 998
    if-eqz p1, :cond_0

    .line 999
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-object p1

    .line 1004
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1005
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1016
    iput-boolean v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    .line 1017
    iput-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    .line 1018
    iput-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    goto :goto_0

    .line 1006
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1007
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1008
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "filterStrategicApp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1010
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMovable(Z)V

    .line 1011
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private declared-synchronized j(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;"
        }
    .end annotation

    .prologue
    .line 1383
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;

    invoke-direct {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;-><init>()V

    .line 1384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1388
    iput-object v2, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;->userStageRankList:Ljava/util/List;

    .line 1389
    const-string/jumbo v0, "ANDROID"

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/UserRankReportReq;->platform:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    monitor-exit p0

    return-object v1

    .line 1385
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1386
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getUserStageRankForStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1383
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static k(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1484
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1495
    return-object p0

    .line 1485
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1486
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1487
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1491
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "10000008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    .line 1492
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1491
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static l(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1499
    if-nez p0, :cond_1

    .line 1500
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1509
    :cond_0
    return-object p0

    .line 1502
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1503
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1505
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1506
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method


# virtual methods
.method public auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 1

    .prologue
    .line 920
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 925
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 926
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 927
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 928
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    .line 929
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 930
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAuthType(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    .line 932
    return-void
.end method

.method public authAndLaunch(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 909
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 910
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 913
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    .line 914
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 915
    invoke-virtual {v1, p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 916
    return-void
.end method

.method public autoUpdateApps()V
    .locals 5

    .prologue
    .line 483
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "afterFetchDataFromRemote:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->o:Z

    if-nez v0, :cond_1

    .line 487
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAllApps()Ljava/util/List;

    move-result-object v0

    .line 488
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Map;)V

    .line 485
    monitor-exit v1

    return-void

    .line 488
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 489
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 490
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_0

    .line 492
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 232
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppByStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1768
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1785
    :goto_0
    return-object v0

    .line 1771
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 1772
    goto :goto_0

    .line 1774
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1775
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 1776
    goto :goto_0

    .line 1778
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    .line 1785
    goto :goto_0

    .line 1778
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1779
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1780
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppCenterAppsFromLocal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1038
    const-string/jumbo v0, "secondScreen"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppStatusByStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1805
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;-><init>()V

    .line 1806
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1807
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1808
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isAppInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1809
    iput-boolean v4, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1810
    iput-object v5, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->version:Ljava/lang/String;

    .line 1848
    :cond_0
    :goto_0
    return-object v2

    .line 1813
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1815
    if-eqz v0, :cond_4

    .line 1816
    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1817
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "installed"

    :goto_1
    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->status:Ljava/lang/String;

    .line 1818
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->extStatus:Ljava/lang/String;

    .line 1819
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->version:Ljava/lang/String;

    .line 1820
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_3

    .line 1821
    const-string/jumbo v0, "microApp"

    .line 1820
    :goto_2
    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->type:Ljava/lang/String;

    goto :goto_0

    .line 1817
    :cond_2
    const-string/jumbo v1, "uninstall"

    goto :goto_1

    .line 1821
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    .line 1824
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 1825
    if-nez v0, :cond_6

    .line 1827
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1828
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    .line 1826
    if-nez v0, :cond_5

    .line 1830
    iput-boolean v4, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1831
    iput-object v5, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->version:Ljava/lang/String;

    goto :goto_0

    .line 1833
    :cond_5
    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1834
    const-string/jumbo v0, "installed"

    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->status:Ljava/lang/String;

    .line 1835
    const-string/jumbo v0, "online"

    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->extStatus:Ljava/lang/String;

    .line 1836
    const-string/jumbo v0, "microApp"

    move-object v1, v2

    .line 1844
    :goto_3
    iput-object v0, v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->type:Ljava/lang/String;

    goto :goto_0

    .line 1839
    :cond_6
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 1840
    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->exist:Z

    .line 1841
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "installed"

    :goto_4
    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->status:Ljava/lang/String;

    .line 1842
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->extStatus:Ljava/lang/String;

    .line 1843
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;->version:Ljava/lang/String;

    .line 1844
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_8

    .line 1845
    const-string/jumbo v0, "microApp"

    move-object v1, v2

    goto :goto_3

    .line 1841
    :cond_7
    const-string/jumbo v0, "uninstall"

    goto :goto_4

    .line 1845
    :cond_8
    const-string/jumbo v0, ""

    move-object v1, v2

    goto :goto_3
.end method

.method public getAppsByPage(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/GeneralRequestBuilder;->a(Ljava/util/List;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;

    move-result-object v0

    .line 1050
    iget-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    iput-boolean v1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->pre:Z

    .line 1051
    iput p1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->page:I

    .line 1052
    iput p2, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->pagesize:I

    .line 1054
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;->queryIndependantAppList(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->resultStatus:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_2

    .line 1056
    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->appList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1057
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Ljava/util/List;)V

    .line 1059
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1065
    return-object v1

    .line 1060
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 1061
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1062
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1067
    :cond_2
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;

    iget v2, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->resultStatus:I

    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->memo:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getAppsFromRemote([Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1119
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->needRefreshSecurityStage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1120
    if-eqz p2, :cond_0

    .line 1121
    invoke-interface {p2, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;->onAppsFetched(ZLjava/util/List;)V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    invoke-static {v0, p1}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Z[Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    move-result-object v2

    .line 1128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v3, "get security stage"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1130
    const/16 v1, 0x258

    .line 1131
    iget-object v0, v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1132
    iget-object v0, v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    const-string/jumbo v3, "refreshSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1134
    :try_start_1
    iget-object v0, v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    .line 1135
    const-string/jumbo v3, "refreshSec"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1140
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setLastSecurityStageSetting(Ljava/lang/String;I)V

    .line 1141
    if-eqz p2, :cond_0

    .line 1142
    const/4 v0, 0x1

    iget-object v1, v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;->onAppsFetched(ZLjava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    if-eqz p2, :cond_0

    .line 1151
    invoke-interface {p2, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;->onAppsFetched(ZLjava/util/List;)V

    goto :goto_0

    .line 1136
    :catch_1
    move-exception v0

    .line 1137
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1145
    :cond_3
    if-eqz p2, :cond_0

    .line 1146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;->onAppsFetched(ZLjava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public getHomeAppsFromLocal()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1025
    const-string/jumbo v0, "firstScreen"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v1

    .line 1027
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iput-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    :goto_0
    if-eqz v0, :cond_5

    .line 1028
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "isStrategicTemplate"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1032
    :goto_1
    return-object v0

    .line 1027
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "templateId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "gift"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "appId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iput-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object v6, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    goto/16 :goto_0

    .line 1031
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "is not StrategicTemplate"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public getHomeUrgentAppsFromRemote()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getHomeUrgentAppsFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchApps()Z

    move-result v0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 194
    const-string/jumbo v3, "firstScreen"

    aput-object v3, v2, v4

    const-string/jumbo v3, "secondScreen"

    aput-object v3, v2, v5

    .line 193
    invoke-direct {p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const-string/jumbo v2, "indexStage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string/jumbo v2, "h5Stage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    new-array v2, v5, [Ljava/lang/String;

    .line 201
    const-string/jumbo v3, "topAppSubStage1"

    aput-object v3, v2, v4

    .line 200
    invoke-direct {p0, v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    const-string/jumbo v2, "topAppStage"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_1
    if-nez v0, :cond_2

    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 208
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "getHomeAppsFromRemote start"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->reportUserRank(Z)Z

    .line 210
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 211
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 212
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b([Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 214
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_3
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 217
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSearchStagesFromRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1921
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getSearchStagesFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z

    if-eqz v0, :cond_1

    .line 1944
    :cond_0
    :goto_0
    return-void

    .line 1925
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchSearchStage()Z

    move-result v0

    .line 1926
    if-nez v0, :cond_2

    .line 1927
    new-array v0, v4, [Ljava/lang/String;

    .line 1928
    const-string/jumbo v1, "globalSearch"

    aput-object v1, v0, v3

    .line 1927
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    :cond_2
    iput-boolean v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z

    .line 1932
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getSearchStagesFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1934
    const-string/jumbo v2, "global"

    aput-object v2, v0, v1

    .line 1933
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 1936
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchSearchStage(Z)V

    .line 1937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1938
    :catch_0
    move-exception v0

    .line 1939
    iput-boolean v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->r:Z

    .line 1940
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSocialStagesFromRemote()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2031
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getSocialStagesFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z

    if-eqz v0, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return-void

    .line 2035
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchSocialStage()Z

    move-result v0

    .line 2036
    if-nez v0, :cond_2

    .line 2037
    new-array v0, v6, [Ljava/lang/String;

    .line 2038
    const-string/jumbo v1, "contactB"

    aput-object v1, v0, v3

    .line 2039
    const-string/jumbo v1, "groupHome"

    aput-object v1, v0, v4

    const-string/jumbo v1, "contactA"

    aput-object v1, v0, v5

    .line 2037
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2041
    :cond_2
    iput-boolean v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z

    .line 2043
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getSocialStagesFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2045
    const-string/jumbo v2, "contactStage"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2046
    const-string/jumbo v2, "contactGroup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 2047
    const-string/jumbo v2, "groupStage"

    aput-object v2, v0, v1

    .line 2044
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 2049
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchSearchStage(Z)V

    .line 2050
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    iput-boolean v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->q:Z

    .line 2053
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocalWithDisplay(Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    return-object v0
.end method

.method public getStageFromLocalWithDisplay(Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
    .locals 10

    .prologue
    .line 1953
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    .line 1954
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getStageFromLocal, stageCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1953
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    const-string/jumbo v1, "-1"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1956
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getLastUser()Ljava/lang/String;

    move-result-object v1

    .line 1957
    :goto_0
    new-instance v4, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;-><init>()V

    .line 1958
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "user:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v2

    .line 1960
    if-nez v2, :cond_a

    .line 1961
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "stage is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    const-string/jumbo v2, "-1"

    .line 1963
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    const-string/jumbo v3, "-1"

    invoke-virtual {v1, v3, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v1

    .line 1965
    :goto_1
    if-eqz v1, :cond_9

    .line 1966
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v5, "AppManageServiceImpl"

    .line 1967
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stageEntity is not null, templateId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getTemplateId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1966
    invoke-interface {v3, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxShowAppNum()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setMaxShowNum(I)V

    .line 1969
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxAppNum()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setMaxNum(I)V

    .line 1970
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getRefreshInterval()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setRefreshInterval(J)V

    .line 1971
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getReportInterval()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setReportInterval(J)V

    .line 1972
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setTemplateId(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setAppId(Ljava/lang/String;)V

    .line 1975
    if-eqz p2, :cond_1

    .line 1976
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDisplayAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    .line 1981
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByAppRanks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1982
    if-nez v1, :cond_2

    .line 1983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    move-object v1, v4

    .line 2025
    :goto_3
    return-object v1

    .line 1956
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 1978
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    .line 1986
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v5, "AppManageServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getStageFromLocal, stage:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1987
    const-string/jumbo v7, "appEntities num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1986
    invoke-interface {v2, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v5

    .line 1989
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1990
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2006
    invoke-static {v6}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    .line 2007
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 2008
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2011
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2013
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2020
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    monitor-exit v5

    :goto_7
    move-object v1, v4

    .line 2025
    goto :goto_3

    .line 1990
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-object v2, v0

    .line 1991
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1992
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1993
    if-eqz v1, :cond_3

    .line 1994
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 1995
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 1988
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    .line 1998
    :cond_5
    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    .line 1999
    if-eqz v1, :cond_3

    .line 2000
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 2002
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2008
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 2009
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->removeFromStage(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    goto :goto_5

    .line 2013
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    move-object v2, v0

    .line 2014
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 2015
    if-eqz v1, :cond_8

    .line 2016
    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addToStage(Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;Ljava/lang/String;)V

    .line 2018
    :cond_8
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 2023
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->setApps(Ljava/util/List;)V

    goto :goto_7

    :cond_a
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_1
.end method

.method public getStages(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1861
    const-string/jumbo v0, "-1"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1862
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getLastUser()Ljava/lang/String;

    move-result-object v0

    .line 1863
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntityList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1866
    if-eqz v0, :cond_3

    .line 1867
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 1875
    :goto_2
    return-object v0

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    goto :goto_0

    .line 1867
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 1868
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    .line 1869
    if-eqz v0, :cond_0

    .line 1870
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1875
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getStrategicApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->k:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method public getThirdAppsFromLocal()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 968
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    .line 969
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getAllFastLoginIds()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    .line 968
    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByIds(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 970
    if-nez v0, :cond_0

    move-object v0, v2

    .line 989
    :goto_0
    return-object v0

    .line 973
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    .line 989
    goto :goto_0

    .line 973
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 974
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "AppManageServiceImpl"

    .line 975
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getThirdAppsFromLocal, appid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 974
    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 978
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 979
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 981
    :cond_3
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_1

    .line 983
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 985
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getTopScreenAppsFromLocal()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1907
    const-string/jumbo v0, "topAppSubStage1"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    move-result-object v0

    .line 1909
    if-nez v0, :cond_0

    .line 1910
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "stage is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const/4 v0, 0x0

    .line 1914
    :goto_0
    return-object v0

    .line 1913
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "stage is not null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserAppsFromLocal(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1856
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getStages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserAppsFromRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1883
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getUserAppsFromRemote"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getNeedFetchUserStage()Z

    move-result v0

    .line 1885
    if-nez v0, :cond_0

    .line 1886
    new-array v0, v4, [Ljava/lang/String;

    .line 1887
    const-string/jumbo v1, "userInfo1"

    aput-object v1, v0, v3

    .line 1886
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1890
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "getHomeAppsFromRemote start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1892
    const-string/jumbo v2, "userInfo"

    aput-object v2, v0, v1

    .line 1891
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c([Ljava/lang/String;)V

    .line 1894
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchUserStage(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1900
    :cond_1
    :goto_0
    return-void

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initAndSyncApps()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "initAndSyncApps"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->initConfig()V

    .line 149
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->isFirstLoginThisVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->PRE_UNZIP_APPIDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V

    .line 152
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setLoginVersion()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedFetchApps(Z)V

    .line 162
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->o:Z

    .line 163
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b()V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->reportUserRank(Z)Z

    .line 165
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 166
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d()Ljava/util/List;

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 168
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->autoUpdateApps()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_2
    iput-boolean v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->s:Z

    .line 176
    return-void

    .line 150
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "initConfig failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 169
    :catch_1
    move-exception v0

    .line 170
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h:Ljava/lang/Boolean;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    const-string/jumbo v3, "sync app failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public declared-synchronized initConfig()V
    .locals 8

    .prologue
    .line 796
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->isFirstTime()Z

    move-result v0

    .line 797
    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "initConfig for first time"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 801
    const-string/jumbo v1, "downloads"

    .line 800
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    invoke-direct {p0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/io/File;)V

    .line 806
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    :goto_0
    :try_start_2
    const-string/jumbo v0, "AppManageServiceImpl"

    const-string/jumbo v1, "initPreInstallAppInfo"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;

    invoke-direct {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;-><init>()V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getAppEntities()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->updatePreinstallApps(Ljava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getHomeDisplayApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "firstScreen"

    const-string/jumbo v3, "indexStage"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getMoreDisplayApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "secondScreen"

    const-string/jumbo v3, "indexStage"

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getGroupStagesHomeApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "groupHome"

    const-string/jumbo v3, "groupStage"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getContactDisplayApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "contactA"

    const-string/jumbo v3, "contactStage"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserStages1Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userInfo1"

    const-string/jumbo v3, "userInfo"

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserStages2Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userInfo2"

    const-string/jumbo v3, "userInfo"

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserStages3Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userInfo3"

    const-string/jumbo v3, "userInfo"

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserConfig1Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userConfig1"

    const-string/jumbo v3, "userConfig"

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getUserConfig2Apps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userConfig2"

    const-string/jumbo v3, "userConfig"

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getContactBApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "contactB"

    const-string/jumbo v3, "contactGroup"

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getTopStageApps()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "topAppSubStage1"

    const-string/jumbo v3, "topAppStage"

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-direct {p0, v7}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c(Ljava/util/List;)V

    new-instance v0, Ljava/util/Observable;

    invoke-direct {v0}, Ljava/util/Observable;-><init>()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    const/4 v2, 0x1

    const-string/jumbo v3, "indexStage"

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 811
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setFirstTime()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 813
    :cond_2
    monitor-exit p0

    return-void

    .line 807
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public installApplication(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1539
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    .line 1540
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "installApplication, appid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",apps contains:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1539
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 1543
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1545
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "AppManageServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "app ismovable:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isMovable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    if-nez v0, :cond_3

    .line 1558
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e()V

    .line 1559
    invoke-interface {p2, v6}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 1653
    :cond_0
    :goto_1
    return-void

    .line 1547
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 1548
    if-eqz v0, :cond_2

    .line 1549
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 1550
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 1551
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1542
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1553
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1562
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 1563
    const-string/jumbo v2, "AppManageServiceImpl"

    .line 1564
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "app isavailable:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pkgpath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1565
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1564
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1562
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1568
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_4

    .line 1569
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 1570
    const-string/jumbo v2, "AppManageServiceImpl"

    .line 1571
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "app isAvailable false, goto h5 fallback; appId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1569
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    .line 1573
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPkgAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1575
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 1577
    const-string/jumbo v2, "AppManageServiceImpl"

    .line 1578
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "app isAvailable false, goto h5 fallback and start to downloadApp; appId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1578
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1576
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/appstoreapp/manager/a;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/a;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1585
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1589
    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1590
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "isDownloading"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1592
    const-string/jumbo v1, "\u670d\u52a1\u5347\u7ea7\u4e2d"

    .line 1591
    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 1594
    invoke-interface {p2, v6}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto/16 :goto_1

    .line 1596
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->matchLocalDownloadedPackage()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1597
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1599
    new-instance v1, Lcom/alipay/mobile/appstoreapp/manager/b;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/mobile/appstoreapp/manager/b;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp(Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    goto/16 :goto_1

    .line 1647
    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPreInstall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1648
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppManageServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "installApp, isInstallingApp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2, v6}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    goto/16 :goto_1

    :cond_8
    new-instance v1, Lcom/alipay/mobile/appstoreapp/manager/c;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/mobile/appstoreapp/manager/c;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public isAppAvailableById(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppInstalledById(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFetchingHomeUrgentApps()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->s:Z

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->p:Z

    goto :goto_0
.end method

.method public isStrategicTemplate()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->j:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 127
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 131
    const-class v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    iput-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    .line 132
    const-class v1, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e:Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageServiceImpl"

    const-string/jumbo v2, "initOpenPlatformPreFlag"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->isPreOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    .line 136
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public reportUserRank(Z)Z
    .locals 3

    .prologue
    .line 1285
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1286
    const-string/jumbo v2, "firstScreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "secondScreen"

    aput-object v2, v0, v1

    .line 1285
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public requestUser()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public requestUser(Z)V
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->s:Z

    .line 264
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 265
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 266
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    .line 268
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->setUserId(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setLastUser(Ljava/lang/String;)V

    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    monitor-exit v1

    .line 279
    :cond_0
    return-void

    .line 273
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 274
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->clearStage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized saveAppsInStage(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1264
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1265
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1278
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrderInStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    :cond_1
    monitor-exit p0

    return-void

    .line 1266
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 1267
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "20000081"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1268
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "10000111"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1269
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppRankForStage(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    move-result-object v3

    .line 1272
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    .line 1273
    const-string/jumbo v5, "AppManageServiceImpl"

    .line 1274
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saveAppsInStage, appid:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ",apprank is null:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1275
    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1275
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public syncOneAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 946
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    invoke-direct {v3}, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;-><init>()V

    iput-object p1, v3, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/GeneralRequestBuilder;->a()Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;

    move-result-object v3

    iput-object v2, v3, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->appList:Ljava/util/List;

    .line 947
    iget-boolean v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Z

    iput-boolean v2, v3, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->pre:Z

    .line 948
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    invoke-interface {v2, v3}, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;->queryMobileAppInfoByAppList(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;

    move-result-object v2

    .line 949
    iget v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->resultStatus:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 950
    iget-object v0, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 951
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f(Ljava/util/List;)V

    .line 952
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Ljava/util/List;)V

    .line 953
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 958
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 949
    :cond_2
    iget-object v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 953
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 954
    iget-object v2, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 955
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    goto :goto_1

    .line 961
    :cond_4
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;

    iget-object v2, v2, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->memo:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 509
    return-void
.end method
