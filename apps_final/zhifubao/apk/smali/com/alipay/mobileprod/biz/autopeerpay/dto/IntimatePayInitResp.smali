.class public Lcom/alipay/mobileprod/biz/autopeerpay/dto/IntimatePayInitResp;
.super Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public applicantRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/autopeerpay/vo/ApplicantRecordVO;",
            ">;"
        }
    .end annotation
.end field

.field public applicantState:Ljava/lang/String;

.field public checkRoleResult:Ljava/lang/String;

.field public checkRoleResultMsg:Ljava/lang/String;

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

.field public intimatePayRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/autopeerpay/vo/AcceptorRecordVO;",
            ">;"
        }
    .end annotation
.end field

.field public providerUserCount:I

.field public pwdFlag:Ljava/lang/String;

.field public signMaxAmount:Ljava/lang/String;

.field public signMinAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ExtBaseRespVO;-><init>()V

    return-void
.end method
