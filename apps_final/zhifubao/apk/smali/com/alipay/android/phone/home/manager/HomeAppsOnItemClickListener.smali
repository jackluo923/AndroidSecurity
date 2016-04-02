.class public Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;
.super Ljava/lang/Object;
.source "HomeAppsOnItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 53
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/phone/home/manager/j;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/manager/j;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 208
    return-void
.end method

.method private static b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_0

    .line 212
    const-string/jumbo v0, "firstScreen"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    const-string/jumbo v1, "firstScreen"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 4

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 230
    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 231
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0

    .line 235
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "APP_ID"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "20000002"

    .line 239
    const-string/jumbo v3, "10000111"

    .line 238
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onItemClick, index:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 62
    instance-of v2, v0, Landroid/widget/WrapperListAdapter;

    if-eqz v2, :cond_3

    .line 63
    check-cast v0, Landroid/widget/WrapperListAdapter;

    invoke-interface {v0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    .line 65
    :goto_0
    invoke-virtual {v0, p3}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->b(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v5

    .line 66
    if-eqz v5, :cond_2

    .line 67
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->d()Ljava/util/List;

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    :cond_0
    sput-object v5, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    instance-of v2, v5, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    if-eqz v2, :cond_4

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getMoreAppNewFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setMoreAppNewFlag(Z)V

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshHome(Z)V

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->d()V

    .line 69
    :cond_2
    :goto_1
    return-void

    .line 64
    :cond_3
    check-cast v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    goto :goto_0

    .line 67
    :cond_4
    invoke-static {v5, v6}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Z)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->setNeedRefreshHome(Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->hideNewFlag()V

    :cond_5
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isHasAdCornerMark()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "error click app:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    :cond_7
    :goto_2
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRedPointShow()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "#AppCenter#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clickApp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_a

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "HomeAppsOnItemClickListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "normal click app:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    sget-object v3, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v3}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v0, v3, v2, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_b

    invoke-static {v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v2, :cond_d

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "HomeAppsOnItemClickListener"

    const-string/jumbo v3, "updateApp"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u6709\u65b0\u7248\u672c\uff0c\u9700\u8981\u66f4\u65b0\u624d\u80fd\u4f7f\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u66f4\u65b0"

    new-instance v4, Lcom/alipay/android/phone/home/manager/k;

    invoke-direct {v4, p0, v5}, Lcom/alipay/android/phone/home/manager/k;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_e

    invoke-static {v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeAndLaunch()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_10

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPkgAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp()Z

    :cond_10
    invoke-static {v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_12

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_13

    invoke-static {v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {p0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setInstallSilent(Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeAndLaunch()V

    goto/16 :goto_1
.end method
