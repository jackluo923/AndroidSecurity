.class public abstract Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaFileService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/api/IMultimediaBaseService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelLoad(Ljava/lang/String;)V
.end method

.method public abstract cancelUp(Ljava/lang/String;)V
.end method

.method public abstract downLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract downLoad(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract downLoad(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract downLoadSync(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;
.end method

.method public abstract downloadOffline(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;)Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;
.end method

.method public abstract getLoadTaskStatus(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract getLoadTaskStatusByCloudId(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract getUpTaskStatus(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract getUpTaskStatusByCloudId(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract registeLoadCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)V
.end method

.method public abstract registeUpCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileUploadCallback;)V
.end method

.method public abstract unregisteLoadCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)V
.end method

.method public abstract unregisteUpCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileUploadCallback;)V
.end method

.method public abstract upLoad(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract upLoad(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract upLoadSync(Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileUploadRsp;
.end method
