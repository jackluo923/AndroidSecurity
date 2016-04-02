.class public Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6462b0bca0fa1156L


# instance fields
.field private currentQrPicStyle:Ljava/lang/String;

.field private mQrcodeQueryRes:Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeQueryRes;

.field private qrCodeImgByteArr:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentQrPicStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->currentQrPicStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getQrCodeImgByteArr()[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->qrCodeImgByteArr:[B

    return-object v0
.end method

.method public getQrcodeQueryRes()Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeQueryRes;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->mQrcodeQueryRes:Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeQueryRes;

    return-object v0
.end method

.method public setCurrentQrPicStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->currentQrPicStyle:Ljava/lang/String;

    return-void
.end method

.method public setQrCodeImgByteArr([B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->qrCodeImgByteArr:[B

    return-void
.end method

.method public setQrcodeQueryRes(Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeQueryRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->mQrcodeQueryRes:Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeQueryRes;

    return-void
.end method
