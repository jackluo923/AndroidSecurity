.class public abstract Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaAudioService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelRecord()V
.end method

.method public abstract checkAudioReady(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;)Z
.end method

.method public abstract downloadAudio(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;)Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioDownloadRsp;
.end method

.method public abstract downloadAudio(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioDownloadRsp;
.end method

.method public abstract getAudioConfiguration()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;
.end method

.method public abstract getPlayingAudioInfo()Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;
.end method

.method public abstract isPlaying()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract pausePlay()V
.end method

.method public abstract registerAudioPlayOutputModeChangeListenr(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioPlayOutputModeChangeListener;)V
.end method

.method public abstract resumePlay()V
.end method

.method public abstract setAudioConfiguration(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioConfiguration;)V
.end method

.method public abstract startPlay(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioPlayCallback;)V
.end method

.method public abstract startPlay(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APRequestParam;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioPlayCallback;)V
.end method

.method public abstract startRecord(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioRecordCallback;)V
.end method

.method public abstract startRecord(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioRecordUploadCallback;)V
.end method

.method public abstract startRecord(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioRecordCallback;)V
.end method

.method public abstract startRecord(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioRecordUploadCallback;)V
.end method

.method public abstract startRecord(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APRequestParam;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioRecordUploadCallback;)V
.end method

.method public abstract stopPlay()V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract submitAudioDownloadTask(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioDownloadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract submitAudioDownloadTask(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioDownloadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract unregisterAudioPlayOutputModeChangeListenr(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioPlayOutputModeChangeListener;)V
.end method

.method public abstract uploadRecord(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioUploadCallback;)V
.end method

.method public abstract uploadRecord(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APRequestParam;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/APAudioUploadCallback;)V
.end method

.method public abstract uploadRecordSync(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;)Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadRsp;
.end method

.method public abstract uploadRecordSync(Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioInfo;Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APRequestParam;)Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadRsp;
.end method
