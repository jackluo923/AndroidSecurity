.class public Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeQueryRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public qrcodeImageStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public qrcodeImageUrl:Ljava/lang/String;

.field public qrcodeShareInfo:Lcom/alipay/mobilesecurity/core/model/qrcode/QrcodeShareInfo;

.field public qrcodeTip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method
