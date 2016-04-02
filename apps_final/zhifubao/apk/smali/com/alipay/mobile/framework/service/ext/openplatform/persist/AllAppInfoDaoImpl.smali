.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;
.super Ljava/lang/Object;
.source "AllAppInfoDaoImpl.java"


# static fields
.field public static final LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAppEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactAppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field public static sContactBRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field private static sGroupHomeAppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field private static sHomeAppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field private static sMoreAppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field public static sTopAppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field private static sUser1AppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field private static sUser2AppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field private static sUser3AppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field public static sUserConfig1AppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field

.field public static sUserConfig2AppRanks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    const-string/jumbo v1, "20000046"

    const-string/jumbo v2, "20000046.jar|1.3.0.1505261032.20150630"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    const-string/jumbo v1, "20000135"

    const-string/jumbo v2, "20000135.amr|"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    const-string/jumbo v1, "20000155"

    const-string/jumbo v2, "20000155.amr|"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    const-string/jumbo v1, "88888899"

    const-string/jumbo v2, "88888899.amr|"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    const-string/jumbo v1, "2013062600000474"

    const-string/jumbo v2, "2013062600000474.jar|1.3.0.20150630"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sAppEntities:Ljava/util/List;

    .line 26
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sHomeAppRanks:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sMoreAppRanks:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sContactAppRanks:Ljava/util/List;

    .line 29
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$groupHome;->_groupHome:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sGroupHomeAppRanks:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userInfo1;->_userInfo1:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUser1AppRanks:Ljava/util/List;

    .line 33
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userInfo2;->_userInfo2:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUser2AppRanks:Ljava/util/List;

    .line 34
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userInfo3;->_userInfo3:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUser3AppRanks:Ljava/util/List;

    .line 37
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userConfig1;->_userConfig1:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUserConfig1AppRanks:Ljava/util/List;

    .line 38
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userConfig2;->_userConfig2:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUserConfig2AppRanks:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$topAppSubStage1;->_topAppSubStage1:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sTopAppRanks:Ljava/util/List;

    .line 44
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sContactBRanks:Ljava/util/List;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 103
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 105
    invoke-virtual {v1, p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, p5}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDisplay(Z)V

    .line 107
    invoke-virtual {v1, p6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDownloadUrl(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p7}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtra(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, p8}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, p9}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, p10}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, p11}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setVersion(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPreinstall(Z)V

    .line 116
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "AllAppInfoDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LOCAL_PACKAGE_APP_IDS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->LOCAL_PACKAGE_APP_IDS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 119
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDownloadUrl(Ljava/lang/String;)V

    .line 120
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setVersion(Ljava/lang/String;)V

    .line 124
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPreinstallVersion(Ljava/lang/String;)V

    .line 130
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public static addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;-><init>()V

    .line 89
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setAppId(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setDisplay(Z)V

    .line 91
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setMovable(Z)V

    .line 93
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setExtra(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p7}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->setOptionMap(Ljava/lang/String;)V

    .line 96
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public static getAppEntities()Ljava/util/List;
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
    .line 47
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sAppEntities:Ljava/util/List;

    return-object v0
.end method

.method public static getContactDisplayApps()Ljava/util/List;
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
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sContactAppRanks:Ljava/util/List;

    return-object v0
.end method

.method public static getGroupStagesHomeApps()Ljava/util/List;
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
    .line 83
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sGroupHomeAppRanks:Ljava/util/List;

    return-object v0
.end method

.method public static getHomeDisplayApps()Ljava/util/List;
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
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sHomeAppRanks:Ljava/util/List;

    return-object v0
.end method

.method public static getMoreDisplayApps()Ljava/util/List;
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
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sMoreAppRanks:Ljava/util/List;

    return-object v0
.end method

.method public static getUserConfig1Apps()Ljava/util/List;
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
    .line 75
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUserConfig1AppRanks:Ljava/util/List;

    return-object v0
.end method

.method public static getUserConfig2Apps()Ljava/util/List;
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
    .line 79
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUserConfig2AppRanks:Ljava/util/List;

    return-object v0
.end method

.method public static getUserStages1Apps()Ljava/util/List;
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
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUser1AppRanks:Ljava/util/List;

    return-object v0
.end method

.method public static getUserStages2Apps()Ljava/util/List;
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
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUser2AppRanks:Ljava/util/List;

    return-object v0
.end method

.method public static getUserStages3Apps()Ljava/util/List;
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
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->sUser3AppRanks:Ljava/util/List;

    return-object v0
.end method
