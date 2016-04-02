.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$topAppSubStage1;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _topAppSubStage1:Ljava/util/List;
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
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$topAppSubStage1;->_topAppSubStage1:Ljava/util/List;

    const-string/jumbo v1, "10000007"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u626b\u4e00\u626b"

    const-string/jumbo v6, "{\"canSearch\":\"false\"}"

    const-string/jumbo v7, "{}"

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$topAppSubStage1;->_topAppSubStage1:Ljava/util/List;

    const-string/jumbo v1, "20000056"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u4ed8\u6b3e"

    const-string/jumbo v6, "{\"canSearch\":\"false\"}"

    const-string/jumbo v7, "{}"

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$topAppSubStage1;->_topAppSubStage1:Ljava/util/List;

    const-string/jumbo v1, "20000689"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u9644\u8fd1"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"https://o.alipay.com/o2o/?action=nearby\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showTitleLoading\":\"YES\",\"pullRefresh\":\"NO\",\"canPullDown\":\"NO\",\"showOptionMenu\":\"NO\"}}"

    const-string/jumbo v7, "{}"

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
