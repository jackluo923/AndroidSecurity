.class public Lcom/alipay/mobileprod/biz/autopeerpay/vo/AcceptorRecordVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public createSource:Ljava/lang/String;

.field public intimateBillURL:Ljava/lang/String;

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

.field public monthlyBillAmount:Ljava/lang/String;

.field public operatorRole:Ljava/lang/String;

.field public signingAmount:Ljava/lang/String;

.field public totalBillAmount:Ljava/lang/String;

.field public userInfo:Lcom/alipay/mobileprod/biz/autopeerpay/vo/IntimateUserInfoVO;

.field public validDate:Ljava/util/Date;

.field public validDays:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
