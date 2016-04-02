.class public abstract Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract findQrCode(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;
.end method

.method public abstract getCacheQrCodeData(Ljava/lang/String;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;
.end method

.method public abstract getCacheQrCodeData(Ljava/lang/String;Lcom/alipay/mobile/security/accountmanager/AccountInfo/biz/SecurityAccountQrCode$BitmapListener;)Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;
.end method

.method public abstract getQrCodeDataByRpc()Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeQueryRes;
.end method

.method public abstract putCacheQrCodeData(Ljava/lang/String;)V
.end method

.method public abstract saveQrImgToDCIM(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateCacheQrCodeData(Ljava/lang/String;Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeQueryRes;[BLjava/lang/String;)V
.end method
