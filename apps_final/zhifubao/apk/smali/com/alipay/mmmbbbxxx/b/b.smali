.class public final Lcom/alipay/mmmbbbxxx/b/b;
.super Ljava/lang/Object;
.source "MessageboxRpcServiceImpl.java"

# interfaces
.implements Lcom/alipay/mmmbbbxxx/b/a;


# instance fields
.field msgboxOperateFacade:Lcom/alipay/mmmbbbxxx/d/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_0

    .line 30
    const-class v1, Lcom/alipay/mmmbbbxxx/d/a;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mmmbbbxxx/d/a;

    iput-object v0, p0, Lcom/alipay/mmmbbbxxx/b/b;->msgboxOperateFacade:Lcom/alipay/mmmbbbxxx/d/a;

    .line 32
    :cond_0
    return-void

    .line 28
    :cond_1
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    goto :goto_0
.end method


# virtual methods
.method public final operateByMsgIdList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mmmbbbxxx/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mmmbbbxxx/d/b;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mmmbbbxxx/b/b;->msgboxOperateFacade:Lcom/alipay/mmmbbbxxx/d/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mmmbbbxxx/d/a;->operateByMsgIdList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mmmbbbxxx/d/b;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final operateByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mmmbbbxxx/d/b;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mmmbbbxxx/b/b;->msgboxOperateFacade:Lcom/alipay/mmmbbbxxx/d/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mmmbbbxxx/d/a;->operateByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mmmbbbxxx/d/b;

    move-result-object v0

    .line 51
    return-object v0
.end method
