.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelApprove(Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveReq;)Lcom/alipay/mobilesecurity/core/model/approve/CancelApproveRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.approve.cancel"
    .end annotation
.end method

.method public abstract confirmApprove(Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveReq;)Lcom/alipay/mobilesecurity/core/model/approve/ConfirmApproveRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.approve.confirm"
    .end annotation
.end method

.method public abstract confirmTaobaoTopSessionAuth(Lcom/alipay/mobilesecurity/core/model/approve/TaobaoTopSessionAuthReq;)Lcom/alipay/mobilesecurity/core/model/approve/TaobaoTopSessionAuthRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.confirmTaobaoTopSessionAuth"
    .end annotation
.end method

.method public abstract prepareApprove(Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveReq;)Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.approve.prepare"
    .end annotation
.end method

.method public abstract prepareTaobaoTopSessionAuth(Lcom/alipay/mobilesecurity/core/model/approve/TaobaoTopSessionAuthReq;)Lcom/alipay/mobilesecurity/core/model/approve/TaobaoTopSessionAuthRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.prepareTaobaoTopSessionAuth"
    .end annotation
.end method

.method public abstract queryApproveRecordList(Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordReq;)Lcom/alipay/mobilesecurity/core/model/approve/QueryApproveRecordRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.approve.querylist"
    .end annotation
.end method
