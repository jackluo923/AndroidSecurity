.class public Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public qrcode:Ljava/lang/String;

.field public qrcodeImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getQrcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->qrcode:Ljava/lang/String;

    return-object v0
.end method

.method public getQrcodeImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->qrcodeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setQrcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->qrcode:Ljava/lang/String;

    return-void
.end method

.method public setQrcodeImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/SecurityQrCodeInfo;->qrcodeImageUrl:Ljava/lang/String;

    return-void
.end method
