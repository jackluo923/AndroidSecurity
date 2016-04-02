.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _contactA:Ljava/util/List;
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

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000219"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u56fe\u7247"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000221"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u8f6c\u8d26"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"strangerApp\":\"1\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000674"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u6536\u6b3e"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"actionType\":\"personal\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "88886666"

    const-string/jumbo v4, "app_88886666"

    const-string/jumbo v5, "\u7ea2\u5305"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"target\":\"personal\",\"schemeMode\":\"portalInside\",\"prevBiz\": \"chat\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000224"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u5546\u5bb6"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"target\":\"merchantChoose\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000227"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u5361\u5238"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"b\":\"d\",\"a\":\"ltzs\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000226"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u4f4d\u7f6e"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000228"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u540d\u7247"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000245"

    const-string/jumbo v4, "app_20000245"

    const-string/jumbo v5, "\u6536\u85cf"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"target\":\"present\",\"selfApp\":\"1\",\"nameForUserStage\":\"\u6536\u85cf\",\"iconForUserStage\":\"http://tfs.alipayobjects.com/L1/71/10001/20150506/1_0_0_0/1434350224749_icon_L.png\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000170"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u9001\u7535\u5f71\u5238"

    const-string/jumbo v6, "{\"canSearch\":\"false\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000171"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u9001\u4fdd\u969c"

    const-string/jumbo v6, "{\"canSearch\":\"false\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactA;->_contactA:Ljava/util/List;

    const-string/jumbo v1, "20000172"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u5145\u8bdd\u8d39"

    const-string/jumbo v6, "{\"canSearch\":\"false\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
