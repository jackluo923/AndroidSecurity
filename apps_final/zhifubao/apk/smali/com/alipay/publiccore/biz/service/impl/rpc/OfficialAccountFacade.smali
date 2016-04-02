.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/OfficialAccountFacade;
.super Ljava/lang/Object;
.source "OfficialAccountFacade.java"


# virtual methods
.method public abstract addFollow(Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/client/result/AddFollowResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.addFollow"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserAccount(Lcom/alipay/publiccore/client/req/UserAccountReq;)Lcom/alipay/publiccore/client/result/UserAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.getUserAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyMsgSwitch(Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.modifyMsgSwitch"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyPushSwitch(Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.modifyPushSwitch"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyUploadGisSwitch(Lcom/alipay/publiccore/client/req/UploadGisSwitchReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.modifyUploadGisSwitch"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract preloadOfficialAccountSetMsg(Lcom/alipay/publiccore/client/req/OfficialAccountSetReq;)Lcom/alipay/publiccore/client/result/OfficialAccountSetResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.preloadOfficialAccountSetMsg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCategories(Lcom/alipay/publiccore/client/req/OfficialCategoriesReq;)Lcom/alipay/publiccore/client/result/OfficialTypeListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryCategories"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCategoryRecommendAccount(Lcom/alipay/publiccore/client/req/MoreOfficialListReq;)Lcom/alipay/publiccore/client/result/OfficialAccountListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryCategoryRecommendAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryDefFollowAccount(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryDefFollowAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryMoreOfficialAccount(Lcom/alipay/publiccore/client/req/MoreOfficialListReq;)Lcom/alipay/publiccore/client/result/OfficialAccountListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryMoreOfficialAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryOfficialAccount(Lcom/alipay/publiccore/client/req/OfficialAccountListReq;)Lcom/alipay/publiccore/client/result/OfficialAccountListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryOfficialAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryOfficialAccountByInstIdAndCardType(Lcom/alipay/publiccore/client/req/OfficialQueryByInstIdReq;)Lcom/alipay/publiccore/client/result/OfficialAccountLinkResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryOfficialAccountByInstIdAndCardType"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryOfficialAccountSetMsg(Lcom/alipay/publiccore/client/req/OfficialAccountSetReq;)Lcom/alipay/publiccore/client/result/OfficialAccountSetResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryOfficialAccountSetMsg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryOfficialDetail(Lcom/alipay/publiccore/client/req/OfficialAccountReq;)Lcom/alipay/publiccore/client/result/OfficialAccountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryOfficialDetail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryRecommendOfficial(Lcom/alipay/publiccore/client/req/OfficialRecommendReq;)Lcom/alipay/publiccore/client/result/OfficialRecommendListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryRecommendOfficial"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract querySubOfficialType(Lcom/alipay/publiccore/client/req/OfficialTypeReq;)Lcom/alipay/publiccore/client/result/OfficialTypeListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.querySubOfficialType"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryUserFollowAccount(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryUserFollowAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryUserFollowAccountByPIds(Lcom/alipay/publiccore/client/req/OfficialHomeReq;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryUserFollowAccountByPIds"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryUserFollower(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.queryUserFollower"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract removeFollow(Lcom/alipay/publiccore/client/req/FollowReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.account.removeFollow"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
