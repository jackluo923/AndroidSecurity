.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankCardId:Ljava/lang/String;

.field public bankCardLast4No:Ljava/lang/String;

.field public bankCode:Ljava/lang/String;

.field public bankColor:Ljava/lang/String;

.field public bankColor2:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public isRead:Z

.field public latestBill:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;

.field public name:Ljava/lang/String;

.field public remainDay:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;

    invoke-direct {v0}, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;->latestBill:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfo;

    return-void
.end method
