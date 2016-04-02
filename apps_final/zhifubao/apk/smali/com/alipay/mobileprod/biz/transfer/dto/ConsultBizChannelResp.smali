.class public Lcom/alipay/mobileprod/biz/transfer/dto/ConsultBizChannelResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public assignedChannel:Ljava/lang/String;

.field public availableLimit:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public bizLimit:Ljava/lang/String;

.field public bizLimitChannel:Ljava/lang/String;

.field public bizLimitDes:Ljava/lang/String;

.field public bizProduct:Ljava/lang/String;

.field public cardLast4No:Ljava/lang/String;

.field public channelType:Ljava/lang/String;

.field public channelTypeName:Ljava/lang/String;

.field public extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public holderName:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public limitShowUrl:Ljava/lang/String;

.field public needBindNewCard:Z

.field public signId:Ljava/lang/String;

.field public tradeFrom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/ConsultBizChannelResp;->extInfos:Ljava/util/Map;

    return-void
.end method
