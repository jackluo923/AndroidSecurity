.class public Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillInfo;
.super Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public aliPayedAmount:Ljava/lang/String;

.field public billAmount:Ljava/lang/String;

.field public billDate:Ljava/lang/String;

.field public billFrom:Ljava/lang/String;

.field public billStatus:Ljava/lang/String;

.field public deductDate:Ljava/lang/String;

.field public deductStatus:Ljava/lang/String;

.field public dueDate:Ljava/lang/String;

.field public dueDateRemind:Ljava/lang/String;

.field public minPayment:Ljava/lang/String;

.field public minUnpaid:Ljava/lang/String;

.field public payedAmount:Ljava/lang/String;

.field public unpaid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;-><init>()V

    return-void
.end method
