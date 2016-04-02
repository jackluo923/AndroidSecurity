.class public Lcom/alipay/mobilechat/biz/group/rpc/response/CreateGroupAndQrCodeResult;
.super Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public expireDate:Ljava/util/Date;

.field public group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

.field public imgUrl:Ljava/lang/String;

.field public qrcode:Ljava/lang/String;

.field public qrcodeMemo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
