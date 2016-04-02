.class public interface abstract Lcom/alipay/barcodeprod/biz/barcode/gw/SoundWavePayManagerFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryBuySoundWavePayRes(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/barcodeprod/core/model/soundwave/SoundWaveQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.alipay.barcodeprod.soundWave.queryBuySoundWavePayRes"
    .end annotation
.end method

.method public abstract querySellerSoundWavePayRes(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/barcodeprod/core/model/soundwave/SoundWaveQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.onsite.soundWave.querySellerSoundWavePayRes"
    .end annotation
.end method

.method public abstract sendTodo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/barcodeprod/core/model/soundwave/SoundWaveQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.onsite.soundWave.sendTodo"
    .end annotation
.end method

.method public abstract verifyDevice(Lcom/alipay/barcodeprod/core/model/soundwave/VerifyDeviceReq;)Lcom/alipay/barcodeprod/core/model/soundwave/SoundWaveQueryRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.onsite.soundWave.verifyDevice"
    .end annotation
.end method
