.class public interface abstract Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deleteUserPass(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.deleteUserPass"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getDiscoveryHomePageInfo()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexPassResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.getDiscoveryHomePageInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getHomePageWidgetInfo(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.getHomePageWidgetInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getPublicInfoListByCategory(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PublicInfoListReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PublicInfoListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.getPublicInfoListByCategory"
    .end annotation
.end method

.method public abstract getShareContent(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.getShareContent"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getShareInfo(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.getShareInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract notifyUpdateRemindStatus(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/RemindNotifyReq;)V
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.notifyUpdateRemindStatus"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract preLoadPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListPreloadReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.preLoadPassList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryMsgPassInfo(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassInfoQueryReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/MsgPassInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.queryMsgPassInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPassInfo(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.queryPassInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPassInfoById(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.queryPassInfoById"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPassList(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.queryPassList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPassListByChannelId(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassBaseInfoListReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassBaseInfoListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.queryPassListByChannelId"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPassListByRownum(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.queryPassListByRownum"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryRemindDateByPassId(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.queryRemindDateByPassId"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract updateReminDate(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.updateReminDate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract updateRemindRealTime(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.updateRemindRealTime"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
