.class public Lcom/alipay/mobileprod/biz/shared/ccr/domain/UserCardInfo;
.super Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canDeduct:Z

.field public cardAlias:Ljava/lang/String;

.field public cardId:Ljava/lang/String;

.field public cardIndexNo:Ljava/lang/String;

.field public deductId:Ljava/lang/String;

.field public deductMemo:Ljava/lang/String;

.field public deductResultCode:I

.field public deductSignedDate:Ljava/lang/String;

.field public fastPay:Ljava/lang/String;

.field public holderName:Ljava/lang/String;

.field public openedBillQuery:Ljava/lang/String;

.field public openedEmailBillQuery:Z

.field public remindDate:Ljava/lang/String;

.field public remindDay:Ljava/lang/String;

.field public remindDayRemind:Ljava/lang/String;

.field public remindStatus:Ljava/lang/String;

.field public tail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;-><init>()V

    return-void
.end method
