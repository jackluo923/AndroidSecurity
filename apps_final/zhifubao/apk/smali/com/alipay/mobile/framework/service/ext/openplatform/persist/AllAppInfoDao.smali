.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;
.super Ljava/lang/Object;
.source "AllAppInfoDao.java"


# static fields
.field public static final DEFAULT_USER:Ljava/lang/String; = "0"

.field private static final HOME_DISPLAY_APPS_FILE:Ljava/lang/String; = "apps_preinstall_config/home_display_apps_info.json"

.field public static final NO_USER:Ljava/lang/String; = "-1"

.field private static final PRE_INSTALL_APPS_FILE:Ljava/lang/String; = "apps_preinstall_config/preinstall_apps_info.json"

.field public static final PRE_UNZIP_APPIDS:[Ljava/lang/String;


# instance fields
.field private final mDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    const-string/jumbo v2, "09999970"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "88888899"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "emoji"

    aput-object v2, v0, v1

    .line 18
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->PRE_UNZIP_APPIDS:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->mDebug:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getAppEntities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getAppEntities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContactBApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sContactBRanks:Ljava/util/List;

    return-object v0
.end method

.method public getContactDisplayApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getContactDisplayApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupStagesHomeApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getGroupStagesHomeApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHomeDisplayApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getHomeDisplayApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMoreDisplayApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getMoreDisplayApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopStageApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sTopAppRanks:Ljava/util/List;

    return-object v0
.end method

.method public getUserConfig1Apps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getUserConfig1Apps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfig2Apps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getUserConfig2Apps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserStages1Apps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getUserStages1Apps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserStages2Apps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getUserStages2Apps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserStages3Apps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->getUserStages3Apps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
