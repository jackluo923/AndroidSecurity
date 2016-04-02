.class public Lcom/alipay/mobileprod/biz/autopeerpay/dto/IntimatePayQueryDetailResp;
.super Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public intimatePayRecord:Lcom/alipay/mobileprod/biz/autopeerpay/vo/AcceptorRecordVO;

.field public pwdFlag:Ljava/lang/String;

.field public signMaxAmount:Ljava/lang/String;

.field public signMinAmount:Ljava/lang/String;

.field public totalAmout:Ljava/lang/String;

.field public trajectoryRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/autopeerpay/vo/TrajectoryRecordVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;-><init>()V

    return-void
.end method
