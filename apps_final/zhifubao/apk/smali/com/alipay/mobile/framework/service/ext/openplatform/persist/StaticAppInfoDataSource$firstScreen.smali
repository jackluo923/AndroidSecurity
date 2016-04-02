.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _firstScreen:Ljava/util/List;
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
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "09999999"

    const-string/jumbo v4, "app_09999999"

    const-string/jumbo v5, "\u4fe1\u7528\u5361\u8fd8\u6b3e"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000168"

    const-string/jumbo v4, "app_20000168"

    const-string/jumbo v5, "\u8bb0\u8d26\u672c"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000134"

    const-string/jumbo v4, "app_20000134"

    const-string/jumbo v5, "\u80a1\u7968"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000177"

    const-string/jumbo v4, "app_20000177"

    const-string/jumbo v5, "\u57ce\u5e02\u670d\u52a1"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000161"

    const-string/jumbo v4, "app_20000161"

    const-string/jumbo v5, "\u7406\u8d22\u5c0f\u5de5\u5177"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "2013082800000932"

    const-string/jumbo v4, "app_2013082800000932"

    const-string/jumbo v5, "\u6dd8\u5b9d"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000153"

    const-string/jumbo v4, "app_20000153"

    const-string/jumbo v5, "\u6e38\u620f\u5145\u503c"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"/www/game/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"_appId\":\"20000153\"},\"host\":{\"dev\":\"http://20000153.h5app.taobao.com\",\"test\":\"http://20000153.h5app.test.taobao.com\",\"online\":\"https://20000153.h5app.taobao.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000132"

    const-string/jumbo v4, "app_20000132"

    const-string/jumbo v5, "\u4eb2\u5bc6\u4ed8"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000135"

    const-string/jumbo v4, "app_20000135"

    const-string/jumbo v5, "\u673a\u7968\u706b\u8f66\u7968"

    const-string/jumbo v6, "{\"launchParams\":{\"url\": \"/build_offline/pages/search/index.html?ttid=12zfb0000098\",\"showToolBar\": \"NO\",\"showTitleBar\": \"YES\",\"safePayEnabled\": \"YES\", \"backBehavior\": \"back\",\"ssoLoginEnabled\": \"YES\", \"readTitle\": \"YES\",\"ttid\": \"12zfb0000098\" }, \"host\": {\"dev\": \"http://20000135.h5app.waptest.taobao.com\",\"test\": \"http://20000135.h5app.waptest.taobao.com\", \"online\": \"http://20000135.h5app.m.taobao.com\", \"enable\": true }}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000046"

    const-string/jumbo v4, "app_20000046"

    const-string/jumbo v5, "\u6211\u7684\u5feb\u9012"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "10000003"

    const-string/jumbo v4, "app_10000003"

    const-string/jumbo v5, "\u624b\u673a\u5145\u503c"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "09999988"

    const-string/jumbo v4, "app_09999988"

    const-string/jumbo v5, "\u8f6c\u8d26"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000120"

    const-string/jumbo v4, "app_20000120"

    const-string/jumbo v5, "\u6dd8\u70b9\u70b9"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"/www/index.htm?ttid=12huo0000030\",\"showTitleBar\":\"YES\",\"safePayEnabled\":\"YES\",\"showToolBar\":\"NO\",\"pullRefresh\":\"YES\",\"ssoLoginEnabled\":\"YES\",\"ttid\":\"12huo0000030\"},\"host\":{\"enable\":true,\"dev\":\"http://dd.waptest.taobao.com\",\"test\":\"http://dd.waptest.taobao.com\",\"online\":\"http://20000120.h5app.m.taobao.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000155"

    const-string/jumbo v4, "app_20000155"

    const-string/jumbo v5, "\u53bb\u554a"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"/build_offline/pages/home/index.html?ttid=12zfb0000099\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000099\"},\"host\":{\"dev\":\"http://20000155.h5app.waptest.taobao.com\",\"test\":\"http://20000155.h5app.waptest.taobao.com\",\"online\":\"http://20000155.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "10000009"

    const-string/jumbo v4, "app_10000009"

    const-string/jumbo v5, "\u7231\u5fc3\u6350\u8d60"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"/www/my.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"canPullDown\":\"NO\"},\"host\":{\"dev\":\"http://10000009.h5app.alipay.net\",\"test\":\"http://10000009.h5app.test.alipay.net\",\"online\":\"https://10000009.h5app.alipay.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v4, "20000152"

    const/4 v5, 0x0

    const-string/jumbo v7, "app_20000152"

    const-string/jumbo v8, "\u6d77\u5916\u4ea4\u901a\u5361"

    const-string/jumbo v9, "{\"launchParams\":{\"url\":\"/www/prepaidcard/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\"},\"host\":{\"dev\":\"http://20000152.h5app.alipay.net\",\"test\":\"http://20000152.h5app.test.alipay.net\",\"online\":\"https://20000152.h5app.alipay.com\"}}"

    const-string/jumbo v10, "{}"

    move v6, v2

    invoke-static/range {v3 .. v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "88886666"

    const-string/jumbo v4, "app_88886666"

    const-string/jumbo v5, "\u7ea2\u5305"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000193"

    const-string/jumbo v4, "app_20000193"

    const-string/jumbo v5, "\u751f\u6d3b\u7f34\u8d39"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"https://20000193.h5app.alipay.net\",\"test\":\"https://20000193.h5app.test.alipay.net\",\"online\":\"https://20000193.h5app.alipay.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000205"

    const-string/jumbo v4, "app_20000205"

    const-string/jumbo v5, "\u4eb2\u60c5\u8d26\u6237"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000101"

    const-string/jumbo v4, "app_20000101"

    const-string/jumbo v5, "\u670d\u52a1\u7a97"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000233"

    const-string/jumbo v4, "app_20000233"

    const-string/jumbo v5, "\u963f\u91cc\u7535\u89c6"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000691"

    const-string/jumbo v4, "app_20000691"

    const-string/jumbo v5, "\u6211\u7684\u5ba2\u670d"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"/www/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"defaultTitle\":\"\u6211\u7684\u5ba2\u670d\",\"showOptionMenu\":\"YES\"},\"host\":{\"dev\":\"http://mypa.h5app.alipay.net\",\"test\":\"https://mypa.h5app.test.alipay.net\",\"online\":\"https://mypa.h5app.alipay.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
