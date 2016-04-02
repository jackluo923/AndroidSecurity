.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userInfo2;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _userInfo2:Ljava/util/List;
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

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$userInfo2;->_userInfo2:Ljava/util/List;

    const-string/jumbo v1, "20000160"

    const-string/jumbo v4, "app_20000160"

    const-string/jumbo v5, "\u6211\u7684\u4f1a\u5458"

    const-string/jumbo v6, "{\"nameForUserStage\":\"\u4f1a\u5458\u7279\u6743\",\"redPointWidgetId\":\"50000081\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"waitRender\":300,\"gestureBack\":\"NO\",\"defaultTitle\":\"\u6211\u7684\u7279\u6743\",\"readTitle\":\"YES\",\"showToolBar\":\"NO\",\"showProgress\":\"NO\",\"prefetchLocation\":\"YES\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000160.h5app.alipay.net\",\"test\":\"http://20000160.h5app.test.alipay.net\",\"online\":\"https://20000160.h5app.alipay.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
