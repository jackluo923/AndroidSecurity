.class public Lcom/alipay/mobileprod/biz/autopeerpay/dto/IntimateContractSignResp;
.super Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ackMobileNo:Ljava/lang/String;

.field public actionCode:I

.field public intimateMsgInfo:Ljava/util/Map;
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

.field public mobileBindFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;-><init>()V

    return-void
.end method
