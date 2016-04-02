.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/UserAccountLayoutFacade;
.super Ljava/lang/Object;
.source "UserAccountLayoutFacade.java"


# virtual methods
.method public abstract getMenuInfo(Lcom/alipay/publiccore/core/model/account/MenuLayoutReq;)Lcom/alipay/publiccore/core/model/account/MenuLayoutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getMenuInfo"
    .end annotation
.end method

.method public abstract getUserAccountLayout(Lcom/alipay/publiccore/core/model/account/UserAccountLayoutReq;)Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getUserAccountLayout"
    .end annotation
.end method

.method public abstract getUserAccountLayoutList(Lcom/alipay/publiccore/client/req/UserAccountLayoutListReq;)Lcom/alipay/publiccore/client/result/UserAccountLayoutListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getUserAccountLayoutList"
    .end annotation
.end method
