.class public abstract Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "AppManageService.java"

# interfaces
.implements Lcom/alipay/mobile/framework/app/IApplicationInstaller;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppManageService"


# instance fields
.field protected observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6dfb\u52a0\u76d1\u542c\u8005"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public abstract auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
.end method

.method public abstract auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V
.end method

.method public abstract authAndLaunch(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract autoUpdateApps()V
.end method

.method public abstract getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.end method

.method public abstract getAppByStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.end method

.method public abstract getAppCenterAppsFromLocal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppStatusByStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/ExtAppStatus;
.end method

.method public abstract getAppsByPage(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppsFromRemote([Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;)V
.end method

.method public abstract getHomeAppsFromLocal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeUrgentAppsFromRemote()V
.end method

.method public abstract getSearchStagesFromRemote()V
.end method

.method public abstract getSocialStagesFromRemote()V
.end method

.method public abstract getStageFromLocal(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
.end method

.method public abstract getStageFromLocalWithDisplay(Ljava/lang/String;Z)Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
.end method

.method public abstract getStages(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getStrategicApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getThirdAppsFromLocal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopScreenAppsFromLocal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserAppsFromLocal(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getUserAppsFromRemote()V
.end method

.method public abstract initAndSyncApps()V
.end method

.method public abstract initConfig()V
.end method

.method public abstract isAppAvailableById(Ljava/lang/String;)Z
.end method

.method public abstract isAppInstalledById(Ljava/lang/String;)Z
.end method

.method public abstract isFetchingHomeUrgentApps()Z
.end method

.method public abstract isStrategicTemplate()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public removeObserver(Ljava/util/Observer;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppManageService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5220\u9664\u76d1\u542c\u8005"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void
.end method

.method public abstract reportUserRank(Z)Z
.end method

.method public abstract requestUser()V
.end method

.method public abstract requestUser(Z)V
.end method

.method public abstract saveAppsInStage(Ljava/util/List;Ljava/lang/String;)V
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
.end method

.method public abstract syncOneAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.end method
