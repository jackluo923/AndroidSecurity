.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$groupHome;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _groupHome:Ljava/util/List;
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

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$groupHome;->_groupHome:Ljava/util/List;

    const-string/jumbo v1, "20000673"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u7ecf\u8d39\u7fa4"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"mainType\":\"1\",\"actionType\":\"Fund\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$groupHome;->_groupHome:Ljava/util/List;

    const-string/jumbo v1, "20000700"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u5403\u8d27\u7fa4"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"mainType\":\"1\",\"preCheck\":true,\"bizType\":\"4\",\"actionType\":\"payTogether\",\"launchParams\":{\"url\":\"https://ds.alipay.com/socialprod/payTogether.htm\",\"showOptionMenu\":\"NO\",\"canPullDown\":\"NO\",\"backgroundColor\":\"15790326\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$groupHome;->_groupHome:Ljava/util/List;

    const-string/jumbo v1, "20000672"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u6d3b\u52a8\u7fa4"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"actionType\":\"form\",\"actionId\":\"general\",\"mode\":\"finish\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$groupHome;->_groupHome:Ljava/util/List;

    const-string/jumbo v1, "20000671"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u5a31\u4e50\u7fa4"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"actionType\":\"featurelotpay\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
