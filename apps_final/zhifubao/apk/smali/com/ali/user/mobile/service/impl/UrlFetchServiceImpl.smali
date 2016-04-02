.class public Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;
.super Lcom/ali/user/mobile/service/BaseBizService;
.source "UrlFetchServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/service/UrlFetchService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/service/BaseBizService",
        "<",
        "Lcom/alipay/aliusergw/biz/shared/facade/H5Facade;",
        ">;",
        "Lcom/ali/user/mobile/service/UrlFetchService;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/service/BaseBizService;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public foundH5urls(Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;
    .locals 8

    .prologue
    .line 25
    new-instance v0, Lcom/ali/user/mobile/log/GwCommonLogAgent;

    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v3, "YWUC-JTTYZH-C29"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/GwCommonLogAgent;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/log/BehaviourIdEnum;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logStart()V

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;->mRpcInterface:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/aliusergw/biz/shared/facade/H5Facade;

    invoke-interface {v1, p1}, Lcom/alipay/aliusergw/biz/shared/facade/H5Facade;->foundH5urls(Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;)Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;

    move-result-object v7

    .line 30
    if-nez v7, :cond_0

    .line 31
    const-string/jumbo v1, "res=null"

    const-string/jumbo v2, "N"

    iget-object v4, p1, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->scene:Ljava/lang/String;

    const-string/jumbo v5, "common.h5url"

    const-string/jumbo v6, ""

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-object v7

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v7, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    iget v3, v7, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "Y"

    :goto_1
    iget-object v4, p1, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->scene:Ljava/lang/String;

    const-string/jumbo v5, "common.h5url"

    iget-object v6, v7, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->token:Ljava/lang/String;

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "N"

    const-string/jumbo v4, "netException"

    const-string/jumbo v5, "common.h5url"

    const-string/jumbo v6, ""

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/log/GwCommonLogAgent;->logEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    throw v7

    .line 33
    :cond_1
    :try_start_1
    const-string/jumbo v2, "N"
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public foundH5urls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;

    invoke-direct {v0}, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;-><init>()V

    .line 45
    iput-object p1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->logonId:Ljava/lang/String;

    .line 46
    iput-object p3, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->scene:Ljava/lang/String;

    .line 47
    iput-object p4, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->rdsInfo:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->sdkVersions:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->appKey:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->apdId:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/ali/user/mobile/AppIdDef;->currentAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->appId:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->umidToken:Ljava/lang/String;

    .line 53
    iput-object p5, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;->loginIdHiddened:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v0, p2}, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;->foundH5urls(Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlReq;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;

    move-result-object v0

    return-object v0
.end method

.method public foundH5urls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V
    .locals 6

    .prologue
    .line 60
    invoke-virtual/range {p0 .. p5}, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;->foundH5urls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "UrlFetchServiceImpl"

    const-string/jumbo v2, "h5url\u7ed3\u679c, code:%s, msg:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->resultStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;->memo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz p6, :cond_0

    .line 63
    invoke-interface {p6, v0}, Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;->onH5Response(Lcom/alipay/aliusergw/biz/shared/processer/h5/H5UrlRes;)V

    .line 65
    :cond_0
    return-void
.end method
