.class public Lcom/alipay/mobileprod/biz/shared/ccr/domain/BankInfo;
.super Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public arriveTimeTip:Ljava/lang/String;

.field public bankMark:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public billChannel:Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;

.field public bulletin:Ljava/lang/String;

.field public repayLimit:Ljava/lang/String;

.field public repayLimitTip:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public supportBillQuery:Ljava/lang/String;

.field public supportEmailBillQuery:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;-><init>()V

    return-void
.end method
