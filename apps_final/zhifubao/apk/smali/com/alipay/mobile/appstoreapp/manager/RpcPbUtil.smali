.class public Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;
.super Ljava/lang/Object;
.source "RpcPbUtil.java"


# static fields
.field private static a:Lcom/alipay/mobile/base/config/ConfigService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 46
    sput-object v0, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a:Lcom/alipay/mobile/base/config/ConfigService;

    .line 39
    return-void
.end method

.method private static a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;
    .locals 6

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    invoke-direct {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultCode:I

    .line 136
    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultMsg:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->resultMsg:Ljava/lang/String;

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->stageList:Ljava/util/List;

    .line 139
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    :cond_1
    iput-object v2, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;->stageList:Ljava/util/List;

    move-object v0, v1

    .line 151
    goto :goto_0

    .line 140
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;

    .line 141
    new-instance v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;

    invoke-direct {v4}, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;-><init>()V

    .line 142
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->stageCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->stageCode:Ljava/lang/String;

    .line 143
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->dataVersion:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->dataVersion:Ljava/lang/String;

    .line 144
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->parentStageCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->parentStageCode:Ljava/lang/String;

    .line 145
    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->appList:Ljava/util/List;

    invoke-static {v5}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->appList:Ljava/util/List;

    .line 146
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->configMap:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;->configMap:Ljava/util/Map;

    .line 147
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static a(Z[Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;
    .locals 4

    .prologue
    .line 50
    const-string/jumbo v0, "APPCENTER_RPC_PB_SWITCH"

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "RpcPbUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchKey = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "RpcPbUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isPreStage = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;

    invoke-direct {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;-><init>()V

    iput-boolean p0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;->pre:Z

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;->width:I

    const-string/jumbo v0, "ANDROID"

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;->platform:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;->stageList:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;->queryClientApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-string/jumbo v0, "RpcPbUtil"

    const-string/jumbo v1, "queryClientAppByPb rpc for pb "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;

    invoke-direct {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;-><init>()V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->pre:Ljava/lang/Boolean;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->width:Ljava/lang/Integer;

    const-string/jumbo v0, "ANDROID"

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->platform:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->stageList:Ljava/util/List;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;

    invoke-virtual {v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/facade/app/AppInfoServiceFacade;->queryClientAppByPb(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppListRes;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 85
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 83
    sput-object v0, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a:Lcom/alipay/mobile/base/config/ConfigService;

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 89
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/appstoreapp/manager/RpcPbUtil;->a:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 193
    :goto_0
    return-object v0

    .line 159
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 193
    goto :goto_0

    .line 159
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;

    .line 160
    new-instance v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;

    invoke-direct {v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;-><init>()V

    .line 161
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->alipayApp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->alipayApp:Z

    .line 162
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    .line 163
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoAuthorize:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->autoAuthorize:Z

    .line 164
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoStatus:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->autoStatus:Z

    .line 167
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->desc:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->desc:Ljava/lang/String;

    .line 168
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->display:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->display:Z

    .line 169
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extra:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->extra:Ljava/lang/String;

    .line 170
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    .line 171
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->iconUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->iconUrl:Ljava/lang/String;

    .line 172
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->id:J

    .line 173
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->incrementPkgUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->incrementPkgUrl:Ljava/lang/String;

    .line 174
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->md5:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->md5:Ljava/lang/String;

    .line 175
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->movable:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->movable:Z

    .line 176
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->name:Ljava/lang/String;

    .line 177
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->needAuthorize:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->needAuthorize:Z

    .line 178
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pageUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pageUrl:Ljava/lang/String;

    .line 179
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgSize:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgSize:J

    .line 180
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    invoke-virtual {v4}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    .line 181
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgUrl:Ljava/lang/String;

    .line 182
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrlNew:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgUrlNew:Ljava/lang/String;

    .line 183
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->rank:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->rank:I

    .line 184
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->recommend:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->recommend:Z

    .line 185
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->schemeUri:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->schemeUri:Ljava/lang/String;

    .line 186
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->slogan:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->slogan:Ljava/lang/String;

    .line 187
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->stageExtProp:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->stageExtProp:Ljava/lang/String;

    .line 188
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    invoke-virtual {v4}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->status:Ljava/lang/String;

    .line 189
    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->thirdPkgName:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->thirdPkgName:Ljava/lang/String;

    .line 190
    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->version:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->version:Ljava/lang/String;

    .line 191
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private static b(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 203
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    :cond_1
    return-object v1

    .line 204
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;

    .line 205
    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
