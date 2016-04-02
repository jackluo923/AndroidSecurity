.class public Lcom/alipay/mobile/publicplatform/news/NewsBiz;
.super Ljava/lang/Object;
.source "NewsBiz.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private obtainMessageFacade()Lcom/alipay/publiccore/biz/service/impl/rpc/MessageInfoFacade;
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 28
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 26
    const-class v1, Lcom/alipay/publiccore/biz/service/impl/rpc/MessageInfoFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/MessageInfoFacade;

    .line 29
    return-object v0
.end method


# virtual methods
.method public loadNewsbyId(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/publiccore/client/result/MessageQueryResult;
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/publicplatform/news/NewsBiz;->obtainMessageFacade()Lcom/alipay/publiccore/biz/service/impl/rpc/MessageInfoFacade;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/alipay/publiccore/client/req/MessageQueryReq;

    invoke-direct {v1}, Lcom/alipay/publiccore/client/req/MessageQueryReq;-><init>()V

    .line 20
    iput-object p2, v1, Lcom/alipay/publiccore/client/req/MessageQueryReq;->msgId:Ljava/lang/String;

    .line 21
    iput-object p1, v1, Lcom/alipay/publiccore/client/req/MessageQueryReq;->publicId:Ljava/lang/String;

    .line 22
    invoke-interface {v0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/MessageInfoFacade;->queryMessageById(Lcom/alipay/publiccore/client/req/MessageQueryReq;)Lcom/alipay/publiccore/client/result/MessageQueryResult;

    move-result-object v0

    return-object v0
.end method
