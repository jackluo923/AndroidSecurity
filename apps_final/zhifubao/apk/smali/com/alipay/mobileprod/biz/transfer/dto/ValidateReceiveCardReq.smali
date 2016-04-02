.class public Lcom/alipay/mobileprod/biz/transfer/dto/ValidateReceiveCardReq;
.super Lcom/alipay/mobileprod/core/model/BaseReqVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankShortName:Ljava/lang/String;

.field public cardChannel:Ljava/lang/String;

.field public cardIndex:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

.field public cardNoHidden:Z

.field public receiverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseReqVO;-><init>()V

    return-void
.end method
