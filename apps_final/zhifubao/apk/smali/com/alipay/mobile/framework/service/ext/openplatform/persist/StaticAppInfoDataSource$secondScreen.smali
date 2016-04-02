.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _secondScreen:Ljava/util/List;
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
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v1, "10000011"

    const-string/jumbo v4, "app_10000011"

    const-string/jumbo v5, "\u5f69\u7968"

    const-string/jumbo v6, "{\"launchParams\":{\"enableFallback\":false,\"url\":\"/www/lottery/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"dev\":\"http://caipiao.waptest.taobao.net\",\"test\":\"http://caipiao.wapa.taobao.com\",\"online\":\"http://caipiao.m.taobao.com\"}}"

    const-string/jumbo v7, "{}"

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000131"

    const-string/jumbo v8, "app_20000131"

    const-string/jumbo v9, "\u6dd8\u5b9d\u7535\u5f71"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "10000033"

    const-string/jumbo v8, "app_10000033"

    const-string/jumbo v9, "\u8bdd\u8d39\u5361\u8f6c\u8ba9"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "2013062600000474"

    const-string/jumbo v8, "app_2013062600000474"

    const-string/jumbo v9, "\u6821\u56ed\u4e00\u5361\u901a"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000197"

    const-string/jumbo v8, "app_20000197"

    const-string/jumbo v9, "\u4e5d\u6e38\u6e38\u620f"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"http://ba.ugame.uc.cn/?ch=AL_3\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"backBehavior\":\"back\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "11000002"

    const-string/jumbo v8, "app_11000002"

    const-string/jumbo v9, "\u58f9\u57fa\u91d1\u6708\u6350"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/one.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"YES\"},\"host\":{\"dev\":\"http://11000002.h5app.alipay.net\",\"test\":\"http://11000002.h5app.test.alipay.net\",\"online\":\"https://11000002.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "10000114"

    const-string/jumbo v8, "app_10000114"

    const-string/jumbo v9, "\u88c5\u673a\u5fc5\u5907"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"http://d.alipay.com/zjbb/zjbb.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000078"

    const-string/jumbo v8, "app_20000078"

    const-string/jumbo v9, "\u56fd\u9645\u6c47\u6b3e"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/remit/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"backBehavior\":\"back\",\"showOptionMenu\":\"YES\"},\"host\":{\"dev\":\"http://20000078.h5app.alipay.net\",\"test\":\"http://20000078.h5app.test.alipay.net\",\"online\":\"https://20000078.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000088"

    const-string/jumbo v8, "app_20000088"

    const-string/jumbo v9, "\u57ce\u5e02\u4e00\u5361\u901a"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000162"

    const-string/jumbo v8, "app_20000162"

    const-string/jumbo v9, "\u7f8a\u57ce\u901a\u5145\u503c"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"dev\":\"http://20000162.h5app.alipay.net\",\"test\":\"https://20000162.h5app.test.alipay.net\",\"online\":\"https://20000162.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "2014021200003129"

    const-string/jumbo v8, "app_2014021200003129"

    const-string/jumbo v9, "\u6559\u80b2\u7f34\u8d39"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/edu/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"_appId\":\"2014021200003129\"},\"host\":{\"dev\":\"http://2014021200003129.h5app.alipay.net\",\"test\":\"http://2014021200003129.h5app.test.alipay.net\",\"online\":\"https://2014021200003129.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "10000008"

    const-string/jumbo v8, "app_10000008"

    const-string/jumbo v9, "\u624b\u673a\u5b9d\u4ee4"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "80000002"

    const-string/jumbo v8, "app_80000002"

    const-string/jumbo v9, "\u670d\u52a1\u7a97"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/pages/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://80000002.h5app.alipay.net\",\"test\":\"http://80000002.h5app.test.alipay.net\",\"online\":\"https://80000002.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000066"

    const-string/jumbo v8, "app_20000066"

    const-string/jumbo v9, "AA\u6536\u6b3e"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000107"

    const-string/jumbo v8, "app_20000107"

    const-string/jumbo v9, "\u5883\u5916\u6e38"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/portal/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u5883\u5916\u6e38\"},\"host\":{\"dev\":\"http://20000107.h5app.alipay.net\",\"test\":\"http://20000107.h5app.test.alipay.net\",\"online\":\"https://20000107.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000130"

    const-string/jumbo v8, "app_20000130"

    const-string/jumbo v9, "\u5feb\u7684\u6253\u8f66"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/index.html\", \"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\":\"NO\",\"canPullDown\":\"NO\",\"safePayEnabled\":\"YES\",\"readTitle\":\"YES\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000130.h5app.alipay.net\",\"test\":\"http://20000130.h5app.test.alipay.net\",\"online\":\"https://20000130.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000690"

    const-string/jumbo v8, "app_20000690"

    const-string/jumbo v9, "\u8d26\u53f7\u4f30\u503c"

    const-string/jumbo v10, "{\"launchParams\": {\"url\": \"http://huodong.m.taobao.com/topic/alipaySudoku/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"pullRefresh\":\"YES\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000139"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u9152\u5e97"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"\"},\"host\":{\"dev\":\"http://20000139.h5app.waptest.taobao.com\",\"test\":\"http://20000139.h5app.waptest.taobao.com\",\"online\":\"http://20000139.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000157"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u56fd\u9645\u673a\u7968"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/build_offline/pages/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"\"},\"host\":{\"dev\":\"http://20000157.h5app.waptest.taobao.com\",\"test\":\"http://20000157.h5app.waptest.taobao.com\",\"online\":\"http://20000157.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000158"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u968f\u8eab\u8d37\u5e9f\u5f03ID"

    const-string/jumbo v10, "{\"launchParams\": {\"url\": \"/www/pages/raise.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"pullRefresh\":\"YES\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000143"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u706b\u8f66\u7968"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"\"},\"host\":{\"dev\":\"http://20000143.h5app.waptest.taobao.com\",\"test\":\"http://20000143.h5app.waptest.taobao.com\",\"online\":\"http://20000143.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000142"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u5a31\u4e50\u5b9d"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/build/page/home.html\",\"pullRefresh\":\"YES\",\"showTitleBar\":\"YES\",\"showOptionMenu\":\"NO\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"enable\": true,\"dev\":\"http://20000142.h5app.alipay.net\",\"test\":\"http://20000142.h5app.test.alipay.net\",\"online\":\"https://20000142.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000165"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u62db\u8d22\u5b9d"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u62db\u8d22\u5b9d\",\"showOptionMenu\":\"NO\"},\"host\":{\"dev\":\"http://zhaocaibao.alipay.net\",\"test\":\"https://zhaocaibao.test.alipay.net\",\"online\":\"https://zhaocaibao.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000199"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u82b1\u5457"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/sign.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u82b1\u5457\",\"showOptionMenu\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000199.alipay.net\",\"test\":\"https://20000199.test.alipay.net\",\"online\":\"https://20000199.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000196"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5\u516c\u5171\u8d44\u6e90"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/index.html\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000109"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u6d77\u5916\u76f4\u8d2d"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/oatpexprod/0.1.0/src/index.htm\",\"defaultTitle\":\"\u6d77\u5916\u76f4\u8d2d\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"readTitle\":\"NO\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000218"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u5b58\u91d1\u5b9d"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u5b58\u91d1\u5b9d\",\"showOptionMenu\":\"NO\"},\"host\":{\"dev\":\"http://goldetfprod.h5app.alipay.net\",\"test\":\"https://goldetfprod.h5app.test.alipay.net\",\"online\":\"https://goldetfprod.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000146"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u6211\u7684\u5feb\u9012\uff08\u6dd8\u5b9d\uff09"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/home/index.html\",\"showTitleBar\":\"YES\",\"offlineH5SsoLoginFirst\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"http://20000146.h5app.waptest.taobao.net\",\"test\":\"http://20000146.h5app.waptest.taobao.net\",\"online\":\"http://20000146.h5app.m.taobao.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000123"

    const-string/jumbo v8, "app_20000123"

    const-string/jumbo v9, "\u6536\u6b3e"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000697"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u53bb\u554a\u5468\u8fb9\u6e38"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"/build_offline/pages/search/index.html\",\"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\": \"NO\",\"ttid\": \"12zfb0000157\"},\"host\": {\"dev\": \"http://20000697.h5app.waptest.taobao.com\",\"test\": \"http://20000697.h5app.waptest.taobao.com\",\"online\": \"http://20000697.h5app.m.taobao.com\",\"enable\": true}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000249"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u65b0\u6d6a\u65b0\u95fb"

    const-string/jumbo v10, "{\"searchExtra\":{\"publicId\":\"2015052100082500\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
