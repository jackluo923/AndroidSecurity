.class public interface abstract Lcom/alipay/mobileprod/biz/transfer/TransferService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract changeSpeed(Lcom/alipay/mobileprod/biz/transfer/dto/ChangeSpeedReq;)Lcom/alipay/mobileprod/biz/transfer/dto/ChangeSpeedResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.changeSpeed"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract checkCardBin(Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinReq;)Lcom/alipay/mobileprod/biz/transfer/dto/CheckCardBinResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.checkCardBin"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract checkCertify(Lcom/alipay/mobileprod/biz/transfer/dto/CheckCertifyReq;)Lcom/alipay/mobileprod/biz/transfer/dto/CheckCertifyResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.checkCertify"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract consultBizChannel(Lcom/alipay/mobileprod/biz/transfer/dto/ConsultBizChannelReq;)Lcom/alipay/mobileprod/biz/transfer/dto/ConsultBizChannelResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.consultBizChannel"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract consultChargeFee(Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeReq;)Lcom/alipay/mobileprod/biz/transfer/dto/ConsultChargeFeeResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.consultChargeFee"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract consultPay(Lcom/alipay/mobileprod/biz/transfer/dto/ConsultPayReq;)Lcom/alipay/mobileprod/biz/transfer/dto/ConsultPayResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.consultPay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createMobileToCard(Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardReq;)Lcom/alipay/mobileprod/biz/transfer/dto/CreateMobileToCardResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.createMobileToCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createToAccount(Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountReq;)Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.createToAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createToCard(Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardReq;)Lcom/alipay/mobileprod/biz/transfer/dto/CreateToCardResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.createToCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract delHistoryCard(Lcom/alipay/mobileprod/biz/transfer/dto/DelHistoryCardReq;)Lcom/alipay/mobileprod/biz/transfer/dto/DelHistoryCardResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.delHistoryCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract deleteToCard(Lcom/alipay/mobileprod/biz/transfer/dto/DeleteToCardReq;)Lcom/alipay/mobileprod/biz/transfer/dto/DeleteToCardResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.deleteToCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getBankList(Lcom/alipay/mobileprod/biz/transfer/dto/GetBankListReq;)Lcom/alipay/mobileprod/biz/transfer/dto/GetBankListResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.getBankList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getCardList(Lcom/alipay/mobileprod/biz/transfer/dto/GetCardListReq;)Lcom/alipay/mobileprod/biz/transfer/dto/GetCardListResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.getCardList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getContactList(Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListReq;)Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.getContactList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBankInfo(Lcom/alipay/mobileprod/biz/transfer/dto/QueryBankInfoReq;)Lcom/alipay/mobileprod/biz/transfer/dto/QueryBankInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.queryBankInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCardInfo(Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoReq;)Lcom/alipay/mobileprod/biz/transfer/dto/QueryCardInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.queryCardInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryHistoryRecord(Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordReq;)Lcom/alipay/mobileprod/biz/transfer/dto/HistoryRecordResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.queryHistoryRecord"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryMobileBindInfo(Lcom/alipay/mobileprod/biz/transfer/dto/QueryMobileBindInfoReq;)Lcom/alipay/mobileprod/biz/transfer/dto/QueryMobileBindInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.queryMobileBindInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryReceiverInfo(Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoReq;)Lcom/alipay/mobileprod/biz/transfer/dto/QueryReceiverInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.queryReceiverInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryTransferProgress(Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressReq;)Lcom/alipay/mobileprod/biz/transfer/dto/QueryTransferProgressResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.queryTransferProgress"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract removeUserFromHistoryRecord(Lcom/alipay/mobileprod/biz/transfer/dto/RemoveUserFromHistoryRecordReq;)Lcom/alipay/mobileprod/biz/transfer/dto/RemoveUserFromHistoryRecordResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.removeUserFromHistoryRecord"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sendCollectionMsg(Lcom/alipay/mobileprod/biz/transfer/dto/SendCollectionMsgReq;)Lcom/alipay/mobileprod/biz/transfer/dto/SendCollectionMsgResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipayay.mobile.transfer.sendCollectionMsg"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract uploadVoice(Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceReq;)Lcom/alipay/mobileprod/biz/transfer/dto/UploadVoiceResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.uploadVoice"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract validateReceiveCard(Lcom/alipay/mobileprod/biz/transfer/dto/ValidateReceiveCardReq;)Lcom/alipay/mobileprod/biz/transfer/dto/ValidateReceiveCardResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.transfer.validateReceiveCard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
