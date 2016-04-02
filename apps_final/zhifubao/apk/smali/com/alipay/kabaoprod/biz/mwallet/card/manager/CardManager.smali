.class public interface abstract Lcom/alipay/kabaoprod/biz/mwallet/card/manager/CardManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createCard(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CreateCardResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.card.createCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createMemberCard(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.card.createMemberCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryAvailableCardList(Lcom/alipay/kabaoprod/biz/mwallet/card/request/ListCardMerchantReq;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.card.queryAvailableCardList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCardPreviewInfo(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.card.queryCardPreviewInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryMemberCardInfo(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.card.queryMemberCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
