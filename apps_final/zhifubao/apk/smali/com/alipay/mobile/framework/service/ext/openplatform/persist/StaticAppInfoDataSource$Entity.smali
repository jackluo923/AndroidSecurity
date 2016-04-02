.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static sEntitys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6dd8\u5b9d\u7535\u5f71"

    const-string/jumbo v2, "20000131"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000131"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "8.3"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5feb\u7684\u6253\u8f66"

    const-string/jumbo v2, "20000130"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000130/1_0_5_52/1433941519167_20000130-1_0_5_52+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/index.html\", \"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\":\"NO\",\"canPullDown\":\"NO\",\"safePayEnabled\":\"YES\",\"readTitle\":\"YES\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000130.h5app.alipay.net\",\"test\":\"http://20000130.h5app.test.alipay.net\",\"online\":\"https://20000130.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000130"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "1433941519167_20000130-1_0_5_52 TAR.amr"

    const-string/jumbo v11, "1.0.5.52"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5546\u5bb6"

    const-string/jumbo v2, "20000224"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"target\":\"merchantChoose\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u53bb\u554a\u5468\u8fb9\u6e38"

    const-string/jumbo v2, "20000697"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000697/0_0_18_3/1434694085952_20000697-0_0_18_3-publish+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"/build_offline/pages/search/index.html\",\"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\": \"NO\",\"ttid\": \"12zfb0000157\"},\"host\": {\"dev\": \"http://20000697.h5app.waptest.taobao.com\",\"test\": \"http://20000697.h5app.waptest.taobao.com\",\"online\": \"http://20000697.h5app.m.taobao.com\",\"enable\": true}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000697-0_0_18_3-publish+TAR.amr"

    const-string/jumbo v11, "0.0.18.3"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4eb2\u5bc6\u4ed8"

    const-string/jumbo v2, "20000132"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000132"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4f4d\u7f6e"

    const-string/jumbo v2, "20000226"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8bdd\u8d39\u5361\u8f6c\u8ba9"

    const-string/jumbo v2, "10000033"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_10000033"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5361\u5238"

    const-string/jumbo v2, "20000227"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"b\":\"d\",\"a\":\"ltzs\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u540d\u7247"

    const-string/jumbo v2, "20000228"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u57ce\u5e02\u4e00\u5361\u901a"

    const-string/jumbo v2, "20000088"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000088/1_3_0_1506241334/1435127883670_citycard-build-1.3.0.1506241334.20150630-nolog.jar"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000088"

    const-string/jumbo v9, "innerApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.3.0.1506241334"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6536\u6b3e"

    const-string/jumbo v2, "20000123"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000123"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4e00\u8d77\u4e70\u5355"

    const-string/jumbo v2, "20000232"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"actionType\":\"payTogetherSelect\",\"bizType\":\"4\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u652f\u4ed8\u8bbe\u7f6e"

    const-string/jumbo v2, "20000024"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u706b\u8f66\u7968"

    const-string/jumbo v2, "20000143"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000143/0_3_1_1/1434545813854_20000143-0_3_1_1-publish+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"\"},\"host\":{\"dev\":\"http://20000143.h5app.waptest.taobao.com\",\"test\":\"http://20000143.h5app.waptest.taobao.com\",\"online\":\"http://20000143.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000143-0_3_1_1-publish+TAR.amr"

    const-string/jumbo v11, "0.3.1.1"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u963f\u91cc\u7535\u89c6"

    const-string/jumbo v2, "20000233"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000233"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8bb0\u8d26\u672c"

    const-string/jumbo v2, "20000168"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000168"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.1.3"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u670d\u52a1\u7a97"

    const-string/jumbo v2, "80000002"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/80000002/1_0_1_7/1433918179736_80000002-1_0_1_7+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/pages/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://80000002.h5app.alipay.net\",\"test\":\"http://80000002.h5app.test.alipay.net\",\"online\":\"https://80000002.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_80000002"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "80000002-1_0_1_7+TAR.amr"

    const-string/jumbo v11, "1.0.1.7"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5a31\u4e50\u5b9d"

    const-string/jumbo v2, "20000142"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000142/2_1_5_10/1434191571554_20000142-2_1_5_10+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/build/page/home.html\",\"pullRefresh\":\"YES\",\"showTitleBar\":\"YES\",\"showOptionMenu\":\"NO\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"enable\": true,\"dev\":\"http://20000142.h5app.alipay.net\",\"test\":\"http://20000142.h5app.test.alipay.net\",\"online\":\"https://20000142.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000142-2_1_5_10+TAR.amr"

    const-string/jumbo v11, "2.1.5.10"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7ea2\u5305"

    const-string/jumbo v2, "20000688"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"nameForUserStage\":\"\u7ea2\u5305\",\"target\":\"group\",\"schemeMode\":\"portalInside\",\"prevBiz\": \"chat\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9644\u8fd1"

    const-string/jumbo v2, "20000689"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"https://o.alipay.com/o2o/?action=nearby\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showTitleLoading\":\"YES\",\"pullRefresh\":\"NO\",\"canPullDown\":\"NO\",\"showOptionMenu\":\"NO\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5145\u8bdd\u8d39"

    const-string/jumbo v2, "20000172"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8d26\u53f7\u4f30\u503c"

    const-string/jumbo v2, "20000690"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"launchParams\": {\"url\": \"http://huodong.m.taobao.com/topic/alipaySudoku/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"pullRefresh\":\"YES\"}}"

    const-string/jumbo v8, "app_20000690"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "2.0.8"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u56fd\u9645\u6c47\u6b3e"

    const-string/jumbo v2, "20000078"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000078/1_0_0_22/1434075208853_20000078-1_0_0_22+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/remit/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"backBehavior\":\"back\",\"showOptionMenu\":\"YES\"},\"host\":{\"dev\":\"http://20000078.h5app.alipay.net\",\"test\":\"http://20000078.h5app.test.alipay.net\",\"online\":\"https://20000078.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000078"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000078-1_0_0_22+TAR.amr"

    const-string/jumbo v11, "1.0.0.22"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5403\u8d27\u7fa4"

    const-string/jumbo v2, "20000700"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"1\",\"preCheck\":true,\"bizType\":\"4\",\"actionType\":\"payTogether\",\"launchParams\":{\"url\":\"https://ds.alipay.com/socialprod/payTogether.htm\",\"showOptionMenu\":\"NO\",\"canPullDown\":\"NO\",\"backgroundColor\":\"15790326\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9001\u7535\u5f71\u5238"

    const-string/jumbo v2, "20000170"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9001\u4fdd\u969c"

    const-string/jumbo v2, "20000171"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9152\u5e97"

    const-string/jumbo v2, "20000139"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000139/1_1_11_27/1434682981015_20000139-1_1_11_27-publish+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"\"},\"host\":{\"dev\":\"http://20000139.h5app.waptest.taobao.com\",\"test\":\"http://20000139.h5app.waptest.taobao.com\",\"online\":\"http://20000139.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000139-1_1_11_27-publish+TAR.amr"

    const-string/jumbo v11, "1.1.11.27"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u88c5\u673a\u5fc5\u5907"

    const-string/jumbo v2, "10000114"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"http://d.alipay.com/zjbb/zjbb.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"}}"

    const-string/jumbo v8, "app_10000114"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.3.7"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u57ce\u5e02\u670d\u52a1"

    const-string/jumbo v2, "20000177"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000177"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.2.0.1504221930"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u80a1\u7968"

    const-string/jumbo v2, "20000134"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000134"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "8.3.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u673a\u7968\u706b\u8f66\u7968"

    const-string/jumbo v2, "20000135"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000135/1_8_30_3/1433231544130_20000135-1_8_30_3+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\": \"/build_offline/pages/search/index.html?ttid=12zfb0000098\",\"showToolBar\": \"NO\",\"showTitleBar\": \"YES\",\"safePayEnabled\": \"YES\", \"backBehavior\": \"back\",\"ssoLoginEnabled\": \"YES\", \"readTitle\": \"YES\",\"ttid\": \"12zfb0000098\" }, \"host\": {\"dev\": \"http://20000135.h5app.waptest.taobao.com\",\"test\": \"http://20000135.h5app.waptest.taobao.com\", \"online\": \"http://20000135.h5app.m.taobao.com\", \"enable\": true }}"

    const-string/jumbo v8, "app_20000135"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000135-1_8_30_3+TAR.amr"

    const-string/jumbo v11, "1.8.30.3"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6211\u7684\u5ba2\u670d"

    const-string/jumbo v2, "20000691"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000691/1_0_0_63/1435108838983_20000691-1_0_0_63+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"defaultTitle\":\"\u6211\u7684\u5ba2\u670d\",\"showOptionMenu\":\"YES\"},\"host\":{\"dev\":\"http://mypa.h5app.alipay.net\",\"test\":\"https://mypa.h5app.test.alipay.net\",\"online\":\"https://mypa.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000691"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000691-1_0_0_63+TAR.amr"

    const-string/jumbo v11, "1.0.0.63"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8d26\u6237\u5b89\u5168"

    const-string/jumbo v2, "20000070"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4eb2\u60c5\u8d26\u6237"

    const-string/jumbo v2, "20000205"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000205"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8f6c\u8d26"

    const-string/jumbo v2, "09999988"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_09999988"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6821\u56ed\u4e00\u5361\u901a"

    const-string/jumbo v2, "2013062600000474"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/2013062600000474/1_1_2_1501211717/1423633765876_2013062600000474new.jar"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_2013062600000474"

    const-string/jumbo v9, "innerApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.1.2.1501211717"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7231\u5fc3\u6350\u8d60"

    const-string/jumbo v2, "10000009"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/10000009/5_0_2_36/1435204202682_10000009-5_0_2_36+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/my.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"canPullDown\":\"NO\"},\"host\":{\"dev\":\"http://10000009.h5app.alipay.net\",\"test\":\"http://10000009.h5app.test.alipay.net\",\"online\":\"https://10000009.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_10000009"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "10000009-5_0_2_36+TAR.amr"

    const-string/jumbo v11, "5.0.2.36"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u65b0\u6d6a\u65b0\u95fb"

    const-string/jumbo v2, "20000249"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"searchExtra\":{\"publicId\":\"2015052100082500\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u624b\u673a\u5b9d\u4ee4"

    const-string/jumbo v2, "10000008"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_10000008"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "4.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u626b\u4e00\u626b"

    const-string/jumbo v2, "10000007"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "5.1.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u56fd\u9645\u673a\u7968"

    const-string/jumbo v2, "20000157"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000157/4_15_0_1/1433236033616_20000157-4_15_0_1+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/build_offline/pages/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"\"},\"host\":{\"dev\":\"http://20000157.h5app.waptest.taobao.com\",\"test\":\"http://20000157.h5app.waptest.taobao.com\",\"online\":\"http://20000157.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000157-4_15_0_1+TAR.amr"

    const-string/jumbo v11, "4.15.0.1"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7ecf\u8d39\u7fa4"

    const-string/jumbo v2, "20000673"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"1\",\"actionType\":\"Fund\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8f6c\u8d26"

    const-string/jumbo v2, "20000244"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"actionType\":\"lotpay\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6536\u6b3e"

    const-string/jumbo v2, "20000674"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"actionType\":\"personal\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6536\u85cf"

    const-string/jumbo v2, "20000245"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"target\":\"present\",\"selfApp\":\"1\",\"nameForUserStage\":\"\u6536\u85cf\",\"iconForUserStage\":\"http://tfs.alipayobjects.com/L1/71/10001/20150506/1_0_0_0/1434350224749_icon_L.png\"}"

    const-string/jumbo v8, "app_20000245"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u624b\u673a\u5145\u503c"

    const-string/jumbo v2, "10000003"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_10000003"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5173\u4e8e"

    const-string/jumbo v2, "10000110"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_10000110"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u968f\u8eab\u8d37\u5e9f\u5f03ID"

    const-string/jumbo v2, "20000158"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000158/2_0_1_109/1429262375689_20000158-2_0_1_109+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\": {\"url\": \"/www/pages/raise.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"pullRefresh\":\"YES\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000158-2_0_1_109+TAR.amr"

    const-string/jumbo v11, "2.0.1.109"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u670d\u52a1\u7a97"

    const-string/jumbo v2, "20000101"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000101"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u62db\u8d22\u5b9d"

    const-string/jumbo v2, "20000165"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000165/1_0_16_2/1433828393970_20000165-1_0_16_2+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u62db\u8d22\u5b9d\",\"showOptionMenu\":\"NO\"},\"host\":{\"dev\":\"http://zhaocaibao.alipay.net\",\"test\":\"https://zhaocaibao.test.alipay.net\",\"online\":\"https://zhaocaibao.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000165-1_0_16_2+TAR.amr"

    const-string/jumbo v11, "1.0.16.2"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5f69\u7968"

    const-string/jumbo v2, "10000011"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/10000011/3_8_0_99/1434787366188_10000011-3_8_0_99-pro+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"enableFallback\":false,\"url\":\"/www/lottery/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"dev\":\"http://caipiao.waptest.taobao.net\",\"test\":\"http://caipiao.wapa.taobao.com\",\"online\":\"http://caipiao.m.taobao.com\"}}"

    const-string/jumbo v8, "app_10000011"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "10000011-3_8_0_99-pro+TAR.amr"

    const-string/jumbo v11, "3.8.0.99"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6211\u7684\u4f1a\u5458"

    const-string/jumbo v2, "20000160"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000160/0_3_4_3/1435049975871_20000160-0_3_4_3+TAR.amr"

    const-string/jumbo v7, "{\"nameForUserStage\":\"\u4f1a\u5458\u7279\u6743\",\"redPointWidgetId\":\"50000081\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"waitRender\":300,\"gestureBack\":\"NO\",\"defaultTitle\":\"\u6211\u7684\u7279\u6743\",\"readTitle\":\"YES\",\"showToolBar\":\"NO\",\"showProgress\":\"NO\",\"prefetchLocation\":\"YES\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000160.h5app.alipay.net\",\"test\":\"http://20000160.h5app.test.alipay.net\",\"online\":\"https://20000160.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000160"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000160-0_3_4_3+TAR.amr"

    const-string/jumbo v11, "0.3.4.3"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7406\u8d22\u5c0f\u5de5\u5177"

    const-string/jumbo v2, "20000161"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000161"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5883\u5916\u6e38"

    const-string/jumbo v2, "20000107"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000107/4_0_0_0/1434076396391_20000107-4_0_0_0+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/portal/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u5883\u5916\u6e38\"},\"host\":{\"dev\":\"http://20000107.h5app.alipay.net\",\"test\":\"http://20000107.h5app.test.alipay.net\",\"online\":\"https://20000107.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000107"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000107-4_0_0_0+TAR.amr"

    const-string/jumbo v11, "4.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7f8a\u57ce\u901a\u5145\u503c"

    const-string/jumbo v2, "20000162"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000162/1_0_1_7/1433920072221_20000162-1_0_1_7-pro+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"dev\":\"http://20000162.h5app.alipay.net\",\"test\":\"https://20000162.h5app.test.alipay.net\",\"online\":\"https://20000162.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000162"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000162-1_0_1_7-pro+TAR.amr"

    const-string/jumbo v11, "1.0.1.7"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6d77\u5916\u76f4\u8d2d"

    const-string/jumbo v2, "20000109"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000109/1_0_1_16/1427194669023_20000109-1_0_1_16+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/oatpexprod/0.1.0/src/index.htm\",\"defaultTitle\":\"\u6d77\u5916\u76f4\u8d2d\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"readTitle\":\"NO\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000109-1_0_1_16+TAR.amr"

    const-string/jumbo v11, "1.0.1.16"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "AA\u6536\u6b3e"

    const-string/jumbo v2, "20000066"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000066"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.1.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5b58\u91d1\u5b9d"

    const-string/jumbo v2, "20000218"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000218/1_0_0_30/1433231730231_20000218-1_0_0_30+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u5b58\u91d1\u5b9d\",\"showOptionMenu\":\"NO\"},\"host\":{\"dev\":\"http://goldetfprod.h5app.alipay.net\",\"test\":\"https://goldetfprod.h5app.test.alipay.net\",\"online\":\"https://goldetfprod.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000218-1_0_0_30.amr"

    const-string/jumbo v11, "1.0.0.30"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6211\u7684\u5feb\u9012"

    const-string/jumbo v2, "20000046"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000046/1_2_0_1504021517/1427960990228_logistics-build-1.2.0.1504021517.20150330-nolog.jar"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000046"

    const-string/jumbo v9, "innerApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.2.0.1504021517"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4fe1\u7528\u5361\u8fd8\u6b3e"

    const-string/jumbo v2, "09999999"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_09999999"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6536\u6b3e"

    const-string/jumbo v2, "20000215"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"actionType\":\"group\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7ea2\u5305"

    const-string/jumbo v2, "88886666"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"target\":\"personal\",\"schemeMode\":\"portalInside\",\"prevBiz\": \"chat\"}"

    const-string/jumbo v8, "app_88886666"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6dd8\u70b9\u70b9"

    const-string/jumbo v2, "20000120"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000120/3_8_1_13/1433740373959_20000120-3_8_1_13+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/index.htm?ttid=12huo0000030\",\"showTitleBar\":\"YES\",\"safePayEnabled\":\"YES\",\"showToolBar\":\"NO\",\"pullRefresh\":\"YES\",\"ssoLoginEnabled\":\"YES\",\"ttid\":\"12huo0000030\"},\"host\":{\"enable\":true,\"dev\":\"http://dd.waptest.taobao.com\",\"test\":\"http://dd.waptest.taobao.com\",\"online\":\"http://20000120.h5app.m.taobao.com\"}}"

    const-string/jumbo v8, "app_20000120"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000120-3_8_1_13+TAR.amr"

    const-string/jumbo v11, "3.8.1.13"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6211\u7684\u5feb\u9012\uff08\u6dd8\u5b9d\uff09"

    const-string/jumbo v2, "20000146"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000146/1_2_0_22/1433233756875_20000146-1_2_0_22+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/home/index.html\",\"showTitleBar\":\"YES\",\"offlineH5SsoLoginFirst\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"http://20000146.h5app.waptest.taobao.net\",\"test\":\"http://20000146.h5app.waptest.taobao.net\",\"online\":\"http://20000146.h5app.m.taobao.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000146-1_2_0_22+TAR.amr"

    const-string/jumbo v11, "1.2.0.22"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u58f9\u57fa\u91d1\u6708\u6350"

    const-string/jumbo v2, "11000002"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/11000002/5_2_1_7/1433229170122_11000002-5_2_1_7+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/one.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"YES\"},\"host\":{\"dev\":\"http://11000002.h5app.alipay.net\",\"test\":\"http://11000002.h5app.test.alipay.net\",\"online\":\"https://11000002.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_11000002"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "5.2.1.7"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u56fe\u7247"

    const-string/jumbo v2, "20000219"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6d3b\u52a8\u7fa4"

    const-string/jumbo v2, "20000672"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"actionType\":\"form\",\"actionId\":\"general\",\"mode\":\"finish\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u53bb\u554a"

    const-string/jumbo v2, "20000155"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000155/0_2_28_20/1434517434126_20000155-0_2_28_20-publish+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/build_offline/pages/home/index.html?ttid=12zfb0000099\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000099\"},\"host\":{\"dev\":\"http://20000155.h5app.waptest.taobao.com\",\"test\":\"http://20000155.h5app.waptest.taobao.com\",\"online\":\"http://20000155.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v8, "app_20000155"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000155-0_2_28_20-publish+TAR.amr"

    const-string/jumbo v11, "0.2.28.20"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5a31\u4e50\u7fa4"

    const-string/jumbo v2, "20000671"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"actionType\":\"featurelotpay\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6d77\u5916\u4ea4\u901a\u5361"

    const-string/jumbo v2, "20000152"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000152/2_6_3_3/1433401205808_20000152-2_6_3_3+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/prepaidcard/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\"},\"host\":{\"dev\":\"http://20000152.h5app.alipay.net\",\"test\":\"http://20000152.h5app.test.alipay.net\",\"online\":\"https://20000152.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000152"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000152-2_6_3_3+TAR.amr"

    const-string/jumbo v11, "2.6.3.3"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6e38\u620f\u5145\u503c"

    const-string/jumbo v2, "20000153"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000153/1_1_1_1/1435040267100_20000153-1_1_1_1+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/game/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"_appId\":\"20000153\"},\"host\":{\"dev\":\"http://20000153.h5app.taobao.com\",\"test\":\"http://20000153.h5app.test.taobao.com\",\"online\":\"https://20000153.h5app.taobao.com\"}}"

    const-string/jumbo v8, "app_20000153"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000153-1_1_1_1+TAR.amr"

    const-string/jumbo v11, "1.1.1.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6559\u80b2\u7f34\u8d39"

    const-string/jumbo v2, "2014021200003129"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/2014021200003129/2_0_3_1/1433920450285_2014021200003129-2_0_3_1+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/edu/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"_appId\":\"2014021200003129\"},\"host\":{\"dev\":\"http://2014021200003129.h5app.alipay.net\",\"test\":\"http://2014021200003129.h5app.test.alipay.net\",\"online\":\"https://2014021200003129.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_2014021200003129"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "2014021200003129-2_0_3_1+TAR.amr"

    const-string/jumbo v11, "2.0.3.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u670b\u53cb\u6d88\u606f\u63d0\u9192"

    const-string/jumbo v2, "20000722"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9690\u79c1"

    const-string/jumbo v2, "20000723"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u804a\u5929"

    const-string/jumbo v2, "20000724"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8bbe\u7f6e"

    const-string/jumbo v2, "20000725"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000725"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u82b1\u5457"

    const-string/jumbo v2, "20000199"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000199/1_0_1_24/1434020956989_20000199-1_0_1_24+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/sign.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u82b1\u5457\",\"showOptionMenu\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000199.alipay.net\",\"test\":\"https://20000199.test.alipay.net\",\"online\":\"https://20000199.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000199-1_0_1_24+TAR.amr"

    const-string/jumbo v11, "1.0.1.24"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8f6c\u8d26"

    const-string/jumbo v2, "20000221"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"strangerApp\":\"1\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6dd8\u5b9d"

    const-string/jumbo v2, "2013082800000932"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/2013082800000932/4_8_0/1423583192318_taobao4android_10000385.apk"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_2013082800000932"

    const-string/jumbo v9, "independantApp"

    const-string/jumbo v10, "com.taobao.taobao"

    const-string/jumbo v11, "4.8.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4e5d\u6e38\u6e38\u620f"

    const-string/jumbo v2, "20000197"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"http://ba.ugame.uc.cn/?ch=AL_3\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"backBehavior\":\"back\"}}"

    const-string/jumbo v8, "app_20000197"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "H5\u516c\u5171\u8d44\u6e90"

    const-string/jumbo v2, "20000196"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000196/1_0_12_0/1435217833259_20000196-1_0_12_0+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/index.html\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000196-1_0_12_0+TAR.amr"

    const-string/jumbo v11, "1.0.12.0"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4ed8\u6b3e"

    const-string/jumbo v2, "20000056"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u751f\u6d3b\u7f34\u8d39"

    const-string/jumbo v2, "20000193"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000193/1_0_9_0/1434719362329_20000193-1_0_9_0+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"https://20000193.h5app.alipay.net\",\"test\":\"https://20000193.h5app.test.alipay.net\",\"online\":\"https://20000193.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000193"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000193-1_0_9_0+TAR.amr"

    const-string/jumbo v11, "1.0.9.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
