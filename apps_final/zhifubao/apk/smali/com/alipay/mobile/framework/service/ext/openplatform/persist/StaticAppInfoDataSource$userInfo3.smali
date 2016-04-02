.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userInfo3;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _userInfo3:Ljava/util/List;
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

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userInfo3;->_userInfo3:Ljava/util/List;

    const-string/jumbo v1, "10000110"

    const-string/jumbo v4, "app_10000110"

    const-string/jumbo v5, "\u5173\u4e8e"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userInfo3;->_userInfo3:Ljava/util/List;

    const-string/jumbo v1, "20000691"

    const-string/jumbo v4, "app_20000691"

    const-string/jumbo v5, "\u6211\u7684\u5ba2\u670d"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"/www/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"defaultTitle\":\"\u6211\u7684\u5ba2\u670d\",\"showOptionMenu\":\"YES\"},\"host\":{\"dev\":\"http://mypa.h5app.alipay.net\",\"test\":\"https://mypa.h5app.test.alipay.net\",\"online\":\"https://mypa.h5app.alipay.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
