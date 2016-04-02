.class public Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;
.super Ljava/lang/Object;
.source "AppsDataBizImpl.java"

# interfaces
.implements Lcom/alipay/mobile/appstoreapp/biz/AppsDataBiz;


# instance fields
.field a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private b:Lcom/alipay/mobile/framework/app/ActivityApplication;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 24
    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/alipay/mobile/appstoreapp/common/Page;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/alipay/mobile/appstoreapp/common/Page",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppsByPage(II)Ljava/util/List;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    new-instance v0, Lcom/alipay/mobile/appstoreapp/common/Page;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/appstoreapp/common/Page;-><init>(Ljava/util/List;)V

    .line 38
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/alipay/mobile/appstoreapp/common/Page;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/alipay/mobile/appstoreapp/common/Page;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/biz/AppsDataBizImpl;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    return-object v0
.end method
