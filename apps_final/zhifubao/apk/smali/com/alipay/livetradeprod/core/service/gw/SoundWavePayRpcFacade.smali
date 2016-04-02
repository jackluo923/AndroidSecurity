.class public interface abstract Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract ackPayChannelList(Lcom/alipay/livetradeprod/core/model/rpc/AckPayChannelListReq;)Lcom/alipay/livetradeprod/core/model/rpc/AckPayChannelListRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.ackChannelList"
    .end annotation
.end method

.method public abstract bindLbsUser(Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserReq;)Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.bindLbsUser"
    .end annotation
.end method

.method public abstract checkPhoneModel(Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelReq;)Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.checkPhoneModel"
    .end annotation
.end method

.method public abstract createFastPayTrade(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayReq;)Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.createFastPayTrade"
    .end annotation
.end method

.method public abstract createFastPayTradeAndAutoPay(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayReq;)Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.createFastPayTradeAndAutoPay"
    .end annotation
.end method

.method public abstract createLbsTradeAndAutoPay(Lcom/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq;)Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.createLbsTradeAndAutoPay"
    .end annotation
.end method

.method public abstract createPayeeQrcode(Lcom/alipay/livetradeprod/core/model/rpc/CreatePayeeQrcodeReq;)Lcom/alipay/livetradeprod/core/model/rpc/CreatePayeeQrcodeRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.createPayeeQrcode"
    .end annotation
.end method

.method public abstract findLbsUser(Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserReq;)Lcom/alipay/livetradeprod/core/model/rpc/FindLbsUserRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.findLbsUser"
    .end annotation
.end method

.method public abstract getDynamicId(Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdReq;)Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.getDynamicId"
    .end annotation
.end method

.method public abstract getInitArgs(Lcom/alipay/livetradeprod/core/model/rpc/GetInitArgsReq;)Lcom/alipay/livetradeprod/core/model/rpc/GetInitArgsRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.getInitArgs"
    .end annotation
.end method

.method public abstract getInitArgsPB(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.getInitArgs.pb"
    .end annotation
.end method

.method public abstract modifyFacePaySwitch(Lcom/alipay/livetradeprod/core/model/rpc/ModifyFacePaySwitchReq;)Lcom/alipay/livetradeprod/core/model/rpc/ModifyFacePaySwitchRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.modifyFacePaySwitch"
    .end annotation
.end method

.method public abstract onsiteAutoPay(Lcom/alipay/livetradeprod/core/model/OnsitePayReq;)Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.onsiteAutoPay"
    .end annotation
.end method

.method public abstract payResultAck(Ljava/lang/String;)V
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.payResultAck"
    .end annotation
.end method

.method public abstract queryBuySoundWavePayRes(Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerReq;)Lcom/alipay/livetradeprod/core/model/rpc/QueryBuyerRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.queryBuyerPayResult"
    .end annotation
.end method

.method public abstract queryNameCard(Lcom/alipay/livetradeprod/core/model/rpc/QueryNameCardReq;)Lcom/alipay/livetradeprod/core/model/rpc/QueryNameCardRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.queryNameCard"
    .end annotation
.end method

.method public abstract querySellerSoundWavePayRes(Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerReq;)Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.querySellerPayResult"
    .end annotation
.end method

.method public abstract sendPayeeInfo(Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoReq;)Lcom/alipay/livetradeprod/core/model/rpc/SendPayeeInfoRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.sendPayeeInfo"
    .end annotation
.end method

.method public abstract sendTodo(Lcom/alipay/livetradeprod/core/model/rpc/SendTodoReq;)Lcom/alipay/livetradeprod/core/model/rpc/SendTodoRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.sendTodo"
    .end annotation
.end method

.method public abstract verifyDevice(Lcom/alipay/livetradeprod/core/model/VerifyDeviceReq;)Lcom/alipay/livetradeprod/core/model/VerifyDeviceRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.livetradeprod.soundWave.verifyDevice"
    .end annotation
.end method
